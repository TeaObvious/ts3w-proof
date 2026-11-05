# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00e48380 (FUN_00e48380)
Paired Ghidra pseudocode: 00E48380_FUN_00e48380.c
Window: [0x00e48380, 0x00e483a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00e483a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00e48380: 8b 44 24 04 85 c0 75 01 c3 89 44 24 04 e9 be 88
00e48390: f2 ff cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00e48380 <.text+0xa47380>:
  e48380:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  e48384:	85 c0                                           	test   eax,eax
  e48386:	75 01                                           	jne    0xe48389
  e48388:	c3                                              	ret
  e48389:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  e4838d:	e9 be 88 f2 ff                                  	jmp    0xd70c50
  e48392:	cc                                              	int3
  e48393:	cc                                              	int3
  e48394:	cc                                              	int3
  e48395:	cc                                              	int3
  e48396:	cc                                              	int3
  e48397:	cc                                              	int3
  e48398:	cc                                              	int3
  e48399:	cc                                              	int3
  e4839a:	cc                                              	int3
  e4839b:	cc                                              	int3
  e4839c:	cc                                              	int3
  e4839d:	cc                                              	int3
  e4839e:	cc                                              	int3
  e4839f:	cc                                              	int3
