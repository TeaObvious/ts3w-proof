# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d5d0 (ScriptCore.World::World_ObjectRemoveVisualOverride)
Paired Ghidra pseudocode: 0078D5D0_ScriptCore_World_World_ObjectRemoveVisualOverride.c
Window: [0x0078d5d0, 0x0078d620) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d5d0: e8 bb bd fd ff 85 c0 74 3f e8 92 9f 1a 00 85 c0
0078d5e0: 74 36 8b 4c 24 08 8b 54 24 04 51 52 8b c8 e8 8d
0078d5f0: a9 1a 00 85 c0 74 21 8b 0d a8 a2 1e 01 51 8b c8
0078d600: e8 5b 6c 1a 00 85 c0 74 0f 8b 54 24 0c 52 8b c8
0078d610: e8 4b 12 1d 00 b0 01 c3 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0078d5d0 <.text+0x38c5d0>:
  78d5d0:	e8 bb bd fd ff                                  	call   0x769390
  78d5d5:	85 c0                                           	test   eax,eax
  78d5d7:	74 3f                                           	je     0x78d618
  78d5d9:	e8 92 9f 1a 00                                  	call   0x937570
  78d5de:	85 c0                                           	test   eax,eax
  78d5e0:	74 36                                           	je     0x78d618
  78d5e2:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d5e6:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d5ea:	51                                              	push   ecx
  78d5eb:	52                                              	push   edx
  78d5ec:	8b c8                                           	mov    ecx,eax
  78d5ee:	e8 8d a9 1a 00                                  	call   0x937f80
  78d5f3:	85 c0                                           	test   eax,eax
  78d5f5:	74 21                                           	je     0x78d618
  78d5f7:	8b 0d a8 a2 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea2a8
  78d5fd:	51                                              	push   ecx
  78d5fe:	8b c8                                           	mov    ecx,eax
  78d600:	e8 5b 6c 1a 00                                  	call   0x934260
  78d605:	85 c0                                           	test   eax,eax
  78d607:	74 0f                                           	je     0x78d618
  78d609:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78d60d:	52                                              	push   edx
  78d60e:	8b c8                                           	mov    ecx,eax
  78d610:	e8 4b 12 1d 00                                  	call   0x95e860
  78d615:	b0 01                                           	mov    al,0x1
  78d617:	c3                                              	ret
  78d618:	32 c0                                           	xor    al,al
  78d61a:	c3                                              	ret
  78d61b:	cc                                              	int3
  78d61c:	cc                                              	int3
  78d61d:	cc                                              	int3
  78d61e:	cc                                              	int3
  78d61f:	cc                                              	int3
