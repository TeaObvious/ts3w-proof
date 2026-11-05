# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d4e0 (ScriptCore.World::World_ObjectSetSculptureType)
Paired Ghidra pseudocode: 0078D4E0_ScriptCore_World_World_ObjectSetSculptureType.c
Window: [0x0078d4e0, 0x0078d520) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d4e0: e8 8b a0 1a 00 85 c0 74 33 8b 4c 24 08 8b 54 24
0078d4f0: 04 51 52 8b c8 e8 86 aa 1a 00 85 c0 74 1e 8b 0d
0078d500: a8 a2 1e 01 51 8b c8 e8 54 6d 1a 00 85 c0 74 0c
0078d510: 8b 54 24 0c 52 8b c8 e8 24 0c 1d 00 c3 cc cc cc

LINEAR DISASSEMBLY
0078d4e0 <.text+0x38c4e0>:
  78d4e0:	e8 8b a0 1a 00                                  	call   0x937570
  78d4e5:	85 c0                                           	test   eax,eax
  78d4e7:	74 33                                           	je     0x78d51c
  78d4e9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d4ed:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d4f1:	51                                              	push   ecx
  78d4f2:	52                                              	push   edx
  78d4f3:	8b c8                                           	mov    ecx,eax
  78d4f5:	e8 86 aa 1a 00                                  	call   0x937f80
  78d4fa:	85 c0                                           	test   eax,eax
  78d4fc:	74 1e                                           	je     0x78d51c
  78d4fe:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d504:	51                                              	push   ecx
  78d505:	8b c8                                           	mov    ecx,eax
  78d507:	e8 54 6d 1a 00                                  	call   0x934260
  78d50c:	85 c0                                           	test   eax,eax
  78d50e:	74 0c                                           	je     0x78d51c
  78d510:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78d514:	52                                              	push   edx
  78d515:	8b c8                                           	mov    ecx,eax
  78d517:	e8 24 0c 1d 00                                  	call   0x95e140
  78d51c:	c3                                              	ret
  78d51d:	cc                                              	int3
  78d51e:	cc                                              	int3
  78d51f:	cc                                              	int3
