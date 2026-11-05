# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098b230 (ResourceMgr_Destroy)
Paired Ghidra pseudocode: 1098B230_ResourceMgr_Destroy.c
Window: [0x1098b230, 0x1098b330) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098b330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098b230: 83 ec 08 83 3d 78 80 cb 10 00 75 06 33 c0 83 c4
1098b240: 08 c3 53 56 57 e8 86 9e f5 ff 8b 0d 78 80 cb 10
1098b250: 8b 79 04 8b 37 85 f6 8b d8 75 11 83 c7 04 39 37
1098b260: 75 08 83 c7 04 83 3f 00 74 f8 8b 37 8b 41 08 8b
1098b270: 51 04 8b 04 82 3b f0 89 44 24 0c 74 3e 8d 49 00
1098b280: 8b 46 04 8d 48 04 8b 01 8b 50 04 ff d2 8b 4e 04
1098b290: 8b 03 8b 50 34 6a 00 51 6a 00 8b cb ff d2 8b 76
1098b2a0: 08 85 f6 75 0a 8b 77 04 83 c7 04 85 f6 74 f6 3b
1098b2b0: 74 24 0c 75 cb 8b 0d 78 80 cb 10 8b 41 08 8b 51
1098b2c0: 04 50 52 8b f1 e8 46 90 de ff c7 46 0c 00 00 00
1098b2d0: 00 8b 0d 78 80 cb 10 85 c9 8b d9 74 33 8b 41 08
1098b2e0: 8b 51 04 8d 71 08 8d 79 04 50 52 e8 20 90 de ff
1098b2f0: 83 3e 01 c7 43 0c 00 00 00 00 76 0b 8b 07 50 e8
1098b300: 8c db f8 ff 83 c4 04 53 e8 83 db f8 ff 83 c4 04
1098b310: 5f 5e c7 05 78 80 cb 10 00 00 00 00 b8 01 00 00
1098b320: 00 5b 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098b230 <.text+0x98a230>:
1098b230:	83 ec 08                                        	sub    esp,0x8
1098b233:	83 3d 78 80 cb 10 00                            	cmp    DWORD PTR ds:0x10cb8078,0x0
1098b23a:	75 06                                           	jne    0x1098b242
1098b23c:	33 c0                                           	xor    eax,eax
1098b23e:	83 c4 08                                        	add    esp,0x8
1098b241:	c3                                              	ret
1098b242:	53                                              	push   ebx
1098b243:	56                                              	push   esi
1098b244:	57                                              	push   edi
1098b245:	e8 86 9e f5 ff                                  	call   0x108e50d0
1098b24a:	8b 0d 78 80 cb 10                               	mov    ecx,DWORD PTR ds:0x10cb8078
1098b250:	8b 79 04                                        	mov    edi,DWORD PTR [ecx+0x4]
1098b253:	8b 37                                           	mov    esi,DWORD PTR [edi]
1098b255:	85 f6                                           	test   esi,esi
1098b257:	8b d8                                           	mov    ebx,eax
1098b259:	75 11                                           	jne    0x1098b26c
1098b25b:	83 c7 04                                        	add    edi,0x4
1098b25e:	39 37                                           	cmp    DWORD PTR [edi],esi
1098b260:	75 08                                           	jne    0x1098b26a
1098b262:	83 c7 04                                        	add    edi,0x4
1098b265:	83 3f 00                                        	cmp    DWORD PTR [edi],0x0
1098b268:	74 f8                                           	je     0x1098b262
1098b26a:	8b 37                                           	mov    esi,DWORD PTR [edi]
1098b26c:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1098b26f:	8b 51 04                                        	mov    edx,DWORD PTR [ecx+0x4]
1098b272:	8b 04 82                                        	mov    eax,DWORD PTR [edx+eax*4]
1098b275:	3b f0                                           	cmp    esi,eax
1098b277:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1098b27b:	74 3e                                           	je     0x1098b2bb
1098b27d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098b280:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1098b283:	8d 48 04                                        	lea    ecx,[eax+0x4]
1098b286:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098b288:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098b28b:	ff d2                                           	call   edx
1098b28d:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
1098b290:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1098b292:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
1098b295:	6a 00                                           	push   0x0
1098b297:	51                                              	push   ecx
1098b298:	6a 00                                           	push   0x0
1098b29a:	8b cb                                           	mov    ecx,ebx
1098b29c:	ff d2                                           	call   edx
1098b29e:	8b 76 08                                        	mov    esi,DWORD PTR [esi+0x8]
1098b2a1:	85 f6                                           	test   esi,esi
1098b2a3:	75 0a                                           	jne    0x1098b2af
1098b2a5:	8b 77 04                                        	mov    esi,DWORD PTR [edi+0x4]
1098b2a8:	83 c7 04                                        	add    edi,0x4
1098b2ab:	85 f6                                           	test   esi,esi
1098b2ad:	74 f6                                           	je     0x1098b2a5
1098b2af:	3b 74 24 0c                                     	cmp    esi,DWORD PTR [esp+0xc]
1098b2b3:	75 cb                                           	jne    0x1098b280
1098b2b5:	8b 0d 78 80 cb 10                               	mov    ecx,DWORD PTR ds:0x10cb8078
1098b2bb:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1098b2be:	8b 51 04                                        	mov    edx,DWORD PTR [ecx+0x4]
1098b2c1:	50                                              	push   eax
1098b2c2:	52                                              	push   edx
1098b2c3:	8b f1                                           	mov    esi,ecx
1098b2c5:	e8 46 90 de ff                                  	call   0x10774310
1098b2ca:	c7 46 0c 00 00 00 00                            	mov    DWORD PTR [esi+0xc],0x0
1098b2d1:	8b 0d 78 80 cb 10                               	mov    ecx,DWORD PTR ds:0x10cb8078
1098b2d7:	85 c9                                           	test   ecx,ecx
1098b2d9:	8b d9                                           	mov    ebx,ecx
1098b2db:	74 33                                           	je     0x1098b310
1098b2dd:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1098b2e0:	8b 51 04                                        	mov    edx,DWORD PTR [ecx+0x4]
1098b2e3:	8d 71 08                                        	lea    esi,[ecx+0x8]
1098b2e6:	8d 79 04                                        	lea    edi,[ecx+0x4]
1098b2e9:	50                                              	push   eax
1098b2ea:	52                                              	push   edx
1098b2eb:	e8 20 90 de ff                                  	call   0x10774310
1098b2f0:	83 3e 01                                        	cmp    DWORD PTR [esi],0x1
1098b2f3:	c7 43 0c 00 00 00 00                            	mov    DWORD PTR [ebx+0xc],0x0
1098b2fa:	76 0b                                           	jbe    0x1098b307
1098b2fc:	8b 07                                           	mov    eax,DWORD PTR [edi]
1098b2fe:	50                                              	push   eax
1098b2ff:	e8 8c db f8 ff                                  	call   0x10918e90
1098b304:	83 c4 04                                        	add    esp,0x4
1098b307:	53                                              	push   ebx
1098b308:	e8 83 db f8 ff                                  	call   0x10918e90
1098b30d:	83 c4 04                                        	add    esp,0x4
1098b310:	5f                                              	pop    edi
1098b311:	5e                                              	pop    esi
1098b312:	c7 05 78 80 cb 10 00 00 00 00                   	mov    DWORD PTR ds:0x10cb8078,0x0
1098b31c:	b8 01 00 00 00                                  	mov    eax,0x1
1098b321:	5b                                              	pop    ebx
1098b322:	83 c4 08                                        	add    esp,0x8
1098b325:	c3                                              	ret
1098b326:	cc                                              	int3
1098b327:	cc                                              	int3
1098b328:	cc                                              	int3
1098b329:	cc                                              	int3
1098b32a:	cc                                              	int3
1098b32b:	cc                                              	int3
1098b32c:	cc                                              	int3
1098b32d:	cc                                              	int3
1098b32e:	cc                                              	int3
1098b32f:	cc                                              	int3
