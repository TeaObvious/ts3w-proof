# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785120 (DownloadContent_ImportSimDescriptionImpl)
Paired Ghidra pseudocode: 10785120_DownloadContent_ImportSimDescriptionImpl.c
Window: [0x10785120, 0x10785350) (560 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785120: 83 ec 58 56 8d 44 24 08 50 8d 4c 24 64 e8 7e 8a
10785130: dd ff e8 e9 5f dd ff 8b f0 e8 92 ff 15 00 85 c0
10785140: 0f 84 f8 01 00 00 6a 00 6a 00 6a 00 6a 00 8d 4c
10785150: 24 14 51 c7 44 24 18 00 00 00 00 8b 10 8b 52 0c
10785160: 8d 4c 24 1c 51 8b c8 ff d2 84 c0 8b 4c 24 04 0f
10785170: 84 be 01 00 00 85 c9 53 74 63 8b 01 8b 50 0c 68
10785180: 3f d2 60 f5 ff d2 8b d8 85 db 74 42 8b 03 8b 10
10785190: 8b cb ff d2 8b 43 48 8b 50 1c 55 8d 6b 48 57 8b
107851a0: cd ff d2 8b f8 85 ff 0f 84 c4 00 00 00 8b 8c 24
107851b0: 84 00 00 00 8b 06 8b 90 80 00 00 00 57 51 8b ce
107851c0: ff d2 8b 6d 04 85 ed 74 1c 8b 6d 08 eb 19 8b 4c
107851d0: 24 08 85 c9 74 07 8b 01 8b 50 04 ff d2 5b 32 c0
107851e0: 5e 83 c4 58 c3 33 ed 8b 8c 24 84 00 00 00 8b 06
107851f0: 8b 90 98 00 00 00 57 6a 00 55 51 8b ce ff d2 8b
10785200: 7b 2c 2b 7b 28 8d 6b 28 68 20 8c b5 10 6a 00 c1
10785210: ff 04 6a 01 c1 e7 04 6a 00 83 c7 04 57 6a 00 8d
10785220: 4c 24 54 e8 c8 ee 18 00 6a 01 8d 44 24 40 50 8d
10785230: 4c 24 2c e8 68 70 e4 ff f6 44 24 70 01 74 10 8b
10785240: 4b 78 51 8b 0d d8 e9 c6 10 55 e8 41 78 91 ff 8d
10785250: 54 24 24 52 8b cd e8 65 66 e4 ff 84 c0 75 34 8d
10785260: 4c 24 24 e8 98 56 e4 ff 8d 4c 24 3c e8 5f 8f 89
10785270: ff 8b 03 8b 50 04 8b cb ff d2 8b 4c 24 10 85 c9
10785280: 74 07 8b 01 8b 50 04 ff d2 5f 5d 5b 32 c0 5e 83
10785290: c4 58 c3 8b 06 8b 6c 24 7c 8b 90 80 00 00 00 57
107852a0: 55 8b ce ff d2 8b 44 24 40 85 c0 74 05 8b 40 08
107852b0: eb 02 33 c0 8b 16 57 6a 00 50 8b 82 98 00 00 00
107852c0: 55 8b ce ff d0 8b 43 3c 2b 43 38 8b 16 8b bc 24
107852d0: 80 00 00 00 8b 92 88 00 00 00 c1 f8 03 50 57 8b
107852e0: ce ff d2 8b 43 38 8b 4b 3c 8b 16 8b 92 a0 00 00
107852f0: 00 2b c8 c1 f9 03 51 6a 00 50 57 8b ce ff d2 8d
10785300: 4c 24 24 e8 f8 55 e4 ff 8d 4c 24 3c e8 bf 8e 89
10785310: ff 8b 03 8b 50 04 8b cb ff d2 8b 4c 24 10 85 c9
10785320: 74 07 8b 01 8b 50 04 ff d2 5f 5d 5b b0 01 5e 83
10785330: c4 58 c3 85 c9 74 07 8b 01 8b 50 04 ff d2 32 c0
10785340: 5e 83 c4 58 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10785120 <.text+0x784120>:
10785120:	83 ec 58                                        	sub    esp,0x58
10785123:	56                                              	push   esi
10785124:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10785128:	50                                              	push   eax
10785129:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1078512d:	e8 7e 8a dd ff                                  	call   0x1055dbb0
10785132:	e8 e9 5f dd ff                                  	call   0x1055b120
10785137:	8b f0                                           	mov    esi,eax
10785139:	e8 92 ff 15 00                                  	call   0x108e50d0
1078513e:	85 c0                                           	test   eax,eax
10785140:	0f 84 f8 01 00 00                               	je     0x1078533e
10785146:	6a 00                                           	push   0x0
10785148:	6a 00                                           	push   0x0
1078514a:	6a 00                                           	push   0x0
1078514c:	6a 00                                           	push   0x0
1078514e:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10785152:	51                                              	push   ecx
10785153:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
1078515b:	8b 10                                           	mov    edx,DWORD PTR [eax]
1078515d:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10785160:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10785164:	51                                              	push   ecx
10785165:	8b c8                                           	mov    ecx,eax
10785167:	ff d2                                           	call   edx
10785169:	84 c0                                           	test   al,al
1078516b:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1078516f:	0f 84 be 01 00 00                               	je     0x10785333
10785175:	85 c9                                           	test   ecx,ecx
10785177:	53                                              	push   ebx
10785178:	74 63                                           	je     0x107851dd
1078517a:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1078517c:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1078517f:	68 3f d2 60 f5                                  	push   0xf560d23f
10785184:	ff d2                                           	call   edx
10785186:	8b d8                                           	mov    ebx,eax
10785188:	85 db                                           	test   ebx,ebx
1078518a:	74 42                                           	je     0x107851ce
1078518c:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1078518e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10785190:	8b cb                                           	mov    ecx,ebx
10785192:	ff d2                                           	call   edx
10785194:	8b 43 48                                        	mov    eax,DWORD PTR [ebx+0x48]
10785197:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
1078519a:	55                                              	push   ebp
1078519b:	8d 6b 48                                        	lea    ebp,[ebx+0x48]
1078519e:	57                                              	push   edi
1078519f:	8b cd                                           	mov    ecx,ebp
107851a1:	ff d2                                           	call   edx
107851a3:	8b f8                                           	mov    edi,eax
107851a5:	85 ff                                           	test   edi,edi
107851a7:	0f 84 c4 00 00 00                               	je     0x10785271
107851ad:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
107851b4:	8b 06                                           	mov    eax,DWORD PTR [esi]
107851b6:	8b 90 80 00 00 00                               	mov    edx,DWORD PTR [eax+0x80]
107851bc:	57                                              	push   edi
107851bd:	51                                              	push   ecx
107851be:	8b ce                                           	mov    ecx,esi
107851c0:	ff d2                                           	call   edx
107851c2:	8b 6d 04                                        	mov    ebp,DWORD PTR [ebp+0x4]
107851c5:	85 ed                                           	test   ebp,ebp
107851c7:	74 1c                                           	je     0x107851e5
107851c9:	8b 6d 08                                        	mov    ebp,DWORD PTR [ebp+0x8]
107851cc:	eb 19                                           	jmp    0x107851e7
107851ce:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
107851d2:	85 c9                                           	test   ecx,ecx
107851d4:	74 07                                           	je     0x107851dd
107851d6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
107851d8:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
107851db:	ff d2                                           	call   edx
107851dd:	5b                                              	pop    ebx
107851de:	32 c0                                           	xor    al,al
107851e0:	5e                                              	pop    esi
107851e1:	83 c4 58                                        	add    esp,0x58
107851e4:	c3                                              	ret
107851e5:	33 ed                                           	xor    ebp,ebp
107851e7:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
107851ee:	8b 06                                           	mov    eax,DWORD PTR [esi]
107851f0:	8b 90 98 00 00 00                               	mov    edx,DWORD PTR [eax+0x98]
107851f6:	57                                              	push   edi
107851f7:	6a 00                                           	push   0x0
107851f9:	55                                              	push   ebp
107851fa:	51                                              	push   ecx
107851fb:	8b ce                                           	mov    ecx,esi
107851fd:	ff d2                                           	call   edx
107851ff:	8b 7b 2c                                        	mov    edi,DWORD PTR [ebx+0x2c]
10785202:	2b 7b 28                                        	sub    edi,DWORD PTR [ebx+0x28]
10785205:	8d 6b 28                                        	lea    ebp,[ebx+0x28]
10785208:	68 20 8c b5 10                                  	push   0x10b58c20
1078520d:	6a 00                                           	push   0x0
1078520f:	c1 ff 04                                        	sar    edi,0x4
10785212:	6a 01                                           	push   0x1
10785214:	c1 e7 04                                        	shl    edi,0x4
10785217:	6a 00                                           	push   0x0
10785219:	83 c7 04                                        	add    edi,0x4
1078521c:	57                                              	push   edi
1078521d:	6a 00                                           	push   0x0
1078521f:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10785223:	e8 c8 ee 18 00                                  	call   0x109140f0
10785228:	6a 01                                           	push   0x1
1078522a:	8d 44 24 40                                     	lea    eax,[esp+0x40]
1078522e:	50                                              	push   eax
1078522f:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10785233:	e8 68 70 e4 ff                                  	call   0x105cc2a0
10785238:	f6 44 24 70 01                                  	test   BYTE PTR [esp+0x70],0x1
1078523d:	74 10                                           	je     0x1078524f
1078523f:	8b 4b 78                                        	mov    ecx,DWORD PTR [ebx+0x78]
10785242:	51                                              	push   ecx
10785243:	8b 0d d8 e9 c6 10                               	mov    ecx,DWORD PTR ds:0x10c6e9d8
10785249:	55                                              	push   ebp
1078524a:	e8 41 78 91 ff                                  	call   0x1009ca90
1078524f:	8d 54 24 24                                     	lea    edx,[esp+0x24]
10785253:	52                                              	push   edx
10785254:	8b cd                                           	mov    ecx,ebp
10785256:	e8 65 66 e4 ff                                  	call   0x105cb8c0
1078525b:	84 c0                                           	test   al,al
1078525d:	75 34                                           	jne    0x10785293
1078525f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10785263:	e8 98 56 e4 ff                                  	call   0x105ca900
10785268:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
1078526c:	e8 5f 8f 89 ff                                  	call   0x1001e1d0
10785271:	8b 03                                           	mov    eax,DWORD PTR [ebx]
10785273:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785276:	8b cb                                           	mov    ecx,ebx
10785278:	ff d2                                           	call   edx
1078527a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1078527e:	85 c9                                           	test   ecx,ecx
10785280:	74 07                                           	je     0x10785289
10785282:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10785284:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785287:	ff d2                                           	call   edx
10785289:	5f                                              	pop    edi
1078528a:	5d                                              	pop    ebp
1078528b:	5b                                              	pop    ebx
1078528c:	32 c0                                           	xor    al,al
1078528e:	5e                                              	pop    esi
1078528f:	83 c4 58                                        	add    esp,0x58
10785292:	c3                                              	ret
10785293:	8b 06                                           	mov    eax,DWORD PTR [esi]
10785295:	8b 6c 24 7c                                     	mov    ebp,DWORD PTR [esp+0x7c]
10785299:	8b 90 80 00 00 00                               	mov    edx,DWORD PTR [eax+0x80]
1078529f:	57                                              	push   edi
107852a0:	55                                              	push   ebp
107852a1:	8b ce                                           	mov    ecx,esi
107852a3:	ff d2                                           	call   edx
107852a5:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
107852a9:	85 c0                                           	test   eax,eax
107852ab:	74 05                                           	je     0x107852b2
107852ad:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
107852b0:	eb 02                                           	jmp    0x107852b4
107852b2:	33 c0                                           	xor    eax,eax
107852b4:	8b 16                                           	mov    edx,DWORD PTR [esi]
107852b6:	57                                              	push   edi
107852b7:	6a 00                                           	push   0x0
107852b9:	50                                              	push   eax
107852ba:	8b 82 98 00 00 00                               	mov    eax,DWORD PTR [edx+0x98]
107852c0:	55                                              	push   ebp
107852c1:	8b ce                                           	mov    ecx,esi
107852c3:	ff d0                                           	call   eax
107852c5:	8b 43 3c                                        	mov    eax,DWORD PTR [ebx+0x3c]
107852c8:	2b 43 38                                        	sub    eax,DWORD PTR [ebx+0x38]
107852cb:	8b 16                                           	mov    edx,DWORD PTR [esi]
107852cd:	8b bc 24 80 00 00 00                            	mov    edi,DWORD PTR [esp+0x80]
107852d4:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
107852da:	c1 f8 03                                        	sar    eax,0x3
107852dd:	50                                              	push   eax
107852de:	57                                              	push   edi
107852df:	8b ce                                           	mov    ecx,esi
107852e1:	ff d2                                           	call   edx
107852e3:	8b 43 38                                        	mov    eax,DWORD PTR [ebx+0x38]
107852e6:	8b 4b 3c                                        	mov    ecx,DWORD PTR [ebx+0x3c]
107852e9:	8b 16                                           	mov    edx,DWORD PTR [esi]
107852eb:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
107852f1:	2b c8                                           	sub    ecx,eax
107852f3:	c1 f9 03                                        	sar    ecx,0x3
107852f6:	51                                              	push   ecx
107852f7:	6a 00                                           	push   0x0
107852f9:	50                                              	push   eax
107852fa:	57                                              	push   edi
107852fb:	8b ce                                           	mov    ecx,esi
107852fd:	ff d2                                           	call   edx
107852ff:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10785303:	e8 f8 55 e4 ff                                  	call   0x105ca900
10785308:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
1078530c:	e8 bf 8e 89 ff                                  	call   0x1001e1d0
10785311:	8b 03                                           	mov    eax,DWORD PTR [ebx]
10785313:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785316:	8b cb                                           	mov    ecx,ebx
10785318:	ff d2                                           	call   edx
1078531a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1078531e:	85 c9                                           	test   ecx,ecx
10785320:	74 07                                           	je     0x10785329
10785322:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10785324:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785327:	ff d2                                           	call   edx
10785329:	5f                                              	pop    edi
1078532a:	5d                                              	pop    ebp
1078532b:	5b                                              	pop    ebx
1078532c:	b0 01                                           	mov    al,0x1
1078532e:	5e                                              	pop    esi
1078532f:	83 c4 58                                        	add    esp,0x58
10785332:	c3                                              	ret
10785333:	85 c9                                           	test   ecx,ecx
10785335:	74 07                                           	je     0x1078533e
10785337:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10785339:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1078533c:	ff d2                                           	call   edx
1078533e:	32 c0                                           	xor    al,al
10785340:	5e                                              	pop    esi
10785341:	83 c4 58                                        	add    esp,0x58
10785344:	c3                                              	ret
10785345:	cc                                              	int3
10785346:	cc                                              	int3
10785347:	cc                                              	int3
10785348:	cc                                              	int3
10785349:	cc                                              	int3
1078534a:	cc                                              	int3
1078534b:	cc                                              	int3
1078534c:	cc                                              	int3
1078534d:	cc                                              	int3
1078534e:	cc                                              	int3
1078534f:	cc                                              	int3
