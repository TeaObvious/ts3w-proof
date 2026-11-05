# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007883e0 (ScriptCore.World::World_GetLotBeautifulVistaBuf)
Paired Ghidra pseudocode: 007883E0_ScriptCore_World_World_GetLotBeautifulVistaBuf.c
Window: [0x007883e0, 0x00788410) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007883e0: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
007883f0: 24 04 6a 00 50 52 e8 15 a4 4d 00 85 c0 74 07 d9
00788400: 80 18 04 00 00 c3 d9 ee c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007883e0 <.text+0x3873e0>:
  7883e0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7883e6:	85 c9                                           	test   ecx,ecx
  7883e8:	74 1c                                           	je     0x788406
  7883ea:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7883ee:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7883f2:	6a 00                                           	push   0x0
  7883f4:	50                                              	push   eax
  7883f5:	52                                              	push   edx
  7883f6:	e8 15 a4 4d 00                                  	call   0xc62810
  7883fb:	85 c0                                           	test   eax,eax
  7883fd:	74 07                                           	je     0x788406
  7883ff:	d9 80 18 04 00 00                               	fld    DWORD PTR [eax+0x418]
  788405:	c3                                              	ret
  788406:	d9 ee                                           	fldz
  788408:	c3                                              	ret
  788409:	cc                                              	int3
  78840a:	cc                                              	int3
  78840b:	cc                                              	int3
  78840c:	cc                                              	int3
  78840d:	cc                                              	int3
  78840e:	cc                                              	int3
  78840f:	cc                                              	int3
