# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d6c0 (ScriptCore.World::World_ObjectGetElevationOffset)
Paired Ghidra pseudocode: 0078D6C0_ScriptCore_World_World_ObjectGetElevationOffset.c
Window: [0x0078d6c0, 0x0078d700) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d6c0: e8 ab 9e 1a 00 85 c0 74 2b 8b 4c 24 08 8b 54 24
0078d6d0: 04 51 52 8b c8 e8 a6 a8 1a 00 85 c0 74 16 8b 0d
0078d6e0: 08 df 1e 01 51 8b c8 e8 74 6b 1a 00 85 c0 74 04
0078d6f0: d9 40 24 c3 d9 ee c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078d6c0 <.text+0x38c6c0>:
  78d6c0:	e8 ab 9e 1a 00                                  	call   0x937570
  78d6c5:	85 c0                                           	test   eax,eax
  78d6c7:	74 2b                                           	je     0x78d6f4
  78d6c9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d6cd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d6d1:	51                                              	push   ecx
  78d6d2:	52                                              	push   edx
  78d6d3:	8b c8                                           	mov    ecx,eax
  78d6d5:	e8 a6 a8 1a 00                                  	call   0x937f80
  78d6da:	85 c0                                           	test   eax,eax
  78d6dc:	74 16                                           	je     0x78d6f4
  78d6de:	8b 0d 08 df 1e 01                               	mov    ecx,DWORD PTR ds:0x11edf08
  78d6e4:	51                                              	push   ecx
  78d6e5:	8b c8                                           	mov    ecx,eax
  78d6e7:	e8 74 6b 1a 00                                  	call   0x934260
  78d6ec:	85 c0                                           	test   eax,eax
  78d6ee:	74 04                                           	je     0x78d6f4
  78d6f0:	d9 40 24                                        	fld    DWORD PTR [eax+0x24]
  78d6f3:	c3                                              	ret
  78d6f4:	d9 ee                                           	fldz
  78d6f6:	c3                                              	ret
  78d6f7:	cc                                              	int3
  78d6f8:	cc                                              	int3
  78d6f9:	cc                                              	int3
  78d6fa:	cc                                              	int3
  78d6fb:	cc                                              	int3
  78d6fc:	cc                                              	int3
  78d6fd:	cc                                              	int3
  78d6fe:	cc                                              	int3
  78d6ff:	cc                                              	int3
