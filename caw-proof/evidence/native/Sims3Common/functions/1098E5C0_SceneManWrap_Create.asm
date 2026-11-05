# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e5c0 (SceneManWrap_Create)
Paired Ghidra pseudocode: 1098E5C0_SceneManWrap_Create.c
Window: [0x1098e5c0, 0x1098e610) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e5c0: 56 6a 00 6a 00 6a 00 6a 00 68 ec 71 b9 10 68 60
1098e5d0: 05 00 00 e8 d8 a8 f8 ff 83 c4 18 85 c0 74 0b 8b
1098e5e0: c8 e8 ea 6b b5 ff 8b f0 eb 02 33 f6 80 7c 24 08
1098e5f0: 00 74 09 56 e8 b7 fd b4 ff 83 c4 04 8b c6 c6 86
1098e600: 6a 02 00 00 01 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e5c0 <.text+0x98d5c0>:
1098e5c0:	56                                              	push   esi
1098e5c1:	6a 00                                           	push   0x0
1098e5c3:	6a 00                                           	push   0x0
1098e5c5:	6a 00                                           	push   0x0
1098e5c7:	6a 00                                           	push   0x0
1098e5c9:	68 ec 71 b9 10                                  	push   0x10b971ec
1098e5ce:	68 60 05 00 00                                  	push   0x560
1098e5d3:	e8 d8 a8 f8 ff                                  	call   0x10918eb0
1098e5d8:	83 c4 18                                        	add    esp,0x18
1098e5db:	85 c0                                           	test   eax,eax
1098e5dd:	74 0b                                           	je     0x1098e5ea
1098e5df:	8b c8                                           	mov    ecx,eax
1098e5e1:	e8 ea 6b b5 ff                                  	call   0x104e51d0
1098e5e6:	8b f0                                           	mov    esi,eax
1098e5e8:	eb 02                                           	jmp    0x1098e5ec
1098e5ea:	33 f6                                           	xor    esi,esi
1098e5ec:	80 7c 24 08 00                                  	cmp    BYTE PTR [esp+0x8],0x0
1098e5f1:	74 09                                           	je     0x1098e5fc
1098e5f3:	56                                              	push   esi
1098e5f4:	e8 b7 fd b4 ff                                  	call   0x104de3b0
1098e5f9:	83 c4 04                                        	add    esp,0x4
1098e5fc:	8b c6                                           	mov    eax,esi
1098e5fe:	c6 86 6a 02 00 00 01                            	mov    BYTE PTR [esi+0x26a],0x1
1098e605:	5e                                              	pop    esi
1098e606:	c3                                              	ret
1098e607:	cc                                              	int3
1098e608:	cc                                              	int3
1098e609:	cc                                              	int3
1098e60a:	cc                                              	int3
1098e60b:	cc                                              	int3
1098e60c:	cc                                              	int3
1098e60d:	cc                                              	int3
1098e60e:	cc                                              	int3
1098e60f:	cc                                              	int3
