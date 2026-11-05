# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ab500 (ScriptCore.CASUtils::CASUtils_PartDataGetPresetImpl)
Paired Ghidra pseudocode: 005AB500_ScriptCore_CASUtils_CASUtils_PartDataGetPresetImpl.c
Window: [0x005ab500, 0x005ab680) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ab680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ab500: 83 ec 48 e8 78 49 f0 ff 8b 4c 24 54 8b 54 24 58
005ab510: 6a 00 89 4c 24 1c 8b 4c 24 50 6a 00 89 4c 24 28
005ab520: 6a 00 89 54 24 28 8b 54 24 5c 6a 00 8d 4c 24 10
005ab530: 51 89 54 24 38 8b 10 8b 52 0c 8d 4c 24 2c 51 8b
005ab540: c8 ff d2 84 c0 75 06 33 c0 83 c4 48 c3 8b 0c 24
005ab550: 85 c9 56 74 16 8b 01 8b 50 0c 68 7b 77 4c 03 ff
005ab560: d2 8b f0 85 f6 75 12 8b 4c 24 04 8b 01 8b 50 04
005ab570: ff d2 33 c0 5e 83 c4 48 c3 8b 4c 24 60 b8 54 8e
005ab580: 1c 01 89 44 24 0c 89 44 24 10 8d 44 24 0c 50 51
005ab590: 8b ce c7 44 24 20 2c f9 fd 00 c7 44 24 1c 56 8e
005ab5a0: 1c 01 e8 99 4e 00 00 84 c0 75 2f 8b 16 8b 42 04
005ab5b0: 8b ce ff d0 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1
005ab5c0: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 10 8f f3 ff
005ab5d0: 83 c4 04 33 c0 5e 83 c4 48 c3 6a 01 6a 10 8d 54
005ab5e0: 24 14 52 6a 09 6a 13 8d 4c 24 40 c7 44 24 40 6c
005ab5f0: 88 00 01 66 c7 44 24 4a 13 00 66 c7 44 24 48 0b
005ab600: 00 e8 ba a3 f4 ff c7 44 24 08 00 00 00 00 e8 7d
005ab610: dd 1b 00 8b 10 8b 52 50 8d 4c 24 08 51 8d 4c 24
005ab620: 30 51 8b c8 ff d2 8b 06 8b 50 04 8b ce ff d2 f6
005ab630: 44 24 34 04 8b 74 24 08 c7 44 24 2c f4 a6 fb 00
005ab640: 74 0b 6a 00 8d 4c 24 30 e8 13 a1 f4 ff 8b 4c 24
005ab650: 14 8b 44 24 0c 2b c8 83 e1 fe 83 f9 02 7e 0d 85
005ab660: c0 74 09 50 e8 77 8e f3 ff 83 c4 04 8b c6 5e 83
005ab670: c4 48 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005ab500 <.text+0x1aa500>:
  5ab500:	83 ec 48                                        	sub    esp,0x48
  5ab503:	e8 78 49 f0 ff                                  	call   0x4afe80
  5ab508:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  5ab50c:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
  5ab510:	6a 00                                           	push   0x0
  5ab512:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  5ab516:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
  5ab51a:	6a 00                                           	push   0x0
  5ab51c:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  5ab520:	6a 00                                           	push   0x0
  5ab522:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  5ab526:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
  5ab52a:	6a 00                                           	push   0x0
  5ab52c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5ab530:	51                                              	push   ecx
  5ab531:	89 54 24 38                                     	mov    DWORD PTR [esp+0x38],edx
  5ab535:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ab537:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5ab53a:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  5ab53e:	51                                              	push   ecx
  5ab53f:	8b c8                                           	mov    ecx,eax
  5ab541:	ff d2                                           	call   edx
  5ab543:	84 c0                                           	test   al,al
  5ab545:	75 06                                           	jne    0x5ab54d
  5ab547:	33 c0                                           	xor    eax,eax
  5ab549:	83 c4 48                                        	add    esp,0x48
  5ab54c:	c3                                              	ret
  5ab54d:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
  5ab550:	85 c9                                           	test   ecx,ecx
  5ab552:	56                                              	push   esi
  5ab553:	74 16                                           	je     0x5ab56b
  5ab555:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5ab557:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5ab55a:	68 7b 77 4c 03                                  	push   0x34c777b
  5ab55f:	ff d2                                           	call   edx
  5ab561:	8b f0                                           	mov    esi,eax
  5ab563:	85 f6                                           	test   esi,esi
  5ab565:	75 12                                           	jne    0x5ab579
  5ab567:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5ab56b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5ab56d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5ab570:	ff d2                                           	call   edx
  5ab572:	33 c0                                           	xor    eax,eax
  5ab574:	5e                                              	pop    esi
  5ab575:	83 c4 48                                        	add    esp,0x48
  5ab578:	c3                                              	ret
  5ab579:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  5ab57d:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  5ab582:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  5ab586:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  5ab58a:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  5ab58e:	50                                              	push   eax
  5ab58f:	51                                              	push   ecx
  5ab590:	8b ce                                           	mov    ecx,esi
  5ab592:	c7 44 24 20 2c f9 fd 00                         	mov    DWORD PTR [esp+0x20],0xfdf92c
  5ab59a:	c7 44 24 1c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x1c],0x11c8e56
  5ab5a2:	e8 99 4e 00 00                                  	call   0x5b0440
  5ab5a7:	84 c0                                           	test   al,al
  5ab5a9:	75 2f                                           	jne    0x5ab5da
  5ab5ab:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ab5ad:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5ab5b0:	8b ce                                           	mov    ecx,esi
  5ab5b2:	ff d0                                           	call   eax
  5ab5b4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5ab5b8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  5ab5bc:	2b c8                                           	sub    ecx,eax
  5ab5be:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ab5c1:	83 f9 02                                        	cmp    ecx,0x2
  5ab5c4:	7e 0d                                           	jle    0x5ab5d3
  5ab5c6:	85 c0                                           	test   eax,eax
  5ab5c8:	74 09                                           	je     0x5ab5d3
  5ab5ca:	50                                              	push   eax
  5ab5cb:	e8 10 8f f3 ff                                  	call   0x4e44e0
  5ab5d0:	83 c4 04                                        	add    esp,0x4
  5ab5d3:	33 c0                                           	xor    eax,eax
  5ab5d5:	5e                                              	pop    esi
  5ab5d6:	83 c4 48                                        	add    esp,0x48
  5ab5d9:	c3                                              	ret
  5ab5da:	6a 01                                           	push   0x1
  5ab5dc:	6a 10                                           	push   0x10
  5ab5de:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  5ab5e2:	52                                              	push   edx
  5ab5e3:	6a 09                                           	push   0x9
  5ab5e5:	6a 13                                           	push   0x13
  5ab5e7:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  5ab5eb:	c7 44 24 40 6c 88 00 01                         	mov    DWORD PTR [esp+0x40],0x100886c
  5ab5f3:	66 c7 44 24 4a 13 00                            	mov    WORD PTR [esp+0x4a],0x13
  5ab5fa:	66 c7 44 24 48 0b 00                            	mov    WORD PTR [esp+0x48],0xb
  5ab601:	e8 ba a3 f4 ff                                  	call   0x4f59c0
  5ab606:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  5ab60e:	e8 7d dd 1b 00                                  	call   0x769390
  5ab613:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ab615:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5ab618:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  5ab61c:	51                                              	push   ecx
  5ab61d:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  5ab621:	51                                              	push   ecx
  5ab622:	8b c8                                           	mov    ecx,eax
  5ab624:	ff d2                                           	call   edx
  5ab626:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5ab628:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5ab62b:	8b ce                                           	mov    ecx,esi
  5ab62d:	ff d2                                           	call   edx
  5ab62f:	f6 44 24 34 04                                  	test   BYTE PTR [esp+0x34],0x4
  5ab634:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5ab638:	c7 44 24 2c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x2c],0xfba6f4
  5ab640:	74 0b                                           	je     0x5ab64d
  5ab642:	6a 00                                           	push   0x0
  5ab644:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  5ab648:	e8 13 a1 f4 ff                                  	call   0x4f5760
  5ab64d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5ab651:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  5ab655:	2b c8                                           	sub    ecx,eax
  5ab657:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ab65a:	83 f9 02                                        	cmp    ecx,0x2
  5ab65d:	7e 0d                                           	jle    0x5ab66c
  5ab65f:	85 c0                                           	test   eax,eax
  5ab661:	74 09                                           	je     0x5ab66c
  5ab663:	50                                              	push   eax
  5ab664:	e8 77 8e f3 ff                                  	call   0x4e44e0
  5ab669:	83 c4 04                                        	add    esp,0x4
  5ab66c:	8b c6                                           	mov    eax,esi
  5ab66e:	5e                                              	pop    esi
  5ab66f:	83 c4 48                                        	add    esp,0x48
  5ab672:	c3                                              	ret
  5ab673:	cc                                              	int3
  5ab674:	cc                                              	int3
  5ab675:	cc                                              	int3
  5ab676:	cc                                              	int3
  5ab677:	cc                                              	int3
  5ab678:	cc                                              	int3
  5ab679:	cc                                              	int3
  5ab67a:	cc                                              	int3
  5ab67b:	cc                                              	int3
  5ab67c:	cc                                              	int3
  5ab67d:	cc                                              	int3
  5ab67e:	cc                                              	int3
  5ab67f:	cc                                              	int3
