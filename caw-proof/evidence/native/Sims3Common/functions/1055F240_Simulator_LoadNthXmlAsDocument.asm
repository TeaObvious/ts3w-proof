# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055f240 (Simulator_LoadNthXmlAsDocument)
Paired Ghidra pseudocode: 1055F240_Simulator_LoadNthXmlAsDocument.c
Window: [0x1055f240, 0x1055f2f0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055f2f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055f240: 51 8b 4c 24 18 8b 54 24 14 56 57 8d 44 24 08 50
1055f250: 8b 44 24 1c 51 8b 4c 24 1c 52 8b 54 24 1c 50 51
1055f260: 52 c7 44 24 20 00 00 00 00 e8 12 fe ff ff 83 c4
1055f270: 18 84 c0 74 57 e8 a6 be ff ff 8b 4c 24 08 8b f8
1055f280: 8b 01 8b 50 18 ff d2 8b f0 85 f6 74 3f 8b 06 8b
1055f290: 50 04 8b ce ff d2 8b 07 8b 90 b8 00 00 00 56 8b
1055f2a0: cf ff d2 8b f8 8b 06 8b 50 18 8b ce ff d2 8b 06
1055f2b0: 8b 50 08 8b ce ff d2 8b 4c 24 08 85 c9 74 07 8b
1055f2c0: 01 8b 50 08 ff d2 8b c7 5f 5e 59 c3 8b 4c 24 08
1055f2d0: 85 c9 74 07 8b 01 8b 50 08 ff d2 5f 33 c0 5e 59
1055f2e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055f240 <.text+0x55e240>:
1055f240:	51                                              	push   ecx
1055f241:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055f245:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1055f249:	56                                              	push   esi
1055f24a:	57                                              	push   edi
1055f24b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1055f24f:	50                                              	push   eax
1055f250:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1055f254:	51                                              	push   ecx
1055f255:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1055f259:	52                                              	push   edx
1055f25a:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1055f25e:	50                                              	push   eax
1055f25f:	51                                              	push   ecx
1055f260:	52                                              	push   edx
1055f261:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
1055f269:	e8 12 fe ff ff                                  	call   0x1055f080
1055f26e:	83 c4 18                                        	add    esp,0x18
1055f271:	84 c0                                           	test   al,al
1055f273:	74 57                                           	je     0x1055f2cc
1055f275:	e8 a6 be ff ff                                  	call   0x1055b120
1055f27a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055f27e:	8b f8                                           	mov    edi,eax
1055f280:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1055f282:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
1055f285:	ff d2                                           	call   edx
1055f287:	8b f0                                           	mov    esi,eax
1055f289:	85 f6                                           	test   esi,esi
1055f28b:	74 3f                                           	je     0x1055f2cc
1055f28d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055f28f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1055f292:	8b ce                                           	mov    ecx,esi
1055f294:	ff d2                                           	call   edx
1055f296:	8b 07                                           	mov    eax,DWORD PTR [edi]
1055f298:	8b 90 b8 00 00 00                               	mov    edx,DWORD PTR [eax+0xb8]
1055f29e:	56                                              	push   esi
1055f29f:	8b cf                                           	mov    ecx,edi
1055f2a1:	ff d2                                           	call   edx
1055f2a3:	8b f8                                           	mov    edi,eax
1055f2a5:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055f2a7:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
1055f2aa:	8b ce                                           	mov    ecx,esi
1055f2ac:	ff d2                                           	call   edx
1055f2ae:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055f2b0:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1055f2b3:	8b ce                                           	mov    ecx,esi
1055f2b5:	ff d2                                           	call   edx
1055f2b7:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055f2bb:	85 c9                                           	test   ecx,ecx
1055f2bd:	74 07                                           	je     0x1055f2c6
1055f2bf:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1055f2c1:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1055f2c4:	ff d2                                           	call   edx
1055f2c6:	8b c7                                           	mov    eax,edi
1055f2c8:	5f                                              	pop    edi
1055f2c9:	5e                                              	pop    esi
1055f2ca:	59                                              	pop    ecx
1055f2cb:	c3                                              	ret
1055f2cc:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055f2d0:	85 c9                                           	test   ecx,ecx
1055f2d2:	74 07                                           	je     0x1055f2db
1055f2d4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1055f2d6:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1055f2d9:	ff d2                                           	call   edx
1055f2db:	5f                                              	pop    edi
1055f2dc:	33 c0                                           	xor    eax,eax
1055f2de:	5e                                              	pop    esi
1055f2df:	59                                              	pop    ecx
1055f2e0:	c3                                              	ret
1055f2e1:	cc                                              	int3
1055f2e2:	cc                                              	int3
1055f2e3:	cc                                              	int3
1055f2e4:	cc                                              	int3
1055f2e5:	cc                                              	int3
1055f2e6:	cc                                              	int3
1055f2e7:	cc                                              	int3
1055f2e8:	cc                                              	int3
1055f2e9:	cc                                              	int3
1055f2ea:	cc                                              	int3
1055f2eb:	cc                                              	int3
1055f2ec:	cc                                              	int3
1055f2ed:	cc                                              	int3
1055f2ee:	cc                                              	int3
1055f2ef:	cc                                              	int3
