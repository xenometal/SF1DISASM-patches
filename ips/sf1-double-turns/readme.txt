  
 Shining Force: The Legacy of Great Intention - Double Turns Class Property
  Version 1.0 - August 6th, 2024
  by Xenometal - https://github.com/xenometal/SF1DISASM-patches
  
=================================================================================================
 About
=================================================================================================
  
  This patch implements the double turns mechanic from later Shining Force games.
  
  Enemy classes can now be defined to take double turns by setting the normally unused class
  property labeled as "?" in SF1Edit (see the included example.png image.)
  
  It should be noted that the turn order table in SF1 can only contain a maximum of 32 entries,
  meaning that for each double turns capable enemy placed on a battlefield, the maximum total
  number of combatants (allies and enemies combined) that can be deployed is reduced by one.
  
  Regarding potential conflicts with other patches, the routine responsible for populating the
  turn order table in RAM has been rewritten in place, with no hooks being installed to jump to
  unused space, so compatibility is expected to be very high.
  
=================================================================================================
 Installation
=================================================================================================
  
  Intended for use with the North American version of the game (and as far as I know, this should
  also be compatible with most hacks out there.)
  
  Use your favorite IPS patching utility, such as Lunar IPS or Flips, to apply the included
  "sf1-double-turns.ips" file onto a non-interleaved ROM (i.e., not SMD format.)
  
  For your convenience, an anti-patch is also provided which will effectively remove this patch
  when applied.
