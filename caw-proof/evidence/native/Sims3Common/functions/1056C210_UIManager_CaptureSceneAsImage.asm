# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056c210 (UIManager_CaptureSceneAsImage)
Paired Ghidra pseudocode: 1056C210_UIManager_CaptureSceneAsImage.c
Window: [0x1056c210, 0x1056c310) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056c210: 83 ec 0c 56 57 e8 66 0f 26 00 8b f8 89 7c 24 08
1056c220: e8 fb ee fe ff 85 ff 8b f0 0f 84 d2 00 00 00 85
1056c230: f6 0f 84 ca 00 00 00 6a 00 6a 00 6a 00 6a 00 68
1056c240: 84 0d b2 10 6a 2c e8 65 cc 3a 00 83 c4 18 85 c0
1056c250: 0f 84 ab 00 00 00 8b c8 e8 33 0a 3d 00 8b f8 85
1056c260: ff 0f 84 9a 00 00 00 8b 07 8b 10 8b cf ff d2 8b
1056c270: 07 8b 10 53 55 8b cf ff d2 8b 06 8b 90 c8 00 00
1056c280: 00 6a 30 57 8b ce ff d2 8b d8 8b 06 8b 90 18 01
1056c290: 00 00 8b ce ff d2 8b 4c 24 38 6a 00 51 6a ff 89
1056c2a0: 54 24 24 89 44 24 20 8b 2e 52 8b 95 20 01 00 00
1056c2b0: 50 8b ce ff d2 8b 4c 24 34 8b 54 24 30 57 8d 44
1056c2c0: 24 18 50 8b 44 24 34 51 8b 4c 24 34 52 8b 54 24
1056c2d0: 34 50 8b 44 24 34 51 8b 4c 24 28 52 50 e8 ce 08
1056c2e0: 26 00 8b 16 8b 82 1c 01 00 00 8b ce ff d0 8b 17
1056c2f0: 8b 42 04 8b cf ff d0 5d 8b c3 5b 5f 5e 83 c4 0c
1056c300: c3 5f 33 c0 5e 83 c4 0c c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056c210 <.text+0x56b210>:
1056c210:	83 ec 0c                                        	sub    esp,0xc
1056c213:	56                                              	push   esi
1056c214:	57                                              	push   edi
1056c215:	e8 66 0f 26 00                                  	call   0x107cd180
1056c21a:	8b f8                                           	mov    edi,eax
1056c21c:	89 7c 24 08                                     	mov    DWORD PTR [esp+0x8],edi
1056c220:	e8 fb ee fe ff                                  	call   0x1055b120
1056c225:	85 ff                                           	test   edi,edi
1056c227:	8b f0                                           	mov    esi,eax
1056c229:	0f 84 d2 00 00 00                               	je     0x1056c301
1056c22f:	85 f6                                           	test   esi,esi
1056c231:	0f 84 ca 00 00 00                               	je     0x1056c301
1056c237:	6a 00                                           	push   0x0
1056c239:	6a 00                                           	push   0x0
1056c23b:	6a 00                                           	push   0x0
1056c23d:	6a 00                                           	push   0x0
1056c23f:	68 84 0d b2 10                                  	push   0x10b20d84
1056c244:	6a 2c                                           	push   0x2c
1056c246:	e8 65 cc 3a 00                                  	call   0x10918eb0
1056c24b:	83 c4 18                                        	add    esp,0x18
1056c24e:	85 c0                                           	test   eax,eax
1056c250:	0f 84 ab 00 00 00                               	je     0x1056c301
1056c256:	8b c8                                           	mov    ecx,eax
1056c258:	e8 33 0a 3d 00                                  	call   0x1093cc90
1056c25d:	8b f8                                           	mov    edi,eax
1056c25f:	85 ff                                           	test   edi,edi
1056c261:	0f 84 9a 00 00 00                               	je     0x1056c301
1056c267:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056c269:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056c26b:	8b cf                                           	mov    ecx,edi
1056c26d:	ff d2                                           	call   edx
1056c26f:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056c271:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056c273:	53                                              	push   ebx
1056c274:	55                                              	push   ebp
1056c275:	8b cf                                           	mov    ecx,edi
1056c277:	ff d2                                           	call   edx
1056c279:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056c27b:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
1056c281:	6a 30                                           	push   0x30
1056c283:	57                                              	push   edi
1056c284:	8b ce                                           	mov    ecx,esi
1056c286:	ff d2                                           	call   edx
1056c288:	8b d8                                           	mov    ebx,eax
1056c28a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056c28c:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1056c292:	8b ce                                           	mov    ecx,esi
1056c294:	ff d2                                           	call   edx
1056c296:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
1056c29a:	6a 00                                           	push   0x0
1056c29c:	51                                              	push   ecx
1056c29d:	6a ff                                           	push   0xffffffff
1056c29f:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1056c2a3:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
1056c2a7:	8b 2e                                           	mov    ebp,DWORD PTR [esi]
1056c2a9:	52                                              	push   edx
1056c2aa:	8b 95 20 01 00 00                               	mov    edx,DWORD PTR [ebp+0x120]
1056c2b0:	50                                              	push   eax
1056c2b1:	8b ce                                           	mov    ecx,esi
1056c2b3:	ff d2                                           	call   edx
1056c2b5:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1056c2b9:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1056c2bd:	57                                              	push   edi
1056c2be:	8d 44 24 18                                     	lea    eax,[esp+0x18]
1056c2c2:	50                                              	push   eax
1056c2c3:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
1056c2c7:	51                                              	push   ecx
1056c2c8:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1056c2cc:	52                                              	push   edx
1056c2cd:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1056c2d1:	50                                              	push   eax
1056c2d2:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
1056c2d6:	51                                              	push   ecx
1056c2d7:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1056c2db:	52                                              	push   edx
1056c2dc:	50                                              	push   eax
1056c2dd:	e8 ce 08 26 00                                  	call   0x107ccbb0
1056c2e2:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056c2e4:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
1056c2ea:	8b ce                                           	mov    ecx,esi
1056c2ec:	ff d0                                           	call   eax
1056c2ee:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056c2f0:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056c2f3:	8b cf                                           	mov    ecx,edi
1056c2f5:	ff d0                                           	call   eax
1056c2f7:	5d                                              	pop    ebp
1056c2f8:	8b c3                                           	mov    eax,ebx
1056c2fa:	5b                                              	pop    ebx
1056c2fb:	5f                                              	pop    edi
1056c2fc:	5e                                              	pop    esi
1056c2fd:	83 c4 0c                                        	add    esp,0xc
1056c300:	c3                                              	ret
1056c301:	5f                                              	pop    edi
1056c302:	33 c0                                           	xor    eax,eax
1056c304:	5e                                              	pop    esi
1056c305:	83 c4 0c                                        	add    esp,0xc
1056c308:	c3                                              	ret
1056c309:	cc                                              	int3
1056c30a:	cc                                              	int3
1056c30b:	cc                                              	int3
1056c30c:	cc                                              	int3
1056c30d:	cc                                              	int3
1056c30e:	cc                                              	int3
1056c30f:	cc                                              	int3
