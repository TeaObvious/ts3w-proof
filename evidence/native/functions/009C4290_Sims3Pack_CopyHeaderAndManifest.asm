# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x009c4290 (Sims3Pack_CopyHeaderAndManifest)
Full Ghidra function-body envelope: 0x009c4290..0x009c43d6 (exclusive end)
Ghidra body ranges: [[009c4290, 009c43d5]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c4290 <.text+0x5c3290>:
  9c4290:	83 ec 10                                        	sub    esp,0x10
  9c4293:	55                                              	push   ebp
  9c4294:	56                                              	push   esi
  9c4295:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
  9c4299:	8b 06                                           	mov    eax,DWORD PTR [esi]
  9c429b:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  9c429e:	57                                              	push   edi
  9c429f:	6a 00                                           	push   0x0
  9c42a1:	8b ce                                           	mov    ecx,esi
  9c42a3:	ff d2                                           	call   edx
  9c42a5:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  9c42a9:	8b e8                                           	mov    ebp,eax
  9c42ab:	33 c0                                           	xor    eax,eax
  9c42ad:	6a 01                                           	push   0x1
  9c42af:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  9c42b3:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  9c42b7:	6a 08                                           	push   0x8
  9c42b9:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  9c42bd:	50                                              	push   eax
  9c42be:	57                                              	push   edi
  9c42bf:	e8 2c 98 b1 ff                                  	call   0x4ddaf0
  9c42c4:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  9c42c8:	51                                              	push   ecx
  9c42c9:	68 dc 09 05 01                                  	push   0x10509dc
  9c42ce:	e8 0d a4 b3 ff                                  	call   0x4fe6e0
  9c42d3:	83 c4 18                                        	add    esp,0x18
  9c42d6:	85 c0                                           	test   eax,eax
  9c42d8:	74 09                                           	je     0x9c42e3
  9c42da:	5f                                              	pop    edi
  9c42db:	5e                                              	pop    esi
  9c42dc:	32 c0                                           	xor    al,al
  9c42de:	5d                                              	pop    ebp
  9c42df:	83 c4 10                                        	add    esp,0x10
  9c42e2:	c3                                              	ret
  9c42e3:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  9c42e7:	52                                              	push   edx
  9c42e8:	57                                              	push   edi
  9c42e9:	e8 a2 95 b1 ff                                  	call   0x4dd890
  9c42ee:	8d 44 24 17                                     	lea    eax,[esp+0x17]
  9c42f2:	50                                              	push   eax
  9c42f3:	57                                              	push   edi
  9c42f4:	e8 97 95 b1 ff                                  	call   0x4dd890
  9c42f9:	6a 01                                           	push   0x1
  9c42fb:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  9c42ff:	51                                              	push   ecx
  9c4300:	57                                              	push   edi
  9c4301:	e8 7a 96 b1 ff                                  	call   0x4dd980
  9c4306:	8b 16                                           	mov    edx,DWORD PTR [esi]
  9c4308:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  9c430b:	83 c4 1c                                        	add    esp,0x1c
  9c430e:	6a 00                                           	push   0x0
  9c4310:	8b ce                                           	mov    ecx,esi
  9c4312:	ff d0                                           	call   eax
  9c4314:	80 7c 24 28 00                                  	cmp    BYTE PTR [esp+0x28],0x0
  9c4319:	75 42                                           	jne    0x9c435d
  9c431b:	6a 01                                           	push   0x1
  9c431d:	6a 07                                           	push   0x7
  9c431f:	68 dc 09 05 01                                  	push   0x10509dc
  9c4324:	56                                              	push   esi
  9c4325:	e8 a6 9e b1 ff                                  	call   0x4de1d0
  9c432a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  9c432c:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
  9c432f:	83 c4 10                                        	add    esp,0x10
  9c4332:	6a 01                                           	push   0x1
  9c4334:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  9c4338:	50                                              	push   eax
  9c4339:	8b ce                                           	mov    ecx,esi
  9c433b:	ff d2                                           	call   edx
  9c433d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  9c433f:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  9c4342:	6a 01                                           	push   0x1
  9c4344:	8d 4c 24 13                                     	lea    ecx,[esp+0x13]
  9c4348:	51                                              	push   ecx
  9c4349:	8b ce                                           	mov    ecx,esi
  9c434b:	ff d2                                           	call   edx
  9c434d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  9c434f:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  9c4352:	6a 04                                           	push   0x4
  9c4354:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  9c4358:	51                                              	push   ecx
  9c4359:	8b ce                                           	mov    ecx,esi
  9c435b:	ff d2                                           	call   edx
  9c435d:	83 7c 24 10 00                                  	cmp    DWORD PTR [esp+0x10],0x0
  9c4362:	76 52                                           	jbe    0x9c43b6
  9c4364:	8b 07                                           	mov    eax,DWORD PTR [edi]
  9c4366:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  9c4369:	8b cf                                           	mov    ecx,edi
  9c436b:	ff d2                                           	call   edx
  9c436d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  9c4371:	3b c8                                           	cmp    ecx,eax
  9c4373:	77 41                                           	ja     0x9c43b6
  9c4375:	53                                              	push   ebx
  9c4376:	6a 00                                           	push   0x0
  9c4378:	6a 00                                           	push   0x0
  9c437a:	6a 00                                           	push   0x0
  9c437c:	6a 00                                           	push   0x0
  9c437e:	68 e4 09 05 01                                  	push   0x10509e4
  9c4383:	51                                              	push   ecx
  9c4384:	e8 77 01 b2 ff                                  	call   0x4e4500
  9c4389:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  9c438d:	83 c4 18                                        	add    esp,0x18
  9c4390:	8b d8                                           	mov    ebx,eax
  9c4392:	8b 07                                           	mov    eax,DWORD PTR [edi]
  9c4394:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  9c4397:	51                                              	push   ecx
  9c4398:	53                                              	push   ebx
  9c4399:	8b cf                                           	mov    ecx,edi
  9c439b:	ff d2                                           	call   edx
  9c439d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  9c43a1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  9c43a3:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  9c43a6:	51                                              	push   ecx
  9c43a7:	53                                              	push   ebx
  9c43a8:	8b ce                                           	mov    ecx,esi
  9c43aa:	ff d2                                           	call   edx
  9c43ac:	53                                              	push   ebx
  9c43ad:	e8 2e 01 b2 ff                                  	call   0x4e44e0
  9c43b2:	83 c4 04                                        	add    esp,0x4
  9c43b5:	5b                                              	pop    ebx
  9c43b6:	8b 06                                           	mov    eax,DWORD PTR [esi]
  9c43b8:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  9c43bb:	6a 00                                           	push   0x0
  9c43bd:	8b ce                                           	mov    ecx,esi
  9c43bf:	ff d2                                           	call   edx
  9c43c1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  9c43c3:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  9c43c6:	6a 00                                           	push   0x0
  9c43c8:	55                                              	push   ebp
  9c43c9:	8b ce                                           	mov    ecx,esi
  9c43cb:	ff d2                                           	call   edx
  9c43cd:	5f                                              	pop    edi
  9c43ce:	5e                                              	pop    esi
  9c43cf:	b0 01                                           	mov    al,0x1
  9c43d1:	5d                                              	pop    ebp
  9c43d2:	83 c4 10                                        	add    esp,0x10
  9c43d5:	c3                                              	ret
