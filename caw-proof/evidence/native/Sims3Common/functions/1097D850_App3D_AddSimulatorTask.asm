# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d850 (App3D_AddSimulatorTask)
Paired Ghidra pseudocode: 1097D850_App3D_AddSimulatorTask.c
Window: [0x1097d850, 0x1097d890) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d850: e8 cb d8 bd ff 85 c0 75 03 33 d2 c3 8b 4c 24 04
1097d860: 8b 10 8b 92 dc 00 00 00 51 8b c8 ff d2 c3 cc cc
1097d870: 56 e8 6a fa fb ff 8b f0 8b 06 8b 50 24 8b ce ff
1097d880: d2 8b 06 8b 50 28 8b ce ff d2 5e e9 c0 08 be ff

LINEAR DISASSEMBLY
1097d850 <.text+0x97c850>:
1097d850:	e8 cb d8 bd ff                                  	call   0x1055b120
1097d855:	85 c0                                           	test   eax,eax
1097d857:	75 03                                           	jne    0x1097d85c
1097d859:	33 d2                                           	xor    edx,edx
1097d85b:	c3                                              	ret
1097d85c:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097d860:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097d862:	8b 92 dc 00 00 00                               	mov    edx,DWORD PTR [edx+0xdc]
1097d868:	51                                              	push   ecx
1097d869:	8b c8                                           	mov    ecx,eax
1097d86b:	ff d2                                           	call   edx
1097d86d:	c3                                              	ret
1097d86e:	cc                                              	int3
1097d86f:	cc                                              	int3
1097d870:	56                                              	push   esi
1097d871:	e8 6a fa fb ff                                  	call   0x1093d2e0
1097d876:	8b f0                                           	mov    esi,eax
1097d878:	8b 06                                           	mov    eax,DWORD PTR [esi]
1097d87a:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
1097d87d:	8b ce                                           	mov    ecx,esi
1097d87f:	ff d2                                           	call   edx
1097d881:	8b 06                                           	mov    eax,DWORD PTR [esi]
1097d883:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
1097d886:	8b ce                                           	mov    ecx,esi
1097d888:	ff d2                                           	call   edx
1097d88a:	5e                                              	pop    esi
1097d88b:	e9 c0 08 be ff                                  	jmp    0x1055e150
