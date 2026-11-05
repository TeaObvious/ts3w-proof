# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007859a0 (ScriptCore.World::World_SetCommercialLotSubType)
Paired Ghidra pseudocode: 007859A0_ScriptCore_World_World_SetCommercialLotSubType.c
Window: [0x007859a0, 0x007859e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007859e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007859a0: 8b 0d c4 db 1e 01 85 c9 74 28 8b 44 24 08 8b 54
007859b0: 24 04 6a 00 50 52 e8 55 ce 4d 00 85 c0 74 13 83
007859c0: b8 08 04 00 00 01 75 0a 8b 4c 24 0c 89 88 0c 04
007859d0: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007859a0 <.text+0x3849a0>:
  7859a0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7859a6:	85 c9                                           	test   ecx,ecx
  7859a8:	74 28                                           	je     0x7859d2
  7859aa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7859ae:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7859b2:	6a 00                                           	push   0x0
  7859b4:	50                                              	push   eax
  7859b5:	52                                              	push   edx
  7859b6:	e8 55 ce 4d 00                                  	call   0xc62810
  7859bb:	85 c0                                           	test   eax,eax
  7859bd:	74 13                                           	je     0x7859d2
  7859bf:	83 b8 08 04 00 00 01                            	cmp    DWORD PTR [eax+0x408],0x1
  7859c6:	75 0a                                           	jne    0x7859d2
  7859c8:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7859cc:	89 88 0c 04 00 00                               	mov    DWORD PTR [eax+0x40c],ecx
  7859d2:	c3                                              	ret
  7859d3:	cc                                              	int3
  7859d4:	cc                                              	int3
  7859d5:	cc                                              	int3
  7859d6:	cc                                              	int3
  7859d7:	cc                                              	int3
  7859d8:	cc                                              	int3
  7859d9:	cc                                              	int3
  7859da:	cc                                              	int3
  7859db:	cc                                              	int3
  7859dc:	cc                                              	int3
  7859dd:	cc                                              	int3
  7859de:	cc                                              	int3
  7859df:	cc                                              	int3
