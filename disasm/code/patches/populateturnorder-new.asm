
; Included if DOUBLE_TURNS_CLASS_PROPERTY is ON.

;PopulateTurnOrder:
        lea     ((TURN_ORDER-$1000000)).w,a0
        move.l  a0,-(sp)
        moveq   #TURN_ORDER_LONGWORDS_COUNTER,d7
        
@ClearList_Loop:
        clr.l   (a0)+
        dbf     d7,@ClearList_Loop
        
        movea.l (sp)+,a0
        clr.w   d0
        moveq   #TURN_ORDER_ENTRIES_COUNTER,d5
        
@RandomizeAgility_Loop:
        jsr     GetModifiedAgility  ;  -> d1.w
        blt.s   @SkipFirstTurn
        
        move.w  d1,d2               ; backup current Agility -> d2.w
        bsr.s   RandomizeAgility
        
        ; Check class double turn setting
        jsr     sub_2397C           ; Get combatant D0 special bit 6 from class -> d1.w
        beq.s   @SkipSecondTurn
        
        subq.w  #1,d5
        move.w  d2,d1               ; restore current Agility
        mulu.w  #2,d1
        divu.w  #3,d1               ; second turn Agility = 2/3
        
@SkipFirstTurn:
        bsr.s   RandomizeAgility
        
@SkipSecondTurn:
        addq.w  #1,d0
        tst.b   ((byte_FFB4D7-$1000000)).w ; ?
        bne.s   @SortEntries
        dbf     d5,@RandomizeAgility_Loop
        
@SortEntries:
        moveq   #TURN_ORDER_SORT_MAIN_COUNTER,d6
        
@Sort_MainLoop:
        moveq   #TURN_ORDER_SORT_INNER_COUNTER,d7
        lea     ((TURN_ORDER-$1000000)).w,a0
        
@Sort_InnerLoop:
        move.w  (a0),d0
        move.w  NEXT_TURN_ORDER_ENTRY(a0),d1
        cmp.b   d0,d1
        ble.s   @Next
        
        move.w  d1,(a0)
        move.w  d0,NEXT_TURN_ORDER_ENTRY(a0)
        
@Next:
        addq.l  #TURN_ORDER_ENTRY_SIZE,a0
        dbf     d7,@Sort_InnerLoop
        dbf     d6,@Sort_MainLoop
        rts


; In: d0.w = combatant index, d1.w = current agility

RandomizeAgility:
        bge.s   @Continue
        
        ; Skip turn if Agility is negative
        clr.w   d1
        move.b  #-1,(a0)+
        bra.s   @LoadTurnOrderAgility
        
@Continue:
        move.w  d1,d6
        mulu.w  #51,d6          ; Agility variance
        addi.w  #128,d6
        lsr.w   #8,d6           ; d6.w = (agility * 51 + 128) / 256
        sub.w   d6,d1
        addq.w  #1,d6
        jsr     (GenerateRandomNumber).w
        add.w   d7,d1
        jsr     (GenerateRandomNumber).w
        add.w   d7,d1
        moveq   #3,d6
        jsr     (GenerateRandomNumber).w
        subq.w  #1,d7
        add.w   d7,d1
        bge.s   @LoadTurnOrderData
        clr.w   d1              ; minimum randomized Agility = 0
        
@LoadTurnOrderData:
        move.b  d0,(a0)+        ; combatant index
        
@LoadTurnOrderAgility:
        move.b  d1,(a0)+        ; randomized Agility
        rts
