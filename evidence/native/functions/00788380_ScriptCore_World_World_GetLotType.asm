# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788380 (ScriptCore.World::World_GetLotType)
Paired Ghidra pseudocode: 00788380_ScriptCore_World_World_GetLotType.c
Window: [0x00788380, 0x007883b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007883b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788380: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
00788390: 24 04 6a 00 50 52 e8 75 a4 4d 00 85 c0 74 07 8b
007883a0: 80 08 04 00 00 c3 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788380 <.text+0x387380>:
  788380:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788386:	85 c9                                           	test   ecx,ecx
  788388:	74 1c                                           	je     0x7883a6
  78838a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78838e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  788392:	6a 00                                           	push   0x0
  788394:	50                                              	push   eax
  788395:	52                                              	push   edx
  788396:	e8 75 a4 4d 00                                  	call   0xc62810
  78839b:	85 c0                                           	test   eax,eax
  78839d:	74 07                                           	je     0x7883a6
  78839f:	8b 80 08 04 00 00                               	mov    eax,DWORD PTR [eax+0x408]
  7883a5:	c3                                              	ret
  7883a6:	33 c0                                           	xor    eax,eax
  7883a8:	c3                                              	ret
  7883a9:	cc                                              	int3
  7883aa:	cc                                              	int3
  7883ab:	cc                                              	int3
  7883ac:	cc                                              	int3
  7883ad:	cc                                              	int3
  7883ae:	cc                                              	int3
  7883af:	cc                                              	int3
