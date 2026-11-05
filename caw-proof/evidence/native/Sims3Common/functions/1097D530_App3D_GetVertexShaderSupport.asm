# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d530 (App3D_GetVertexShaderSupport)
Paired Ghidra pseudocode: 1097D530_App3D_GetVertexShaderSupport.c
Window: [0x1097d530, 0x1097d570) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d530: e8 8b bf a8 ff 8b c8 e8 44 d2 a8 ff 8b 80 c4 00
1097d540: 00 00 3d 01 01 fe ff 73 03 33 c0 c3 3d 00 02 fe
1097d550: ff 73 06 b8 01 00 00 00 c3 3d 00 03 fe ff 1b c0
1097d560: 83 c0 03 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d530 <.text+0x97c530>:
1097d530:	e8 8b bf a8 ff                                  	call   0x104094c0
1097d535:	8b c8                                           	mov    ecx,eax
1097d537:	e8 44 d2 a8 ff                                  	call   0x1040a780
1097d53c:	8b 80 c4 00 00 00                               	mov    eax,DWORD PTR [eax+0xc4]
1097d542:	3d 01 01 fe ff                                  	cmp    eax,0xfffe0101
1097d547:	73 03                                           	jae    0x1097d54c
1097d549:	33 c0                                           	xor    eax,eax
1097d54b:	c3                                              	ret
1097d54c:	3d 00 02 fe ff                                  	cmp    eax,0xfffe0200
1097d551:	73 06                                           	jae    0x1097d559
1097d553:	b8 01 00 00 00                                  	mov    eax,0x1
1097d558:	c3                                              	ret
1097d559:	3d 00 03 fe ff                                  	cmp    eax,0xfffe0300
1097d55e:	1b c0                                           	sbb    eax,eax
1097d560:	83 c0 03                                        	add    eax,0x3
1097d563:	c3                                              	ret
1097d564:	cc                                              	int3
1097d565:	cc                                              	int3
1097d566:	cc                                              	int3
1097d567:	cc                                              	int3
1097d568:	cc                                              	int3
1097d569:	cc                                              	int3
1097d56a:	cc                                              	int3
1097d56b:	cc                                              	int3
1097d56c:	cc                                              	int3
1097d56d:	cc                                              	int3
1097d56e:	cc                                              	int3
1097d56f:	cc                                              	int3
