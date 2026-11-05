# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b4f0 (ScriptCore.UIManager::UIManager_SetupScrollbarsImpl)
Paired Ghidra pseudocode: 0077B4F0_ScriptCore_UIManager_UIManager_SetupScrollbarsImpl.c
Window: [0x0077b4f0, 0x0077b670) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b4f0: 51 e8 9a de fe ff 8b 4c 24 08 8b d1 81 e2 00 00
0077b500: 00 ff 81 fa 00 00 00 30 0f 85 5e 01 00 00 8b 10
0077b510: 51 8b c8 8b 82 cc 00 00 00 ff d0 85 c0 0f 84 49
0077b520: 01 00 00 8b 10 57 8b c8 8b 42 0c 68 18 82 ee ee
0077b530: ff d0 8b f8 85 ff 0f 84 2f 01 00 00 8b 17 8b 92
0077b540: d0 00 00 00 56 8d 44 24 10 50 8b cf ff d2 8b 07
0077b550: 8b 90 d4 00 00 00 8d 4c 24 08 51 8b cf ff d2 8b
0077b560: 4c 24 10 3b 08 74 6c a1 94 ba fb 00 03 c8 74 40
0077b570: 8b 11 8b 42 0c 68 85 c8 f0 2e ff d0 8b f0 85 f6
0077b580: 74 2e 8b 16 8b 42 18 8b ce ff d0 8b 16 83 f8 01
0077b590: 8b 42 10 8b ce 75 09 ff d0 68 84 42 f2 8e eb 07
0077b5a0: ff d0 68 83 42 f2 8e 8b 10 8b c8 8b 42 54 ff d0
0077b5b0: 8b 4c 24 10 8b 11 8b 07 8d 4c 24 08 89 54 24 10
0077b5c0: 8b 90 d4 00 00 00 51 8b cf ff d2 8b 4c 24 10 3b
0077b5d0: 08 75 94 8b 07 8b 90 10 01 00 00 6a 00 8b cf ff
0077b5e0: d2 8b f0 85 f6 74 25 8b 46 04 8b 50 14 8d 4e 04
0077b5f0: ff d2 3d 59 ec 4d 03 74 4c 8b 07 8b 90 10 01 00
0077b600: 00 56 8b cf ff d2 8b f0 85 f6 75 db 6a 00 68 6c
0077b610: f0 00 01 6a 04 6a 18 e8 94 9a d8 ff 83 c4 10 85
0077b620: c0 74 38 8b 54 24 18 8b 4c 24 14 52 51 8b c8 e8
0077b630: 8c 14 07 00 8b 17 50 8b 82 08 01 00 00 8b cf ff
0077b640: d0 5e 5f 59 c3 8b 44 24 18 8b 4c 24 14 50 51 57
0077b650: 8b ce e8 89 16 07 00 5e 5f 59 c3 8b 17 33 c0 50
0077b660: 8b 82 08 01 00 00 8b cf ff d0 5e 5f 59 c3 cc cc

LINEAR DISASSEMBLY
0077b4f0 <.text+0x37a4f0>:
  77b4f0:	51                                              	push   ecx
  77b4f1:	e8 9a de fe ff                                  	call   0x769390
  77b4f6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77b4fa:	8b d1                                           	mov    edx,ecx
  77b4fc:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b502:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b508:	0f 85 5e 01 00 00                               	jne    0x77b66c
  77b50e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b510:	51                                              	push   ecx
  77b511:	8b c8                                           	mov    ecx,eax
  77b513:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b519:	ff d0                                           	call   eax
  77b51b:	85 c0                                           	test   eax,eax
  77b51d:	0f 84 49 01 00 00                               	je     0x77b66c
  77b523:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b525:	57                                              	push   edi
  77b526:	8b c8                                           	mov    ecx,eax
  77b528:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b52b:	68 18 82 ee ee                                  	push   0xeeee8218
  77b530:	ff d0                                           	call   eax
  77b532:	8b f8                                           	mov    edi,eax
  77b534:	85 ff                                           	test   edi,edi
  77b536:	0f 84 2f 01 00 00                               	je     0x77b66b
  77b53c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77b53e:	8b 92 d0 00 00 00                               	mov    edx,DWORD PTR [edx+0xd0]
  77b544:	56                                              	push   esi
  77b545:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  77b549:	50                                              	push   eax
  77b54a:	8b cf                                           	mov    ecx,edi
  77b54c:	ff d2                                           	call   edx
  77b54e:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77b550:	8b 90 d4 00 00 00                               	mov    edx,DWORD PTR [eax+0xd4]
  77b556:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  77b55a:	51                                              	push   ecx
  77b55b:	8b cf                                           	mov    ecx,edi
  77b55d:	ff d2                                           	call   edx
  77b55f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  77b563:	3b 08                                           	cmp    ecx,DWORD PTR [eax]
  77b565:	74 6c                                           	je     0x77b5d3
  77b567:	a1 94 ba fb 00                                  	mov    eax,ds:0xfbba94
  77b56c:	03 c8                                           	add    ecx,eax
  77b56e:	74 40                                           	je     0x77b5b0
  77b570:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  77b572:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b575:	68 85 c8 f0 2e                                  	push   0x2ef0c885
  77b57a:	ff d0                                           	call   eax
  77b57c:	8b f0                                           	mov    esi,eax
  77b57e:	85 f6                                           	test   esi,esi
  77b580:	74 2e                                           	je     0x77b5b0
  77b582:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77b584:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  77b587:	8b ce                                           	mov    ecx,esi
  77b589:	ff d0                                           	call   eax
  77b58b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77b58d:	83 f8 01                                        	cmp    eax,0x1
  77b590:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  77b593:	8b ce                                           	mov    ecx,esi
  77b595:	75 09                                           	jne    0x77b5a0
  77b597:	ff d0                                           	call   eax
  77b599:	68 84 42 f2 8e                                  	push   0x8ef24284
  77b59e:	eb 07                                           	jmp    0x77b5a7
  77b5a0:	ff d0                                           	call   eax
  77b5a2:	68 83 42 f2 8e                                  	push   0x8ef24283
  77b5a7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b5a9:	8b c8                                           	mov    ecx,eax
  77b5ab:	8b 42 54                                        	mov    eax,DWORD PTR [edx+0x54]
  77b5ae:	ff d0                                           	call   eax
  77b5b0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  77b5b4:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  77b5b6:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77b5b8:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  77b5bc:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  77b5c0:	8b 90 d4 00 00 00                               	mov    edx,DWORD PTR [eax+0xd4]
  77b5c6:	51                                              	push   ecx
  77b5c7:	8b cf                                           	mov    ecx,edi
  77b5c9:	ff d2                                           	call   edx
  77b5cb:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  77b5cf:	3b 08                                           	cmp    ecx,DWORD PTR [eax]
  77b5d1:	75 94                                           	jne    0x77b567
  77b5d3:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77b5d5:	8b 90 10 01 00 00                               	mov    edx,DWORD PTR [eax+0x110]
  77b5db:	6a 00                                           	push   0x0
  77b5dd:	8b cf                                           	mov    ecx,edi
  77b5df:	ff d2                                           	call   edx
  77b5e1:	8b f0                                           	mov    esi,eax
  77b5e3:	85 f6                                           	test   esi,esi
  77b5e5:	74 25                                           	je     0x77b60c
  77b5e7:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  77b5ea:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  77b5ed:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  77b5f0:	ff d2                                           	call   edx
  77b5f2:	3d 59 ec 4d 03                                  	cmp    eax,0x34dec59
  77b5f7:	74 4c                                           	je     0x77b645
  77b5f9:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77b5fb:	8b 90 10 01 00 00                               	mov    edx,DWORD PTR [eax+0x110]
  77b601:	56                                              	push   esi
  77b602:	8b cf                                           	mov    ecx,edi
  77b604:	ff d2                                           	call   edx
  77b606:	8b f0                                           	mov    esi,eax
  77b608:	85 f6                                           	test   esi,esi
  77b60a:	75 db                                           	jne    0x77b5e7
  77b60c:	6a 00                                           	push   0x0
  77b60e:	68 6c f0 00 01                                  	push   0x100f06c
  77b613:	6a 04                                           	push   0x4
  77b615:	6a 18                                           	push   0x18
  77b617:	e8 94 9a d8 ff                                  	call   0x5050b0
  77b61c:	83 c4 10                                        	add    esp,0x10
  77b61f:	85 c0                                           	test   eax,eax
  77b621:	74 38                                           	je     0x77b65b
  77b623:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  77b627:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77b62b:	52                                              	push   edx
  77b62c:	51                                              	push   ecx
  77b62d:	8b c8                                           	mov    ecx,eax
  77b62f:	e8 8c 14 07 00                                  	call   0x7ecac0
  77b634:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77b636:	50                                              	push   eax
  77b637:	8b 82 08 01 00 00                               	mov    eax,DWORD PTR [edx+0x108]
  77b63d:	8b cf                                           	mov    ecx,edi
  77b63f:	ff d0                                           	call   eax
  77b641:	5e                                              	pop    esi
  77b642:	5f                                              	pop    edi
  77b643:	59                                              	pop    ecx
  77b644:	c3                                              	ret
  77b645:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  77b649:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77b64d:	50                                              	push   eax
  77b64e:	51                                              	push   ecx
  77b64f:	57                                              	push   edi
  77b650:	8b ce                                           	mov    ecx,esi
  77b652:	e8 89 16 07 00                                  	call   0x7ecce0
  77b657:	5e                                              	pop    esi
  77b658:	5f                                              	pop    edi
  77b659:	59                                              	pop    ecx
  77b65a:	c3                                              	ret
  77b65b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77b65d:	33 c0                                           	xor    eax,eax
  77b65f:	50                                              	push   eax
  77b660:	8b 82 08 01 00 00                               	mov    eax,DWORD PTR [edx+0x108]
  77b666:	8b cf                                           	mov    ecx,edi
  77b668:	ff d0                                           	call   eax
  77b66a:	5e                                              	pop    esi
  77b66b:	5f                                              	pop    edi
  77b66c:	59                                              	pop    ecx
  77b66d:	c3                                              	ret
  77b66e:	cc                                              	int3
  77b66f:	cc                                              	int3
