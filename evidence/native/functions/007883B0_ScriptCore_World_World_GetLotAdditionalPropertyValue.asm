# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007883b0 (ScriptCore.World::World_GetLotAdditionalPropertyValue)
Paired Ghidra pseudocode: 007883B0_ScriptCore_World_World_GetLotAdditionalPropertyValue.c
Window: [0x007883b0, 0x007883e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007883e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007883b0: 8b 0d c4 db 1e 01 85 c9 74 1c 8b 44 24 08 8b 54
007883c0: 24 04 6a 00 50 52 e8 45 a4 4d 00 85 c0 74 07 d9
007883d0: 80 20 04 00 00 c3 d9 ee c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007883b0 <.text+0x3873b0>:
  7883b0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7883b6:	85 c9                                           	test   ecx,ecx
  7883b8:	74 1c                                           	je     0x7883d6
  7883ba:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7883be:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7883c2:	6a 00                                           	push   0x0
  7883c4:	50                                              	push   eax
  7883c5:	52                                              	push   edx
  7883c6:	e8 45 a4 4d 00                                  	call   0xc62810
  7883cb:	85 c0                                           	test   eax,eax
  7883cd:	74 07                                           	je     0x7883d6
  7883cf:	d9 80 20 04 00 00                               	fld    DWORD PTR [eax+0x420]
  7883d5:	c3                                              	ret
  7883d6:	d9 ee                                           	fldz
  7883d8:	c3                                              	ret
  7883d9:	cc                                              	int3
  7883da:	cc                                              	int3
  7883db:	cc                                              	int3
  7883dc:	cc                                              	int3
  7883dd:	cc                                              	int3
  7883de:	cc                                              	int3
  7883df:	cc                                              	int3
