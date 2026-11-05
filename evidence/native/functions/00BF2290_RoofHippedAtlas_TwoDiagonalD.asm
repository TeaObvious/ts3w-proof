# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf2290 (RoofHippedAtlas_TwoDiagonalD)
Complete Ghidra function body: 0x00bf2290..0x00bf2373 (exclusive end)
Ghidra body ranges: [[00bf2290, 00bf2372]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf2290 <.text+0x7f1290>:
  bf2290:	53                                              	push   ebx
  bf2291:	55                                              	push   ebp
  bf2292:	56                                              	push   esi
  bf2293:	8b f1                                           	mov    esi,ecx
  bf2295:	8b 06                                           	mov    eax,DWORD PTR [esi]
  bf2297:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  bf229a:	57                                              	push   edi
  bf229b:	ff d2                                           	call   edx
  bf229d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  bf229f:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  bf22a2:	8b ce                                           	mov    ecx,esi
  bf22a4:	ff d2                                           	call   edx
  bf22a6:	8d 6e 30                                        	lea    ebp,[esi+0x30]
  bf22a9:	33 db                                           	xor    ebx,ebx
  bf22ab:	55                                              	push   ebp
  bf22ac:	8b f8                                           	mov    edi,eax
  bf22ae:	89 5e 40                                        	mov    DWORD PTR [esi+0x40],ebx
  bf22b1:	e8 1a 0c 01 00                                  	call   0xc02ed0
  bf22b6:	83 c4 04                                        	add    esp,0x4
  bf22b9:	84 c0                                           	test   al,al
  bf22bb:	74 51                                           	je     0xbf230e
  bf22bd:	83 ff 02                                        	cmp    edi,0x2
  bf22c0:	75 2c                                           	jne    0xbf22ee
  bf22c2:	8b 46 50                                        	mov    eax,DWORD PTR [esi+0x50]
  bf22c5:	c1 e8 02                                        	shr    eax,0x2
  bf22c8:	a8 01                                           	test   al,0x1
  bf22ca:	0f 84 9e 00 00 00                               	je     0xbf236e
  bf22d0:	8b 4e 58                                        	mov    ecx,DWORD PTR [esi+0x58]
  bf22d3:	c1 e9 02                                        	shr    ecx,0x2
  bf22d6:	f6 c1 01                                        	test   cl,0x1
  bf22d9:	0f 84 8f 00 00 00                               	je     0xbf236e
  bf22df:	5f                                              	pop    edi
  bf22e0:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf22e3:	c7 46 40 2c 00 00 00                            	mov    DWORD PTR [esi+0x40],0x2c
  bf22ea:	5e                                              	pop    esi
  bf22eb:	5d                                              	pop    ebp
  bf22ec:	5b                                              	pop    ebx
  bf22ed:	c3                                              	ret
  bf22ee:	83 ff 01                                        	cmp    edi,0x1
  bf22f1:	75 7b                                           	jne    0xbf236e
  bf22f3:	8b 56 50                                        	mov    edx,DWORD PTR [esi+0x50]
  bf22f6:	c1 ea 02                                        	shr    edx,0x2
  bf22f9:	f6 c2 01                                        	test   dl,0x1
  bf22fc:	74 70                                           	je     0xbf236e
  bf22fe:	5f                                              	pop    edi
  bf22ff:	c7 46 40 08 00 00 00                            	mov    DWORD PTR [esi+0x40],0x8
  bf2306:	c6 46 44 01                                     	mov    BYTE PTR [esi+0x44],0x1
  bf230a:	5e                                              	pop    esi
  bf230b:	5d                                              	pop    ebp
  bf230c:	5b                                              	pop    ebx
  bf230d:	c3                                              	ret
  bf230e:	55                                              	push   ebp
  bf230f:	e8 1c 0b 01 00                                  	call   0xc02e30
  bf2314:	83 c4 04                                        	add    esp,0x4
  bf2317:	84 c0                                           	test   al,al
  bf2319:	74 53                                           	je     0xbf236e
  bf231b:	83 ff 01                                        	cmp    edi,0x1
  bf231e:	75 19                                           	jne    0xbf2339
  bf2320:	8b 46 60                                        	mov    eax,DWORD PTR [esi+0x60]
  bf2323:	c1 e8 02                                        	shr    eax,0x2
  bf2326:	a8 01                                           	test   al,0x1
  bf2328:	74 3a                                           	je     0xbf2364
  bf232a:	5f                                              	pop    edi
  bf232b:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf232e:	c7 46 40 08 00 00 00                            	mov    DWORD PTR [esi+0x40],0x8
  bf2335:	5e                                              	pop    esi
  bf2336:	5d                                              	pop    ebp
  bf2337:	5b                                              	pop    ebx
  bf2338:	c3                                              	ret
  bf2339:	83 ff 02                                        	cmp    edi,0x2
  bf233c:	75 26                                           	jne    0xbf2364
  bf233e:	8b 4e 58                                        	mov    ecx,DWORD PTR [esi+0x58]
  bf2341:	c1 e9 02                                        	shr    ecx,0x2
  bf2344:	f6 c1 01                                        	test   cl,0x1
  bf2347:	74 1b                                           	je     0xbf2364
  bf2349:	8b 56 60                                        	mov    edx,DWORD PTR [esi+0x60]
  bf234c:	c1 ea 02                                        	shr    edx,0x2
  bf234f:	f6 c2 01                                        	test   dl,0x1
  bf2352:	74 10                                           	je     0xbf2364
  bf2354:	5f                                              	pop    edi
  bf2355:	c7 46 40 2c 00 00 00                            	mov    DWORD PTR [esi+0x40],0x2c
  bf235c:	c6 46 44 01                                     	mov    BYTE PTR [esi+0x44],0x1
  bf2360:	5e                                              	pop    esi
  bf2361:	5d                                              	pop    ebp
  bf2362:	5b                                              	pop    ebx
  bf2363:	c3                                              	ret
  bf2364:	c7 46 40 52 00 00 00                            	mov    DWORD PTR [esi+0x40],0x52
  bf236b:	88 5e 44                                        	mov    BYTE PTR [esi+0x44],bl
  bf236e:	5f                                              	pop    edi
  bf236f:	5e                                              	pop    esi
  bf2370:	5d                                              	pop    ebp
  bf2371:	5b                                              	pop    ebx
  bf2372:	c3                                              	ret
