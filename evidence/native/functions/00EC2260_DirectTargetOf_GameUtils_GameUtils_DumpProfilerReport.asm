# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec2260 (DirectTargetOf_GameUtils_GameUtils_DumpProfilerReport)
Paired Ghidra pseudocode: 00EC2260_DirectTargetOf_GameUtils_GameUtils_DumpProfilerReport.c
Window: [0x00ec2260, 0x00ec2380) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec2380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec2260: 83 ec 24 56 e8 87 a2 58 ff 89 44 24 04 e8 1e 71
00ec2270: 8a ff 8b f0 85 f6 0f 84 f1 00 00 00 53 55 57 6a
00ec2280: 00 6a 00 6a 00 6a 00 68 f0 3b 00 01 6a 20 e8 6d
00ec2290: 22 62 ff 8b 6c 24 54 8b f8 83 c4 18 85 ff 74 1f
00ec22a0: 8b 06 8b 90 18 01 00 00 55 8b ce ff d2 52 50 8b
00ec22b0: 44 24 44 50 8b cf e8 05 fd ff ff 8b f8 eb 02 33
00ec22c0: ff 8b 17 8b 42 04 8b cf ff d0 8b 1e 8b 93 18 01
00ec22d0: 00 00 6a 00 8d 4c 24 18 b8 01 00 00 00 51 8b ce
00ec22e0: c7 44 24 1c f4 a6 fb 00 88 44 24 2c 66 89 44 24
00ec22f0: 26 66 c7 44 24 24 00 00 ff d2 52 50 8b 83 30 01
00ec2300: 00 00 55 8b ce ff d0 8b 1e 8b 93 18 01 00 00 6a
00ec2310: 00 55 6a ff 8b ce ff d2 52 50 8b 83 20 01 00 00
00ec2320: 8b ce ff d0 8b 4c 24 10 8b 11 8b 52 1c 8d 47 04
00ec2330: 50 6a 00 57 68 3f 25 0b 07 ff d2 8b 07 8b 50 08
00ec2340: 8b cf ff d2 8b 06 8b 90 1c 01 00 00 8b ce ff d2
00ec2350: f6 44 24 1c 04 5f 5d c7 44 24 0c f4 a6 fb 00 5b
00ec2360: 74 0b 6a 00 8d 4c 24 0c e8 f3 33 63 ff 5e 83 c4
00ec2370: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec2260 <.text+0xac1260>:
  ec2260:	83 ec 24                                        	sub    esp,0x24
  ec2263:	56                                              	push   esi
  ec2264:	e8 87 a2 58 ff                                  	call   0x44c4f0
  ec2269:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  ec226d:	e8 1e 71 8a ff                                  	call   0x769390
  ec2272:	8b f0                                           	mov    esi,eax
  ec2274:	85 f6                                           	test   esi,esi
  ec2276:	0f 84 f1 00 00 00                               	je     0xec236d
  ec227c:	53                                              	push   ebx
  ec227d:	55                                              	push   ebp
  ec227e:	57                                              	push   edi
  ec227f:	6a 00                                           	push   0x0
  ec2281:	6a 00                                           	push   0x0
  ec2283:	6a 00                                           	push   0x0
  ec2285:	6a 00                                           	push   0x0
  ec2287:	68 f0 3b 00 01                                  	push   0x1003bf0
  ec228c:	6a 20                                           	push   0x20
  ec228e:	e8 6d 22 62 ff                                  	call   0x4e4500
  ec2293:	8b 6c 24 54                                     	mov    ebp,DWORD PTR [esp+0x54]
  ec2297:	8b f8                                           	mov    edi,eax
  ec2299:	83 c4 18                                        	add    esp,0x18
  ec229c:	85 ff                                           	test   edi,edi
  ec229e:	74 1f                                           	je     0xec22bf
  ec22a0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec22a2:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  ec22a8:	55                                              	push   ebp
  ec22a9:	8b ce                                           	mov    ecx,esi
  ec22ab:	ff d2                                           	call   edx
  ec22ad:	52                                              	push   edx
  ec22ae:	50                                              	push   eax
  ec22af:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  ec22b3:	50                                              	push   eax
  ec22b4:	8b cf                                           	mov    ecx,edi
  ec22b6:	e8 05 fd ff ff                                  	call   0xec1fc0
  ec22bb:	8b f8                                           	mov    edi,eax
  ec22bd:	eb 02                                           	jmp    0xec22c1
  ec22bf:	33 ff                                           	xor    edi,edi
  ec22c1:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec22c3:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ec22c6:	8b cf                                           	mov    ecx,edi
  ec22c8:	ff d0                                           	call   eax
  ec22ca:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
  ec22cc:	8b 93 18 01 00 00                               	mov    edx,DWORD PTR [ebx+0x118]
  ec22d2:	6a 00                                           	push   0x0
  ec22d4:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ec22d8:	b8 01 00 00 00                                  	mov    eax,0x1
  ec22dd:	51                                              	push   ecx
  ec22de:	8b ce                                           	mov    ecx,esi
  ec22e0:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  ec22e8:	88 44 24 2c                                     	mov    BYTE PTR [esp+0x2c],al
  ec22ec:	66 89 44 24 26                                  	mov    WORD PTR [esp+0x26],ax
  ec22f1:	66 c7 44 24 24 00 00                            	mov    WORD PTR [esp+0x24],0x0
  ec22f8:	ff d2                                           	call   edx
  ec22fa:	52                                              	push   edx
  ec22fb:	50                                              	push   eax
  ec22fc:	8b 83 30 01 00 00                               	mov    eax,DWORD PTR [ebx+0x130]
  ec2302:	55                                              	push   ebp
  ec2303:	8b ce                                           	mov    ecx,esi
  ec2305:	ff d0                                           	call   eax
  ec2307:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
  ec2309:	8b 93 18 01 00 00                               	mov    edx,DWORD PTR [ebx+0x118]
  ec230f:	6a 00                                           	push   0x0
  ec2311:	55                                              	push   ebp
  ec2312:	6a ff                                           	push   0xffffffff
  ec2314:	8b ce                                           	mov    ecx,esi
  ec2316:	ff d2                                           	call   edx
  ec2318:	52                                              	push   edx
  ec2319:	50                                              	push   eax
  ec231a:	8b 83 20 01 00 00                               	mov    eax,DWORD PTR [ebx+0x120]
  ec2320:	8b ce                                           	mov    ecx,esi
  ec2322:	ff d0                                           	call   eax
  ec2324:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ec2328:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ec232a:	8b 52 1c                                        	mov    edx,DWORD PTR [edx+0x1c]
  ec232d:	8d 47 04                                        	lea    eax,[edi+0x4]
  ec2330:	50                                              	push   eax
  ec2331:	6a 00                                           	push   0x0
  ec2333:	57                                              	push   edi
  ec2334:	68 3f 25 0b 07                                  	push   0x70b253f
  ec2339:	ff d2                                           	call   edx
  ec233b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  ec233d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  ec2340:	8b cf                                           	mov    ecx,edi
  ec2342:	ff d2                                           	call   edx
  ec2344:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec2346:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  ec234c:	8b ce                                           	mov    ecx,esi
  ec234e:	ff d2                                           	call   edx
  ec2350:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
  ec2355:	5f                                              	pop    edi
  ec2356:	5d                                              	pop    ebp
  ec2357:	c7 44 24 0c f4 a6 fb 00                         	mov    DWORD PTR [esp+0xc],0xfba6f4
  ec235f:	5b                                              	pop    ebx
  ec2360:	74 0b                                           	je     0xec236d
  ec2362:	6a 00                                           	push   0x0
  ec2364:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  ec2368:	e8 f3 33 63 ff                                  	call   0x4f5760
  ec236d:	5e                                              	pop    esi
  ec236e:	83 c4 24                                        	add    esp,0x24
  ec2371:	c3                                              	ret
  ec2372:	cc                                              	int3
  ec2373:	cc                                              	int3
  ec2374:	cc                                              	int3
  ec2375:	cc                                              	int3
  ec2376:	cc                                              	int3
  ec2377:	cc                                              	int3
  ec2378:	cc                                              	int3
  ec2379:	cc                                              	int3
  ec237a:	cc                                              	int3
  ec237b:	cc                                              	int3
  ec237c:	cc                                              	int3
  ec237d:	cc                                              	int3
  ec237e:	cc                                              	int3
  ec237f:	cc                                              	int3
