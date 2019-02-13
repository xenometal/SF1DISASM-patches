
; ASM FILE music24.asm :
; 0xFBF6..0xFF0A : Music 24
Music_24:       db 0
		db 0
		db 0
		db 0B8h
		dw Music_24_Channel_0
		dw Music_24_Channel_1
		dw Music_24_Channel_2
		dw Music_24_Channel_3
		dw Music_24_Channel_4
		dw Music_24_Channel_5
		dw Music_24_Channel_6
		dw Music_24_Channel_7
		dw Music_24_Channel_9
		dw Music_24_Channel_9
Music_24_Channel_0:
		  inst 20
		  vol 0Bh
		  setRelease 03h
		  vibrato 03Ch
		  stereo 0C0h
		        noteL C6,12
		        note  B5
		        noteL C6,24
		        note  A5
		        noteL A5,120
		        noteL D6,12
		        note  Cs6
		        noteL D6,24
		        note  B5
		        noteL B5,120
		        noteL E6,12
		        note  Ds6
		  vol 09h
		  sustain
		        noteL E6,192
		  setRelease 01h
		  vibrato 030h
		        note  E6
		        wait
		        wait
		        wait
		        waitL 168
		  vol 0Bh
		  setRelease 03h
		  vibrato 03Ch
		        noteL C6,12
		        note  B5
		mainLoopStart
		        noteL C6,24
		        note  A5
		        noteL A5,120
		        noteL D6,12
		        note  Cs6
		        noteL D6,24
		        note  B5
		        noteL B5,120
		        noteL E6,12
		        note  Ds6
		        noteL E6,24
		        note  C6
		        noteL C6,120
		        noteL D6,12
		        note  Cs6
		        noteL D6,24
		        note  B5
		        noteL B5,120
		  vol 09h
		        noteL C7,12
		        note  B6
		        noteL C7,24
		        note  A6
		        noteL A6,120
		        noteL D7,12
		        note  Cs7
		        noteL D7,24
		        note  B6
		        noteL B6,120
		        noteL E7,12
		        note  Ds7
		        noteL E7,24
		        note  C7
		        noteL C7,120
		        noteL D7,12
		        note  Cs7
		        noteL D7,48
		        noteL F7,120
		        noteL E7,12
		        note  D7
		  sustain
		  vol 06h
		        noteL E7,192
		  vibrato 030h
		        note  E7
		        note  E7
		  setRelease 01h
		        noteL E7,168
		  vibrato 03Ch
		  setRelease 03h
		  vol 0Bh
		        noteL C6,12
		        note  B5
		mainLoopEnd
Music_24_Channel_1:
		        waitL 24
		  inst 20
		  vol 0Ch
		  setRelease 01h
		  vibrato 03Ch
		  stereo 040h
		  sustain
		        noteL A4,192
		  vibrato 030h
		        note  A4
		        note  A4
		  setRelease 01h
		        note  A4
		  sustain
		  vibrato 03Ch
		        note  A3
		  vibrato 030h
		        note  A3
		        note  A3
		  setRelease 01h
		        note  A3
		mainLoopStart
		  vibrato 03Ch
		        noteL A3,192
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        note  A3
		        noteL B3,96
		        note  E3
		        noteL A3,192
		        note  A3
		        note  A3
		        note  A3
		mainLoopEnd
Music_24_Channel_2:
		        waitL 6
		  stereo 010h
		  inst 20
		  vol 08h
		  setRelease 03h
		  vibrato 03Ch
		  stereo 0C0h
		        noteL C6,12
		        note  B5
		        noteL C6,24
		        note  A5
		        noteL A5,120
		        noteL D6,12
		        note  Cs6
		        noteL D6,24
		        note  B5
		        noteL B5,120
		        noteL E6,12
		        note  Ds6
		        waitL 186
		        waitL 192
		  inst 20
		  vol 0Ch
		  setRelease 01h
		  vibrato 035h
		  stereo 080h
		  sustain
		        note  A2
		  vibrato 030h
		        note  A2
		        note  A2
		  setRelease 01h
		        note  A2
		mainLoopStart
		  vibrato 03Ah
		        noteL A2,192
		        note  A2
		        note  A2
		        note  A2
		        note  A2
		        note  A2
		        note  A2
		        noteL B2,96
		        note  E2
		        noteL A2,192
		        note  A2
		        note  A2
		        note  A2
		mainLoopEnd
Music_24_Channel_3:
		        waitL 24
		        waitL 192
		        wait
		  inst 20
		  vol 0Bh
		  setRelease 01h
		  vibrato 037h
		  stereo 080h
		        noteL C6,48
		        note  B5
		        note  A5
		        note  G5
		        note  F5
		        note  E5
		        note  D5
		        note  C5
		        noteL B4,192
		        noteL C5,96
		        note  D5
		        noteL E5,192
		        note  D5
		mainLoopStart
		        noteL C5,192
		        note  D5
		        note  E5
		        noteL D5,96
		        note  B4
		        noteL C5,192
		        note  D5
		        note  E5
		        noteL F5,96
		        note  D5
		        noteL C5,192
		        note  D5
		        note  E5
		        noteL D5,96
		        note  B4
		mainLoopEnd
Music_24_Channel_4:
		        waitL 24
		        waitL 192
		        wait
		        wait
		        wait
		  inst 20
		  vol 0Bh
		  setRelease 01h
		  vibrato 036h
		  stereo 080h
		        note  E4
		        note  F4
		        note  Fs4
		        note  F4
		mainLoopStart
		        noteL E4,192
		        noteL F4,96
		        note  Fs4
		        noteL G4,192
		        noteL Fs4,96
		        note  F4
		        noteL E4,192
		        noteL F4,96
		        note  Fs4
		        noteL G4,192
		        noteL A4,96
		        note  Gs4
		        noteL E4,192
		        noteL F4,96
		        note  Fs4
		        noteL G4,192
		        noteL Fs4,96
		        note  F4
		mainLoopEnd
Music_24_Channel_5:
		channel_end
Music_24_Channel_6:
		  psgInst 00h
		  setRelease 01h
		  vibrato 04Ch
		        waitL    24
		        waitL    192
		        wait
		  psgInst 03Ah
		        psgNoteL C4,24
		        psgNote  A3
		        psgNoteL A3,120
		        psgNoteL D4,12
		        psgNote  Cs4
		        psgNoteL D4,24
		        psgNote  B3
		        psgNoteL B3,120
		        psgNoteL E4,12
		        psgNote  Ds4
		  setRelease 080h
		        psgNoteL E4,192
		  vibrato 040h
		        psgNote  E4
		  setRelease 01h
		        psgNote  E4
		  psgInst 00h
		        wait
		mainLoopStart
		        waitL    72
		  vibrato 04Ch
		  psgInst 03Ah
		        psgNoteL C4,12
		        psgNote  B3
		        psgNoteL C4,24
		        psgNote  A3
		        psgNoteL A3,48
		  psgInst 00h
		        waitL    72
		  psgInst 03Ah
		        psgNoteL D4,12
		        psgNote  Cs4
		        psgNoteL D4,24
		        psgNote  B3
		        psgNoteL B3,48
		  psgInst 00h
		        waitL    72
		  psgInst 03Ah
		        psgNoteL E4,12
		        psgNote  Ds4
		        psgNoteL E4,24
		        psgNote  C4
		        psgNoteL C4,48
		  psgInst 00h
		        waitL    72
		  psgInst 03Ah
		        psgNoteL D4,12
		        psgNote  Cs4
		        psgNoteL D4,24
		        psgNote  B3
		        psgNoteL B3,48
		  psgInst 00h
		        waitL    72
		  psgInst 03Ah
		        psgNoteL C5,12
		        psgNote  B4
		        psgNoteL C5,24
		        psgNote  A4
		        psgNoteL A4,48
		  psgInst 00h
		        waitL    72
		  psgInst 03Ah
		        psgNoteL D5,12
		        psgNote  Cs5
		        psgNoteL D5,24
		        psgNote  B4
		        psgNoteL B4,48
		  psgInst 00h
		        waitL    72
		  psgInst 03Ah
		        psgNoteL E5,12
		        psgNote  Ds5
		        psgNoteL E5,24
		        psgNote  C5
		        psgNoteL C5,48
		  psgInst 00h
		        wait
		  psgInst 03Ah
		        psgNote  A5
		        psgNote  Gs5
		        psgNote  F5
		        psgNoteL E5,144
		  psgInst 00h
		        waitL    24
		  psgInst 039h
		        psgNoteL D5,12
		        psgNote  Cs5
		        psgNoteL D5,24
		        psgNote  B4
		        psgNoteL B4,120
		        psgNoteL C5,12
		        psgNote  B4
		        psgNoteL C5,24
		        psgNote  A4
		        psgNoteL A4,120
		        psgNoteL B4,12
		        psgNote  As4
		        psgNoteL B4,192
		mainLoopEnd
Music_24_Channel_7:
		  psgInst 00h
		        waitL    12
		  setRelease 01h
		  vibrato 04Ch
		        waitL    24
		        waitL    192
		        wait
		  psgInst 096h
		        psgNoteL C4,24
		        psgNote  A3
		        psgNoteL A3,120
		        psgNoteL D4,12
		        psgNote  Cs4
		        psgNoteL D4,24
		        psgNote  B3
		        psgNoteL B3,120
		        psgNoteL E4,12
		        psgNote  Ds4
		  setRelease 080h
		        psgNoteL E4,192
		  vibrato 040h
		        psgNote  E4
		  setRelease 01h
		        psgNote  E4
		  psgInst 00h
		        wait
		mainLoopStart
		        waitL    72
		  vibrato 04Ch
		  psgInst 096h
		        psgNoteL C4,12
		        psgNote  B3
		        psgNoteL C4,24
		        psgNote  A3
		        psgNoteL A3,48
		  psgInst 00h
		        waitL    72
		  psgInst 096h
		        psgNoteL D4,12
		        psgNote  Cs4
		        psgNoteL D4,24
		        psgNote  B3
		        psgNoteL B3,48
		  psgInst 00h
		        waitL    72
		  psgInst 096h
		        psgNoteL E4,12
		        psgNote  Ds4
		        psgNoteL E4,24
		        psgNote  C4
		        psgNoteL C4,48
		  psgInst 00h
		        waitL    72
		  psgInst 096h
		        psgNoteL D4,12
		        psgNote  Cs4
		        psgNoteL D4,24
		        psgNote  B3
		        psgNoteL B3,48
		  psgInst 00h
		        waitL    72
		  psgInst 096h
		        psgNoteL C5,12
		        psgNote  B4
		        psgNoteL C5,24
		        psgNote  A4
		        psgNoteL A4,48
		  psgInst 00h
		        waitL    72
		  psgInst 096h
		        psgNoteL D5,12
		        psgNote  Cs5
		        psgNoteL D5,24
		        psgNote  B4
		        psgNoteL B4,48
		  psgInst 00h
		        waitL    72
		  psgInst 096h
		        psgNoteL E5,12
		        psgNote  Ds5
		        psgNoteL E5,24
		        psgNote  C5
		        psgNoteL C5,48
		  psgInst 00h
		        wait
		  psgInst 096h
		        psgNote  A5
		        psgNote  Gs5
		        psgNote  F5
		        psgNoteL E5,144
		  psgInst 00h
		        waitL    24
		  psgInst 095h
		        psgNoteL D5,12
		        psgNote  Cs5
		        psgNoteL D5,24
		        psgNote  B4
		        psgNoteL B4,120
		        psgNoteL C5,12
		        psgNote  B4
		        psgNoteL C5,24
		        psgNote  A4
		        psgNoteL A4,120
		        psgNoteL B4,12
		        psgNote  As4
		        psgNoteL B4,192
		mainLoopEnd
Music_24_Channel_9:
		channel_end