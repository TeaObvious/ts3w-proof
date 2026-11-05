# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007865e0 (ScriptCore.World::World_GetTerrainHeightImpl)
Paired Ghidra pseudocode: 007865E0_ScriptCore_World_World_GetTerrainHeightImpl.c
Window: [0x007865e0, 0x00786620) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007865e0: 8b 0d c4 db 1e 01 85 c9 74 29 8b 44 24 0c d9 44
007865f0: 24 08 6a 00 6a 00 6a 00 6a 00 50 6a 01 6a 00 83
00786600: ec 08 d9 5c 24 04 d9 44 24 28 d9 1c 24 e8 7e 3a
00786610: 4e 00 c3 d9 ee c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007865e0 <.text+0x3855e0>:
  7865e0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7865e6:	85 c9                                           	test   ecx,ecx
  7865e8:	74 29                                           	je     0x786613
  7865ea:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7865ee:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  7865f2:	6a 00                                           	push   0x0
  7865f4:	6a 00                                           	push   0x0
  7865f6:	6a 00                                           	push   0x0
  7865f8:	6a 00                                           	push   0x0
  7865fa:	50                                              	push   eax
  7865fb:	6a 01                                           	push   0x1
  7865fd:	6a 00                                           	push   0x0
  7865ff:	83 ec 08                                        	sub    esp,0x8
  786602:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  786606:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  78660a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78660d:	e8 7e 3a 4e 00                                  	call   0xc6a090
  786612:	c3                                              	ret
  786613:	d9 ee                                           	fldz
  786615:	c3                                              	ret
  786616:	cc                                              	int3
  786617:	cc                                              	int3
  786618:	cc                                              	int3
  786619:	cc                                              	int3
  78661a:	cc                                              	int3
  78661b:	cc                                              	int3
  78661c:	cc                                              	int3
  78661d:	cc                                              	int3
  78661e:	cc                                              	int3
  78661f:	cc                                              	int3
