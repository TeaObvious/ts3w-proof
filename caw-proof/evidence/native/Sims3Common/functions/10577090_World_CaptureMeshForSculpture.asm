# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577090 (World_CaptureMeshForSculpture)
Paired Ghidra pseudocode: 10577090_World_CaptureMeshForSculpture.c
Window: [0x10577090, 0x10577100) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577090: 83 ec 08 56 57 e8 36 4c f8 ff 8b f8 e8 7f 40 fe
105770a0: ff 85 ff 8b f0 74 53 85 f6 74 4f 8b 06 8b 90 18
105770b0: 01 00 00 53 8b ce ff d2 8b 4c 24 20 8b 1e 6a 00
105770c0: 51 6a ff 52 89 54 24 20 8b 93 20 01 00 00 50 8b
105770d0: ce 89 44 24 20 ff d2 8b 4c 24 1c 8b 54 24 18 8d
105770e0: 44 24 0c 50 51 52 8b cf e8 53 5d f8 ff 8b 06 8b
105770f0: 90 1c 01 00 00 8b ce ff d2 5b 5f 5e 83 c4 08 c3

LINEAR DISASSEMBLY
10577090 <.text+0x576090>:
10577090:	83 ec 08                                        	sub    esp,0x8
10577093:	56                                              	push   esi
10577094:	57                                              	push   edi
10577095:	e8 36 4c f8 ff                                  	call   0x104fbcd0
1057709a:	8b f8                                           	mov    edi,eax
1057709c:	e8 7f 40 fe ff                                  	call   0x1055b120
105770a1:	85 ff                                           	test   edi,edi
105770a3:	8b f0                                           	mov    esi,eax
105770a5:	74 53                                           	je     0x105770fa
105770a7:	85 f6                                           	test   esi,esi
105770a9:	74 4f                                           	je     0x105770fa
105770ab:	8b 06                                           	mov    eax,DWORD PTR [esi]
105770ad:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
105770b3:	53                                              	push   ebx
105770b4:	8b ce                                           	mov    ecx,esi
105770b6:	ff d2                                           	call   edx
105770b8:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
105770bc:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
105770be:	6a 00                                           	push   0x0
105770c0:	51                                              	push   ecx
105770c1:	6a ff                                           	push   0xffffffff
105770c3:	52                                              	push   edx
105770c4:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
105770c8:	8b 93 20 01 00 00                               	mov    edx,DWORD PTR [ebx+0x120]
105770ce:	50                                              	push   eax
105770cf:	8b ce                                           	mov    ecx,esi
105770d1:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
105770d5:	ff d2                                           	call   edx
105770d7:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
105770db:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
105770df:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
105770e3:	50                                              	push   eax
105770e4:	51                                              	push   ecx
105770e5:	52                                              	push   edx
105770e6:	8b cf                                           	mov    ecx,edi
105770e8:	e8 53 5d f8 ff                                  	call   0x104fce40
105770ed:	8b 06                                           	mov    eax,DWORD PTR [esi]
105770ef:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
105770f5:	8b ce                                           	mov    ecx,esi
105770f7:	ff d2                                           	call   edx
105770f9:	5b                                              	pop    ebx
105770fa:	5f                                              	pop    edi
105770fb:	5e                                              	pop    esi
105770fc:	83 c4 08                                        	add    esp,0x8
105770ff:	c3                                              	ret
