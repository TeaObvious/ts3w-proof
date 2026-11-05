# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105481c0 (Route_ClearDestinationList)
Paired Ghidra pseudocode: 105481C0_Route_ClearDestinationList.c
Window: [0x105481c0, 0x10548220) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105481c0: 8b 44 24 04 8b 0d 44 89 c7 10 56 50 e8 1f 3f ff
105481d0: ff 8b f0 85 f6 74 3b 8b 16 8b 42 10 57 8b ce ff
105481e0: d0 8b ce e8 b8 b3 ff ff 8b f8 85 ff 74 19 8b 17
105481f0: 8b 02 8b cf ff d0 8d 4f 18 e8 72 8d ff ff 8b 17
10548200: 8b 42 04 8b cf ff d0 8b 16 8b 42 14 5f 8b ce 5e
10548210: ff e0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105481c0 <.text+0x5471c0>:
105481c0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105481c4:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
105481ca:	56                                              	push   esi
105481cb:	50                                              	push   eax
105481cc:	e8 1f 3f ff ff                                  	call   0x1053c0f0
105481d1:	8b f0                                           	mov    esi,eax
105481d3:	85 f6                                           	test   esi,esi
105481d5:	74 3b                                           	je     0x10548212
105481d7:	8b 16                                           	mov    edx,DWORD PTR [esi]
105481d9:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
105481dc:	57                                              	push   edi
105481dd:	8b ce                                           	mov    ecx,esi
105481df:	ff d0                                           	call   eax
105481e1:	8b ce                                           	mov    ecx,esi
105481e3:	e8 b8 b3 ff ff                                  	call   0x105435a0
105481e8:	8b f8                                           	mov    edi,eax
105481ea:	85 ff                                           	test   edi,edi
105481ec:	74 19                                           	je     0x10548207
105481ee:	8b 17                                           	mov    edx,DWORD PTR [edi]
105481f0:	8b 02                                           	mov    eax,DWORD PTR [edx]
105481f2:	8b cf                                           	mov    ecx,edi
105481f4:	ff d0                                           	call   eax
105481f6:	8d 4f 18                                        	lea    ecx,[edi+0x18]
105481f9:	e8 72 8d ff ff                                  	call   0x10540f70
105481fe:	8b 17                                           	mov    edx,DWORD PTR [edi]
10548200:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10548203:	8b cf                                           	mov    ecx,edi
10548205:	ff d0                                           	call   eax
10548207:	8b 16                                           	mov    edx,DWORD PTR [esi]
10548209:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1054820c:	5f                                              	pop    edi
1054820d:	8b ce                                           	mov    ecx,esi
1054820f:	5e                                              	pop    esi
10548210:	ff e0                                           	jmp    eax
10548212:	5e                                              	pop    esi
10548213:	c3                                              	ret
10548214:	cc                                              	int3
10548215:	cc                                              	int3
10548216:	cc                                              	int3
10548217:	cc                                              	int3
10548218:	cc                                              	int3
10548219:	cc                                              	int3
1054821a:	cc                                              	int3
1054821b:	cc                                              	int3
1054821c:	cc                                              	int3
1054821d:	cc                                              	int3
1054821e:	cc                                              	int3
1054821f:	cc                                              	int3
