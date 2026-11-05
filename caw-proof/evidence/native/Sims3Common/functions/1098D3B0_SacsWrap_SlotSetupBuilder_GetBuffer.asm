# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d3b0 (SacsWrap_SlotSetupBuilder_GetBuffer)
Paired Ghidra pseudocode: 1098D3B0_SacsWrap_SlotSetupBuilder_GetBuffer.c
Window: [0x1098d3b0, 0x1098d420) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d3b0: 57 8b 7c 24 08 85 ff 74 5e 8b 07 8b 4f 04 55 8b
1098d3c0: 29 56 8b 30 83 c6 01 c1 e6 04 8d 2c ed 04 00 00
1098d3d0: 00 8d 0c 2e 3b 4c 24 14 89 4c 24 10 77 33 53 8b
1098d3e0: 5c 24 1c 56 50 53 e8 37 35 10 00 8b 57 04 8b 02
1098d3f0: 83 c5 fc 55 83 c7 08 8d 4c 1e 04 57 51 89 04 1e
1098d400: e8 1d 35 10 00 8b 44 24 2c 83 c4 18 5b 5e 5d 5f
1098d410: c3 5e 5d 33 c0 5f c3 33 c0 5f c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1098d3b0 <.text+0x98c3b0>:
1098d3b0:	57                                              	push   edi
1098d3b1:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
1098d3b5:	85 ff                                           	test   edi,edi
1098d3b7:	74 5e                                           	je     0x1098d417
1098d3b9:	8b 07                                           	mov    eax,DWORD PTR [edi]
1098d3bb:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
1098d3be:	55                                              	push   ebp
1098d3bf:	8b 29                                           	mov    ebp,DWORD PTR [ecx]
1098d3c1:	56                                              	push   esi
1098d3c2:	8b 30                                           	mov    esi,DWORD PTR [eax]
1098d3c4:	83 c6 01                                        	add    esi,0x1
1098d3c7:	c1 e6 04                                        	shl    esi,0x4
1098d3ca:	8d 2c ed 04 00 00 00                            	lea    ebp,[ebp*8+0x4]
1098d3d1:	8d 0c 2e                                        	lea    ecx,[esi+ebp*1]
1098d3d4:	3b 4c 24 14                                     	cmp    ecx,DWORD PTR [esp+0x14]
1098d3d8:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
1098d3dc:	77 33                                           	ja     0x1098d411
1098d3de:	53                                              	push   ebx
1098d3df:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
1098d3e3:	56                                              	push   esi
1098d3e4:	50                                              	push   eax
1098d3e5:	53                                              	push   ebx
1098d3e6:	e8 37 35 10 00                                  	call   0x10a90922
1098d3eb:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
1098d3ee:	8b 02                                           	mov    eax,DWORD PTR [edx]
1098d3f0:	83 c5 fc                                        	add    ebp,0xfffffffc
1098d3f3:	55                                              	push   ebp
1098d3f4:	83 c7 08                                        	add    edi,0x8
1098d3f7:	8d 4c 1e 04                                     	lea    ecx,[esi+ebx*1+0x4]
1098d3fb:	57                                              	push   edi
1098d3fc:	51                                              	push   ecx
1098d3fd:	89 04 1e                                        	mov    DWORD PTR [esi+ebx*1],eax
1098d400:	e8 1d 35 10 00                                  	call   0x10a90922
1098d405:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1098d409:	83 c4 18                                        	add    esp,0x18
1098d40c:	5b                                              	pop    ebx
1098d40d:	5e                                              	pop    esi
1098d40e:	5d                                              	pop    ebp
1098d40f:	5f                                              	pop    edi
1098d410:	c3                                              	ret
1098d411:	5e                                              	pop    esi
1098d412:	5d                                              	pop    ebp
1098d413:	33 c0                                           	xor    eax,eax
1098d415:	5f                                              	pop    edi
1098d416:	c3                                              	ret
1098d417:	33 c0                                           	xor    eax,eax
1098d419:	5f                                              	pop    edi
1098d41a:	c3                                              	ret
1098d41b:	cc                                              	int3
1098d41c:	cc                                              	int3
1098d41d:	cc                                              	int3
1098d41e:	cc                                              	int3
1098d41f:	cc                                              	int3
