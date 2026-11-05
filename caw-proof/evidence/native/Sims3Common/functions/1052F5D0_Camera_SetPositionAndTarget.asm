# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f5d0 (Camera_SetPositionAndTarget)
Paired Ghidra pseudocode: 1052F5D0_Camera_SetPositionAndTarget.c
Window: [0x1052f5d0, 0x1052f630) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f5d0: 55 8b ec 83 e4 f0 83 ec 28 56 57 e8 50 d0 22 00
1052f5e0: 85 c0 74 3d 8b c8 e8 95 84 40 00 85 c0 74 32 8b
1052f5f0: c8 e8 5a d3 22 00 8b f0 85 f6 74 25 8b 3e 8d 44
1052f600: 24 10 50 8d 4d 14 e8 15 e5 02 00 50 8d 4c 24 24
1052f610: 51 8d 4d 08 e8 07 e5 02 00 8b 57 2c 50 8b ce ff
1052f620: d2 5f 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f5d0 <.text+0x52e5d0>:
1052f5d0:	55                                              	push   ebp
1052f5d1:	8b ec                                           	mov    ebp,esp
1052f5d3:	83 e4 f0                                        	and    esp,0xfffffff0
1052f5d6:	83 ec 28                                        	sub    esp,0x28
1052f5d9:	56                                              	push   esi
1052f5da:	57                                              	push   edi
1052f5db:	e8 50 d0 22 00                                  	call   0x1075c630
1052f5e0:	85 c0                                           	test   eax,eax
1052f5e2:	74 3d                                           	je     0x1052f621
1052f5e4:	8b c8                                           	mov    ecx,eax
1052f5e6:	e8 95 84 40 00                                  	call   0x10937a80
1052f5eb:	85 c0                                           	test   eax,eax
1052f5ed:	74 32                                           	je     0x1052f621
1052f5ef:	8b c8                                           	mov    ecx,eax
1052f5f1:	e8 5a d3 22 00                                  	call   0x1075c950
1052f5f6:	8b f0                                           	mov    esi,eax
1052f5f8:	85 f6                                           	test   esi,esi
1052f5fa:	74 25                                           	je     0x1052f621
1052f5fc:	8b 3e                                           	mov    edi,DWORD PTR [esi]
1052f5fe:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1052f602:	50                                              	push   eax
1052f603:	8d 4d 14                                        	lea    ecx,[ebp+0x14]
1052f606:	e8 15 e5 02 00                                  	call   0x1055db20
1052f60b:	50                                              	push   eax
1052f60c:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1052f610:	51                                              	push   ecx
1052f611:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
1052f614:	e8 07 e5 02 00                                  	call   0x1055db20
1052f619:	8b 57 2c                                        	mov    edx,DWORD PTR [edi+0x2c]
1052f61c:	50                                              	push   eax
1052f61d:	8b ce                                           	mov    ecx,esi
1052f61f:	ff d2                                           	call   edx
1052f621:	5f                                              	pop    edi
1052f622:	5e                                              	pop    esi
1052f623:	8b e5                                           	mov    esp,ebp
1052f625:	5d                                              	pop    ebp
1052f626:	c3                                              	ret
1052f627:	cc                                              	int3
1052f628:	cc                                              	int3
1052f629:	cc                                              	int3
1052f62a:	cc                                              	int3
1052f62b:	cc                                              	int3
1052f62c:	cc                                              	int3
1052f62d:	cc                                              	int3
1052f62e:	cc                                              	int3
1052f62f:	cc                                              	int3
