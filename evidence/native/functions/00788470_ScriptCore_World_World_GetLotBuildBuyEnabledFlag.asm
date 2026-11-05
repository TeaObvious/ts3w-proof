# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788470 (ScriptCore.World::World_GetLotBuildBuyEnabledFlag)
Paired Ghidra pseudocode: 00788470_ScriptCore_World_World_GetLotBuildBuyEnabledFlag.c
Window: [0x00788470, 0x007884a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007884a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788470: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
00788480: 24 04 6a 00 50 52 e8 85 a3 4d 00 85 c0 74 07 8a
00788490: 80 1c 04 00 00 c3 b0 01 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788470 <.text+0x387470>:
  788470:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788476:	85 c9                                           	test   ecx,ecx
  788478:	74 1c                                           	je     0x788496
  78847a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78847e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  788482:	6a 00                                           	push   0x0
  788484:	50                                              	push   eax
  788485:	52                                              	push   edx
  788486:	e8 85 a3 4d 00                                  	call   0xc62810
  78848b:	85 c0                                           	test   eax,eax
  78848d:	74 07                                           	je     0x788496
  78848f:	8a 80 1c 04 00 00                               	mov    al,BYTE PTR [eax+0x41c]
  788495:	c3                                              	ret
  788496:	b0 01                                           	mov    al,0x1
  788498:	c3                                              	ret
  788499:	cc                                              	int3
  78849a:	cc                                              	int3
  78849b:	cc                                              	int3
  78849c:	cc                                              	int3
  78849d:	cc                                              	int3
  78849e:	cc                                              	int3
  78849f:	cc                                              	int3
