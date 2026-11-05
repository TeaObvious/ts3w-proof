# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10983380 (ContentManager_ExportResource)
Paired Ghidra pseudocode: 10983380_ContentManager_ExportResource.c
Window: [0x10983380, 0x10983c30) (2224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10983c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10983380: 81 ec b4 01 00 00 e8 95 7d bd ff 89 44 24 50 e8
10983390: 9c f4 d9 ff 85 c0 75 09 32 c0 81 c4 b4 01 00 00
109833a0: c3 e8 1a 11 df ff 85 c0 74 ee 55 57 8b bc 24 d0
109833b0: 01 00 00 33 ed 3b fd 74 3e 8b 8c 24 c0 01 00 00
109833c0: 8b 84 24 c4 01 00 00 8b 94 24 c8 01 00 00 89 4c
109833d0: 24 74 89 44 24 78 8b 84 24 cc 01 00 00 8d 4c 24
109833e0: 6c 51 89 54 24 70 89 44 24 74 e8 a1 ee df ff 83
109833f0: c4 04 83 f8 03 74 0b 5f 32 c0 5d 81 c4 b4 01 00
10983400: 00 c3 53 56 bb 44 82 ca 10 55 68 88 43 af 10 c7
10983410: 44 24 78 f8 66 b9 10 89 5c 24 6c 89 5c 24 70 c7
10983420: 44 24 74 45 82 ca 10 e8 54 53 a0 ff 55 68 b0 43
10983430: af 10 8b f0 e8 47 53 a0 ff 83 c4 10 3b f5 74 30
10983440: 3b c5 56 74 16 50 57 8d 54 24 70 68 ec 66 b9 10
10983450: 52 e8 2a bc 68 ff 83 c4 14 eb 28 57 8d 44 24 6c
10983460: 68 e4 66 b9 10 50 e8 15 bc 68 ff 83 c4 10 eb 13
10983470: 57 8d 4c 24 68 68 f4 8e b5 10 51 e8 00 bc 68 ff
10983480: 83 c4 0c 8d 54 24 74 52 8d 8c 24 e0 00 00 00 e8
10983490: 0c a8 77 ff 8b 44 24 64 50 8d 8c 24 f0 00 00 00
109834a0: e8 4b b5 68 ff 8b 4c 24 74 8b 54 24 78 8b 44 24
109834b0: 7c 89 8c 24 9c 01 00 00 8b 8c 24 80 00 00 00 89
109834c0: 8c 24 a8 01 00 00 8b 8c 24 00 02 00 00 89 94 24
109834d0: a0 01 00 00 8b 94 24 e0 01 00 00 6a 10 89 84 24
109834e0: a8 01 00 00 8b 84 24 e8 01 00 00 51 8d 8c 24 d4
109834f0: 00 00 00 89 94 24 a4 01 00 00 89 84 24 a8 01 00
10983500: 00 e8 2a 15 fb ff 8d 94 24 cc 00 00 00 52 8d 8c
10983510: 24 14 01 00 00 e8 a6 00 fb ff 8b 84 24 e8 01 00
10983520: 00 3b c5 bf 46 82 ca 10 0f 8e ce 01 00 00 8b 8c
10983530: 24 f0 01 00 00 8b 94 24 ec 01 00 00 8b f1 2b d1
10983540: 89 74 24 14 89 54 24 1c 89 44 24 18 eb 14 8b ff
10983550: 8b 54 24 1c 8b 74 24 14 bb 44 82 ca 10 bf 46 82
10983560: ca 10 8b 0c 32 66 39 29 c7 44 24 2c b4 66 b9 10
10983570: 89 5c 24 20 89 5c 24 24 89 7c 24 28 c7 44 24 3c
10983580: 84 66 b9 10 89 5c 24 30 89 5c 24 34 89 7c 24 38
10983590: 8b c1 74 08 83 c0 02 66 39 28 75 f8 2b c1 d1 f8
109835a0: 8d 04 41 50 51 8d 4c 24 28 e8 12 c3 69 ff 8b 0e
109835b0: 66 39 29 8b c1 74 08 83 c0 02 66 39 28 75 f8 2b
109835c0: c1 d1 f8 8d 14 41 52 51 8d 4c 24 38 e8 ef c2 69
109835d0: ff 8b 74 24 24 8b 5c 24 20 8b 44 24 2c 2b f3 d1
109835e0: fe 8d 4e 01 51 8d 4c 24 44 89 6c 24 44 89 6c 24
109835f0: 48 89 6c 24 4c 89 44 24 50 e8 12 65 6e ff 8b 7c
10983600: 24 40 03 f6 56 53 57 ff 15 00 b6 aa 10 83 c4 0c
10983610: 8d 54 24 30 03 f7 52 8d 4c 24 54 89 74 24 48 66
10983620: 89 2e e8 f9 6c 6e ff 8b 84 24 70 01 00 00 3b 84
10983630: 24 74 01 00 00 73 2b 8b f0 83 c0 20 3b f5 89 84
10983640: 24 70 01 00 00 74 2d 8d 44 24 40 50 8b ce e8 cd
10983650: 6c 6e ff 8d 4c 24 50 51 8d 4e 10 e8 c0 6c 6e ff
10983660: eb 12 8d 54 24 40 52 50 8d 8c 24 74 01 00 00 e8
10983670: dc 16 e2 ff 8b 4c 24 58 8b 44 24 50 2b c8 83 e1
10983680: fe 83 f9 02 7e 0d 3b c5 74 09 50 e8 00 58 f9 ff
10983690: 83 c4 04 8b 54 24 48 8b 44 24 40 2b d0 83 e2 fe
109836a0: 83 fa 02 7e 0d 3b c5 74 09 50 e8 e1 57 f9 ff 83
109836b0: c4 04 8b 4c 24 38 8b 44 24 30 2b c8 83 e1 fe 83
109836c0: f9 02 7e 0d 3b c5 74 09 50 e8 c2 57 f9 ff 83 c4
109836d0: 04 8b 54 24 28 2b d3 83 e2 fe 83 fa 02 7e 0d 3b
109836e0: dd 74 09 53 e8 a7 57 f9 ff 83 c4 04 83 44 24 14
109836f0: 04 83 6c 24 18 01 0f 85 54 fe ff ff 8b 94 24 f4
10983700: 01 00 00 3b d5 0f 8e 56 02 00 00 8b 84 24 fc 01
10983710: 00 00 8b 8c 24 f8 01 00 00 2b c8 89 44 24 14 89
10983720: 4c 24 1c 89 54 24 18 eb 07 8d a4 24 00 00 00 00
10983730: 8b 44 24 1c 8b 74 24 14 8b 0c 30 66 83 39 00 bd
10983740: 44 82 ca 10 bf 46 82 ca 10 c7 44 24 2c 54 66 b9
10983750: 10 89 6c 24 20 89 6c 24 24 89 7c 24 28 c7 44 24
10983760: 3c 28 66 b9 10 89 6c 24 30 89 6c 24 34 89 7c 24
10983770: 38 8b c1 74 09 83 c0 02 66 83 38 00 75 f7 2b c1
10983780: d1 f8 8d 14 41 52 51 8d 4c 24 28 e8 30 c1 69 ff
10983790: 8b 0e 66 83 39 00 8b c1 74 0f 8d 9b 00 00 00 00
109837a0: 83 c0 02 66 83 38 00 75 f7 2b c1 d1 f8 8d 04 41
109837b0: 50 51 8d 4c 24 38 e8 05 c1 69 ff 8b 74 24 24 8b
109837c0: 5c 24 20 8b 4c 24 2c 2b f3 d1 fe 8d 46 01 83 f8
109837d0: 01 89 4c 24 4c 76 26 68 e7 00 00 00 68 d0 df aa
109837e0: 10 6a 00 6a 00 8d 3c 00 51 57 e8 c1 56 f9 ff 8b
109837f0: e8 8d 0c 2f 83 c4 18 89 4c 24 48 eb 04 89 7c 24
10983800: 48 03 f6 56 53 55 89 6c 24 4c ff 15 00 b6 aa 10
10983810: 8b 4c 24 48 03 f5 89 74 24 50 66 c7 06 00 00 8b
10983820: 74 24 40 2b 74 24 3c 83 c4 0c d1 fe 8d 46 01 83
10983830: f8 01 89 4c 24 5c 76 21 68 e7 00 00 00 68 d0 df
10983840: aa 10 6a 00 6a 00 8d 1c 00 51 53 e8 60 56 f9 ff
10983850: 8b f8 83 c4 18 03 df eb 0a bf 44 82 ca 10 bb 46
10983860: 82 ca 10 8b 54 24 30 03 f6 56 52 57 89 5c 24 64
10983870: 89 7c 24 5c ff 15 00 b6 aa 10 03 f7 66 c7 06 00
10983880: 00 8b 84 24 8c 01 00 00 83 c4 0c 3b 84 24 84 01
10983890: 00 00 89 74 24 54 73 2b 8b f0 83 c0 20 85 f6 89
109838a0: 84 24 80 01 00 00 74 39 8d 44 24 40 50 8b ce e8
109838b0: 6c 6a 6e ff 8d 4c 24 50 51 8d 4e 10 e8 5f 6a 6e
109838c0: ff eb 1e 8d 54 24 40 52 50 8d 8c 24 84 01 00 00
109838d0: e8 7b 14 e2 ff 8b 5c 24 58 8b 7c 24 50 8b 6c 24
109838e0: 40 2b df 83 e3 fe 83 fb 02 7e 0d 85 ff 74 09 57
109838f0: e8 9b 55 f9 ff 83 c4 04 8b 44 24 48 2b c5 83 e0
10983900: fe 83 f8 02 7e 0d 85 ed 74 09 55 e8 80 55 f9 ff
10983910: 83 c4 04 8b 4c 24 38 8b 44 24 30 2b c8 83 e1 fe
10983920: 83 f9 02 7e 0d 85 c0 74 09 50 e8 61 55 f9 ff 83
10983930: c4 04 8b 54 24 28 8b 44 24 20 2b d0 83 e2 fe 83
10983940: fa 02 7e 0d 85 c0 74 09 50 e8 42 55 f9 ff 83 c4
10983950: 04 83 44 24 14 04 83 6c 24 18 01 0f 85 cf fd ff
10983960: ff 8b ac 24 08 02 00 00 33 db 33 ff 3b eb 0f 84
10983970: b9 00 00 00 53 53 53 53 68 f8 65 b9 10 6a 2c e8
10983980: 2c 55 f9 ff 83 c4 18 3b c3 74 1f 68 f8 65 b9 10
10983990: 53 53 8b c8 e8 f7 06 f9 ff 8b f0 3b f3 74 0b 8b
109839a0: 06 8b 50 04 8b ce ff d2 8b fe d9 e8 51 d9 1c 24
109839b0: 8b cf 6a 01 e8 b7 00 f9 ff 8b 4c 24 60 8b 01 8b
109839c0: 40 70 8d 54 24 60 52 8d 54 24 20 52 55 ff d0 8b
109839d0: 44 24 60 8b 4c 24 1c 8b 17 8b 52 38 50 51 8b cf
109839e0: ff d2 84 c0 8b cf 75 3c 8b 07 8b 50 08 ff d2 8d
109839f0: 8c 24 dc 00 00 00 e8 e5 bd 77 ff 8b 4c 24 6c 8b
10983a00: 44 24 64 2b c8 83 f9 01 7e 0d 3b c3 74 09 50 e8
10983a10: 7c 54 f9 ff 83 c4 04 5e 5b 5f 32 c0 5d 81 c4 b4
10983a20: 01 00 00 c3 8b 17 8b 42 28 53 53 ff d0 33 ed 3b
10983a30: fb 74 27 53 53 53 53 68 cc 65 b9 10 6a 18 e8 6d
10983a40: 54 f9 ff 83 c4 18 3b c3 74 0e 6a 01 57 8b c8 e8
10983a50: 4c 88 c4 ff 8b e8 eb 02 33 ed 8b b4 24 10 02 00
10983a60: 00 3b f3 89 ac 24 0c 01 00 00 74 66 8b 84 24 0c
10983a70: 02 00 00 3b c3 7e 5b 8b d8 8d a4 24 00 00 00 00
10983a80: 8d 4c 24 20 51 8b ce e8 34 a0 bd ff 8b 84 24 b8
10983a90: 01 00 00 3b 84 24 bc 01 00 00 73 1c 8b c8 83 c0
10983aa0: 10 85 c9 89 84 24 b8 01 00 00 74 1e 8d 54 24 20
10983ab0: 52 e8 0a fb fa ff eb 12 8d 4c 24 20 51 50 8d 8c
10983ac0: 24 bc 01 00 00 e8 06 06 d0 ff 83 c6 10 83 eb 01
10983ad0: 75 ae b8 44 82 ca 10 b9 46 82 ca 10 89 8c 24 a0
10983ae0: 00 00 00 89 8c 24 b0 00 00 00 53 8d 8c 24 bc 00
10983af0: 00 00 89 9c 24 88 00 00 00 89 9c 24 8c 00 00 00
10983b00: 89 9c 24 90 00 00 00 89 9c 24 94 00 00 00 c6 84
10983b10: 24 98 00 00 00 01 c6 84 24 99 00 00 00 01 c7 84
10983b20: 24 a8 00 00 00 24 b8 ab 10 89 84 24 9c 00 00 00
10983b30: 89 84 24 a0 00 00 00 c7 84 24 b8 00 00 00 00 b8
10983b40: ab 10 89 84 24 ac 00 00 00 89 84 24 b0 00 00 00
10983b50: e8 2b fa fa ff 8b 94 24 04 02 00 00 53 8d 84 24
10983b60: 88 00 00 00 50 8d 8c 24 e4 00 00 00 51 89 94 24
10983b70: d4 00 00 00 e8 97 96 e1 ff 83 c4 0c 3b eb 88 44
10983b80: 24 13 74 10 8b cd e8 75 6d c4 ff 55 e8 ff 52 f9
10983b90: ff 83 c4 04 8b 94 24 b0 00 00 00 8b 84 24 a8 00
10983ba0: 00 00 2b d0 83 e2 fe 83 fa 02 7e 0d 3b c3 74 09
10983bb0: 50 e8 da 52 f9 ff 83 c4 04 8b 8c 24 a0 00 00 00
10983bc0: 8b 84 24 98 00 00 00 2b c8 83 e1 fe 83 f9 02 7e
10983bd0: 0d 3b c3 74 09 50 e8 b5 52 f9 ff 83 c4 04 3b fb
10983be0: 74 09 8b 17 8b 42 08 8b cf ff d0 8d 8c 24 dc 00
10983bf0: 00 00 e8 e9 bb 77 ff 8b 4c 24 6c 8b 44 24 64 2b
10983c00: c8 83 f9 01 7e 0d 3b c3 74 09 50 e8 80 52 f9 ff
10983c10: 83 c4 04 8a 44 24 13 5e 5b 5f 5d 81 c4 b4 01 00
10983c20: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10983380 <.text+0x982380>:
10983380:	81 ec b4 01 00 00                               	sub    esp,0x1b4
10983386:	e8 95 7d bd ff                                  	call   0x1055b120
1098338b:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
1098338f:	e8 9c f4 d9 ff                                  	call   0x10722830
10983394:	85 c0                                           	test   eax,eax
10983396:	75 09                                           	jne    0x109833a1
10983398:	32 c0                                           	xor    al,al
1098339a:	81 c4 b4 01 00 00                               	add    esp,0x1b4
109833a0:	c3                                              	ret
109833a1:	e8 1a 11 df ff                                  	call   0x107744c0
109833a6:	85 c0                                           	test   eax,eax
109833a8:	74 ee                                           	je     0x10983398
109833aa:	55                                              	push   ebp
109833ab:	57                                              	push   edi
109833ac:	8b bc 24 d0 01 00 00                            	mov    edi,DWORD PTR [esp+0x1d0]
109833b3:	33 ed                                           	xor    ebp,ebp
109833b5:	3b fd                                           	cmp    edi,ebp
109833b7:	74 3e                                           	je     0x109833f7
109833b9:	8b 8c 24 c0 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1c0]
109833c0:	8b 84 24 c4 01 00 00                            	mov    eax,DWORD PTR [esp+0x1c4]
109833c7:	8b 94 24 c8 01 00 00                            	mov    edx,DWORD PTR [esp+0x1c8]
109833ce:	89 4c 24 74                                     	mov    DWORD PTR [esp+0x74],ecx
109833d2:	89 44 24 78                                     	mov    DWORD PTR [esp+0x78],eax
109833d6:	8b 84 24 cc 01 00 00                            	mov    eax,DWORD PTR [esp+0x1cc]
109833dd:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
109833e1:	51                                              	push   ecx
109833e2:	89 54 24 70                                     	mov    DWORD PTR [esp+0x70],edx
109833e6:	89 44 24 74                                     	mov    DWORD PTR [esp+0x74],eax
109833ea:	e8 a1 ee df ff                                  	call   0x10782290
109833ef:	83 c4 04                                        	add    esp,0x4
109833f2:	83 f8 03                                        	cmp    eax,0x3
109833f5:	74 0b                                           	je     0x10983402
109833f7:	5f                                              	pop    edi
109833f8:	32 c0                                           	xor    al,al
109833fa:	5d                                              	pop    ebp
109833fb:	81 c4 b4 01 00 00                               	add    esp,0x1b4
10983401:	c3                                              	ret
10983402:	53                                              	push   ebx
10983403:	56                                              	push   esi
10983404:	bb 44 82 ca 10                                  	mov    ebx,0x10ca8244
10983409:	55                                              	push   ebp
1098340a:	68 88 43 af 10                                  	push   0x10af4388
1098340f:	c7 44 24 78 f8 66 b9 10                         	mov    DWORD PTR [esp+0x78],0x10b966f8
10983417:	89 5c 24 6c                                     	mov    DWORD PTR [esp+0x6c],ebx
1098341b:	89 5c 24 70                                     	mov    DWORD PTR [esp+0x70],ebx
1098341f:	c7 44 24 74 45 82 ca 10                         	mov    DWORD PTR [esp+0x74],0x10ca8245
10983427:	e8 54 53 a0 ff                                  	call   0x10388780
1098342c:	55                                              	push   ebp
1098342d:	68 b0 43 af 10                                  	push   0x10af43b0
10983432:	8b f0                                           	mov    esi,eax
10983434:	e8 47 53 a0 ff                                  	call   0x10388780
10983439:	83 c4 10                                        	add    esp,0x10
1098343c:	3b f5                                           	cmp    esi,ebp
1098343e:	74 30                                           	je     0x10983470
10983440:	3b c5                                           	cmp    eax,ebp
10983442:	56                                              	push   esi
10983443:	74 16                                           	je     0x1098345b
10983445:	50                                              	push   eax
10983446:	57                                              	push   edi
10983447:	8d 54 24 70                                     	lea    edx,[esp+0x70]
1098344b:	68 ec 66 b9 10                                  	push   0x10b966ec
10983450:	52                                              	push   edx
10983451:	e8 2a bc 68 ff                                  	call   0x1000f080
10983456:	83 c4 14                                        	add    esp,0x14
10983459:	eb 28                                           	jmp    0x10983483
1098345b:	57                                              	push   edi
1098345c:	8d 44 24 6c                                     	lea    eax,[esp+0x6c]
10983460:	68 e4 66 b9 10                                  	push   0x10b966e4
10983465:	50                                              	push   eax
10983466:	e8 15 bc 68 ff                                  	call   0x1000f080
1098346b:	83 c4 10                                        	add    esp,0x10
1098346e:	eb 13                                           	jmp    0x10983483
10983470:	57                                              	push   edi
10983471:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10983475:	68 f4 8e b5 10                                  	push   0x10b58ef4
1098347a:	51                                              	push   ecx
1098347b:	e8 00 bc 68 ff                                  	call   0x1000f080
10983480:	83 c4 0c                                        	add    esp,0xc
10983483:	8d 54 24 74                                     	lea    edx,[esp+0x74]
10983487:	52                                              	push   edx
10983488:	8d 8c 24 e0 00 00 00                            	lea    ecx,[esp+0xe0]
1098348f:	e8 0c a8 77 ff                                  	call   0x100fdca0
10983494:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
10983498:	50                                              	push   eax
10983499:	8d 8c 24 f0 00 00 00                            	lea    ecx,[esp+0xf0]
109834a0:	e8 4b b5 68 ff                                  	call   0x1000e9f0
109834a5:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
109834a9:	8b 54 24 78                                     	mov    edx,DWORD PTR [esp+0x78]
109834ad:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
109834b1:	89 8c 24 9c 01 00 00                            	mov    DWORD PTR [esp+0x19c],ecx
109834b8:	8b 8c 24 80 00 00 00                            	mov    ecx,DWORD PTR [esp+0x80]
109834bf:	89 8c 24 a8 01 00 00                            	mov    DWORD PTR [esp+0x1a8],ecx
109834c6:	8b 8c 24 00 02 00 00                            	mov    ecx,DWORD PTR [esp+0x200]
109834cd:	89 94 24 a0 01 00 00                            	mov    DWORD PTR [esp+0x1a0],edx
109834d4:	8b 94 24 e0 01 00 00                            	mov    edx,DWORD PTR [esp+0x1e0]
109834db:	6a 10                                           	push   0x10
109834dd:	89 84 24 a8 01 00 00                            	mov    DWORD PTR [esp+0x1a8],eax
109834e4:	8b 84 24 e8 01 00 00                            	mov    eax,DWORD PTR [esp+0x1e8]
109834eb:	51                                              	push   ecx
109834ec:	8d 8c 24 d4 00 00 00                            	lea    ecx,[esp+0xd4]
109834f3:	89 94 24 a4 01 00 00                            	mov    DWORD PTR [esp+0x1a4],edx
109834fa:	89 84 24 a8 01 00 00                            	mov    DWORD PTR [esp+0x1a8],eax
10983501:	e8 2a 15 fb ff                                  	call   0x10934a30
10983506:	8d 94 24 cc 00 00 00                            	lea    edx,[esp+0xcc]
1098350d:	52                                              	push   edx
1098350e:	8d 8c 24 14 01 00 00                            	lea    ecx,[esp+0x114]
10983515:	e8 a6 00 fb ff                                  	call   0x109335c0
1098351a:	8b 84 24 e8 01 00 00                            	mov    eax,DWORD PTR [esp+0x1e8]
10983521:	3b c5                                           	cmp    eax,ebp
10983523:	bf 46 82 ca 10                                  	mov    edi,0x10ca8246
10983528:	0f 8e ce 01 00 00                               	jle    0x109836fc
1098352e:	8b 8c 24 f0 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1f0]
10983535:	8b 94 24 ec 01 00 00                            	mov    edx,DWORD PTR [esp+0x1ec]
1098353c:	8b f1                                           	mov    esi,ecx
1098353e:	2b d1                                           	sub    edx,ecx
10983540:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
10983544:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
10983548:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1098354c:	eb 14                                           	jmp    0x10983562
1098354e:	8b ff                                           	mov    edi,edi
10983550:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10983554:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
10983558:	bb 44 82 ca 10                                  	mov    ebx,0x10ca8244
1098355d:	bf 46 82 ca 10                                  	mov    edi,0x10ca8246
10983562:	8b 0c 32                                        	mov    ecx,DWORD PTR [edx+esi*1]
10983565:	66 39 29                                        	cmp    WORD PTR [ecx],bp
10983568:	c7 44 24 2c b4 66 b9 10                         	mov    DWORD PTR [esp+0x2c],0x10b966b4
10983570:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
10983574:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
10983578:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
1098357c:	c7 44 24 3c 84 66 b9 10                         	mov    DWORD PTR [esp+0x3c],0x10b96684
10983584:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
10983588:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
1098358c:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
10983590:	8b c1                                           	mov    eax,ecx
10983592:	74 08                                           	je     0x1098359c
10983594:	83 c0 02                                        	add    eax,0x2
10983597:	66 39 28                                        	cmp    WORD PTR [eax],bp
1098359a:	75 f8                                           	jne    0x10983594
1098359c:	2b c1                                           	sub    eax,ecx
1098359e:	d1 f8                                           	sar    eax,1
109835a0:	8d 04 41                                        	lea    eax,[ecx+eax*2]
109835a3:	50                                              	push   eax
109835a4:	51                                              	push   ecx
109835a5:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
109835a9:	e8 12 c3 69 ff                                  	call   0x1001f8c0
109835ae:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
109835b0:	66 39 29                                        	cmp    WORD PTR [ecx],bp
109835b3:	8b c1                                           	mov    eax,ecx
109835b5:	74 08                                           	je     0x109835bf
109835b7:	83 c0 02                                        	add    eax,0x2
109835ba:	66 39 28                                        	cmp    WORD PTR [eax],bp
109835bd:	75 f8                                           	jne    0x109835b7
109835bf:	2b c1                                           	sub    eax,ecx
109835c1:	d1 f8                                           	sar    eax,1
109835c3:	8d 14 41                                        	lea    edx,[ecx+eax*2]
109835c6:	52                                              	push   edx
109835c7:	51                                              	push   ecx
109835c8:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
109835cc:	e8 ef c2 69 ff                                  	call   0x1001f8c0
109835d1:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
109835d5:	8b 5c 24 20                                     	mov    ebx,DWORD PTR [esp+0x20]
109835d9:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
109835dd:	2b f3                                           	sub    esi,ebx
109835df:	d1 fe                                           	sar    esi,1
109835e1:	8d 4e 01                                        	lea    ecx,[esi+0x1]
109835e4:	51                                              	push   ecx
109835e5:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
109835e9:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
109835ed:	89 6c 24 48                                     	mov    DWORD PTR [esp+0x48],ebp
109835f1:	89 6c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebp
109835f5:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
109835f9:	e8 12 65 6e ff                                  	call   0x10069b10
109835fe:	8b 7c 24 40                                     	mov    edi,DWORD PTR [esp+0x40]
10983602:	03 f6                                           	add    esi,esi
10983604:	56                                              	push   esi
10983605:	53                                              	push   ebx
10983606:	57                                              	push   edi
10983607:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
1098360d:	83 c4 0c                                        	add    esp,0xc
10983610:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10983614:	03 f7                                           	add    esi,edi
10983616:	52                                              	push   edx
10983617:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
1098361b:	89 74 24 48                                     	mov    DWORD PTR [esp+0x48],esi
1098361f:	66 89 2e                                        	mov    WORD PTR [esi],bp
10983622:	e8 f9 6c 6e ff                                  	call   0x1006a320
10983627:	8b 84 24 70 01 00 00                            	mov    eax,DWORD PTR [esp+0x170]
1098362e:	3b 84 24 74 01 00 00                            	cmp    eax,DWORD PTR [esp+0x174]
10983635:	73 2b                                           	jae    0x10983662
10983637:	8b f0                                           	mov    esi,eax
10983639:	83 c0 20                                        	add    eax,0x20
1098363c:	3b f5                                           	cmp    esi,ebp
1098363e:	89 84 24 70 01 00 00                            	mov    DWORD PTR [esp+0x170],eax
10983645:	74 2d                                           	je     0x10983674
10983647:	8d 44 24 40                                     	lea    eax,[esp+0x40]
1098364b:	50                                              	push   eax
1098364c:	8b ce                                           	mov    ecx,esi
1098364e:	e8 cd 6c 6e ff                                  	call   0x1006a320
10983653:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10983657:	51                                              	push   ecx
10983658:	8d 4e 10                                        	lea    ecx,[esi+0x10]
1098365b:	e8 c0 6c 6e ff                                  	call   0x1006a320
10983660:	eb 12                                           	jmp    0x10983674
10983662:	8d 54 24 40                                     	lea    edx,[esp+0x40]
10983666:	52                                              	push   edx
10983667:	50                                              	push   eax
10983668:	8d 8c 24 74 01 00 00                            	lea    ecx,[esp+0x174]
1098366f:	e8 dc 16 e2 ff                                  	call   0x107a4d50
10983674:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
10983678:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
1098367c:	2b c8                                           	sub    ecx,eax
1098367e:	83 e1 fe                                        	and    ecx,0xfffffffe
10983681:	83 f9 02                                        	cmp    ecx,0x2
10983684:	7e 0d                                           	jle    0x10983693
10983686:	3b c5                                           	cmp    eax,ebp
10983688:	74 09                                           	je     0x10983693
1098368a:	50                                              	push   eax
1098368b:	e8 00 58 f9 ff                                  	call   0x10918e90
10983690:	83 c4 04                                        	add    esp,0x4
10983693:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
10983697:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1098369b:	2b d0                                           	sub    edx,eax
1098369d:	83 e2 fe                                        	and    edx,0xfffffffe
109836a0:	83 fa 02                                        	cmp    edx,0x2
109836a3:	7e 0d                                           	jle    0x109836b2
109836a5:	3b c5                                           	cmp    eax,ebp
109836a7:	74 09                                           	je     0x109836b2
109836a9:	50                                              	push   eax
109836aa:	e8 e1 57 f9 ff                                  	call   0x10918e90
109836af:	83 c4 04                                        	add    esp,0x4
109836b2:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
109836b6:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
109836ba:	2b c8                                           	sub    ecx,eax
109836bc:	83 e1 fe                                        	and    ecx,0xfffffffe
109836bf:	83 f9 02                                        	cmp    ecx,0x2
109836c2:	7e 0d                                           	jle    0x109836d1
109836c4:	3b c5                                           	cmp    eax,ebp
109836c6:	74 09                                           	je     0x109836d1
109836c8:	50                                              	push   eax
109836c9:	e8 c2 57 f9 ff                                  	call   0x10918e90
109836ce:	83 c4 04                                        	add    esp,0x4
109836d1:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
109836d5:	2b d3                                           	sub    edx,ebx
109836d7:	83 e2 fe                                        	and    edx,0xfffffffe
109836da:	83 fa 02                                        	cmp    edx,0x2
109836dd:	7e 0d                                           	jle    0x109836ec
109836df:	3b dd                                           	cmp    ebx,ebp
109836e1:	74 09                                           	je     0x109836ec
109836e3:	53                                              	push   ebx
109836e4:	e8 a7 57 f9 ff                                  	call   0x10918e90
109836e9:	83 c4 04                                        	add    esp,0x4
109836ec:	83 44 24 14 04                                  	add    DWORD PTR [esp+0x14],0x4
109836f1:	83 6c 24 18 01                                  	sub    DWORD PTR [esp+0x18],0x1
109836f6:	0f 85 54 fe ff ff                               	jne    0x10983550
109836fc:	8b 94 24 f4 01 00 00                            	mov    edx,DWORD PTR [esp+0x1f4]
10983703:	3b d5                                           	cmp    edx,ebp
10983705:	0f 8e 56 02 00 00                               	jle    0x10983961
1098370b:	8b 84 24 fc 01 00 00                            	mov    eax,DWORD PTR [esp+0x1fc]
10983712:	8b 8c 24 f8 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1f8]
10983719:	2b c8                                           	sub    ecx,eax
1098371b:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1098371f:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
10983723:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
10983727:	eb 07                                           	jmp    0x10983730
10983729:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10983730:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10983734:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
10983738:	8b 0c 30                                        	mov    ecx,DWORD PTR [eax+esi*1]
1098373b:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
1098373f:	bd 44 82 ca 10                                  	mov    ebp,0x10ca8244
10983744:	bf 46 82 ca 10                                  	mov    edi,0x10ca8246
10983749:	c7 44 24 2c 54 66 b9 10                         	mov    DWORD PTR [esp+0x2c],0x10b96654
10983751:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
10983755:	89 6c 24 24                                     	mov    DWORD PTR [esp+0x24],ebp
10983759:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
1098375d:	c7 44 24 3c 28 66 b9 10                         	mov    DWORD PTR [esp+0x3c],0x10b96628
10983765:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
10983769:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
1098376d:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
10983771:	8b c1                                           	mov    eax,ecx
10983773:	74 09                                           	je     0x1098377e
10983775:	83 c0 02                                        	add    eax,0x2
10983778:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
1098377c:	75 f7                                           	jne    0x10983775
1098377e:	2b c1                                           	sub    eax,ecx
10983780:	d1 f8                                           	sar    eax,1
10983782:	8d 14 41                                        	lea    edx,[ecx+eax*2]
10983785:	52                                              	push   edx
10983786:	51                                              	push   ecx
10983787:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1098378b:	e8 30 c1 69 ff                                  	call   0x1001f8c0
10983790:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
10983792:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
10983796:	8b c1                                           	mov    eax,ecx
10983798:	74 0f                                           	je     0x109837a9
1098379a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
109837a0:	83 c0 02                                        	add    eax,0x2
109837a3:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
109837a7:	75 f7                                           	jne    0x109837a0
109837a9:	2b c1                                           	sub    eax,ecx
109837ab:	d1 f8                                           	sar    eax,1
109837ad:	8d 04 41                                        	lea    eax,[ecx+eax*2]
109837b0:	50                                              	push   eax
109837b1:	51                                              	push   ecx
109837b2:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
109837b6:	e8 05 c1 69 ff                                  	call   0x1001f8c0
109837bb:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
109837bf:	8b 5c 24 20                                     	mov    ebx,DWORD PTR [esp+0x20]
109837c3:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
109837c7:	2b f3                                           	sub    esi,ebx
109837c9:	d1 fe                                           	sar    esi,1
109837cb:	8d 46 01                                        	lea    eax,[esi+0x1]
109837ce:	83 f8 01                                        	cmp    eax,0x1
109837d1:	89 4c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ecx
109837d5:	76 26                                           	jbe    0x109837fd
109837d7:	68 e7 00 00 00                                  	push   0xe7
109837dc:	68 d0 df aa 10                                  	push   0x10aadfd0
109837e1:	6a 00                                           	push   0x0
109837e3:	6a 00                                           	push   0x0
109837e5:	8d 3c 00                                        	lea    edi,[eax+eax*1]
109837e8:	51                                              	push   ecx
109837e9:	57                                              	push   edi
109837ea:	e8 c1 56 f9 ff                                  	call   0x10918eb0
109837ef:	8b e8                                           	mov    ebp,eax
109837f1:	8d 0c 2f                                        	lea    ecx,[edi+ebp*1]
109837f4:	83 c4 18                                        	add    esp,0x18
109837f7:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
109837fb:	eb 04                                           	jmp    0x10983801
109837fd:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
10983801:	03 f6                                           	add    esi,esi
10983803:	56                                              	push   esi
10983804:	53                                              	push   ebx
10983805:	55                                              	push   ebp
10983806:	89 6c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebp
1098380a:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
10983810:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
10983814:	03 f5                                           	add    esi,ebp
10983816:	89 74 24 50                                     	mov    DWORD PTR [esp+0x50],esi
1098381a:	66 c7 06 00 00                                  	mov    WORD PTR [esi],0x0
1098381f:	8b 74 24 40                                     	mov    esi,DWORD PTR [esp+0x40]
10983823:	2b 74 24 3c                                     	sub    esi,DWORD PTR [esp+0x3c]
10983827:	83 c4 0c                                        	add    esp,0xc
1098382a:	d1 fe                                           	sar    esi,1
1098382c:	8d 46 01                                        	lea    eax,[esi+0x1]
1098382f:	83 f8 01                                        	cmp    eax,0x1
10983832:	89 4c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ecx
10983836:	76 21                                           	jbe    0x10983859
10983838:	68 e7 00 00 00                                  	push   0xe7
1098383d:	68 d0 df aa 10                                  	push   0x10aadfd0
10983842:	6a 00                                           	push   0x0
10983844:	6a 00                                           	push   0x0
10983846:	8d 1c 00                                        	lea    ebx,[eax+eax*1]
10983849:	51                                              	push   ecx
1098384a:	53                                              	push   ebx
1098384b:	e8 60 56 f9 ff                                  	call   0x10918eb0
10983850:	8b f8                                           	mov    edi,eax
10983852:	83 c4 18                                        	add    esp,0x18
10983855:	03 df                                           	add    ebx,edi
10983857:	eb 0a                                           	jmp    0x10983863
10983859:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
1098385e:	bb 46 82 ca 10                                  	mov    ebx,0x10ca8246
10983863:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10983867:	03 f6                                           	add    esi,esi
10983869:	56                                              	push   esi
1098386a:	52                                              	push   edx
1098386b:	57                                              	push   edi
1098386c:	89 5c 24 64                                     	mov    DWORD PTR [esp+0x64],ebx
10983870:	89 7c 24 5c                                     	mov    DWORD PTR [esp+0x5c],edi
10983874:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
1098387a:	03 f7                                           	add    esi,edi
1098387c:	66 c7 06 00 00                                  	mov    WORD PTR [esi],0x0
10983881:	8b 84 24 8c 01 00 00                            	mov    eax,DWORD PTR [esp+0x18c]
10983888:	83 c4 0c                                        	add    esp,0xc
1098388b:	3b 84 24 84 01 00 00                            	cmp    eax,DWORD PTR [esp+0x184]
10983892:	89 74 24 54                                     	mov    DWORD PTR [esp+0x54],esi
10983896:	73 2b                                           	jae    0x109838c3
10983898:	8b f0                                           	mov    esi,eax
1098389a:	83 c0 20                                        	add    eax,0x20
1098389d:	85 f6                                           	test   esi,esi
1098389f:	89 84 24 80 01 00 00                            	mov    DWORD PTR [esp+0x180],eax
109838a6:	74 39                                           	je     0x109838e1
109838a8:	8d 44 24 40                                     	lea    eax,[esp+0x40]
109838ac:	50                                              	push   eax
109838ad:	8b ce                                           	mov    ecx,esi
109838af:	e8 6c 6a 6e ff                                  	call   0x1006a320
109838b4:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
109838b8:	51                                              	push   ecx
109838b9:	8d 4e 10                                        	lea    ecx,[esi+0x10]
109838bc:	e8 5f 6a 6e ff                                  	call   0x1006a320
109838c1:	eb 1e                                           	jmp    0x109838e1
109838c3:	8d 54 24 40                                     	lea    edx,[esp+0x40]
109838c7:	52                                              	push   edx
109838c8:	50                                              	push   eax
109838c9:	8d 8c 24 84 01 00 00                            	lea    ecx,[esp+0x184]
109838d0:	e8 7b 14 e2 ff                                  	call   0x107a4d50
109838d5:	8b 5c 24 58                                     	mov    ebx,DWORD PTR [esp+0x58]
109838d9:	8b 7c 24 50                                     	mov    edi,DWORD PTR [esp+0x50]
109838dd:	8b 6c 24 40                                     	mov    ebp,DWORD PTR [esp+0x40]
109838e1:	2b df                                           	sub    ebx,edi
109838e3:	83 e3 fe                                        	and    ebx,0xfffffffe
109838e6:	83 fb 02                                        	cmp    ebx,0x2
109838e9:	7e 0d                                           	jle    0x109838f8
109838eb:	85 ff                                           	test   edi,edi
109838ed:	74 09                                           	je     0x109838f8
109838ef:	57                                              	push   edi
109838f0:	e8 9b 55 f9 ff                                  	call   0x10918e90
109838f5:	83 c4 04                                        	add    esp,0x4
109838f8:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
109838fc:	2b c5                                           	sub    eax,ebp
109838fe:	83 e0 fe                                        	and    eax,0xfffffffe
10983901:	83 f8 02                                        	cmp    eax,0x2
10983904:	7e 0d                                           	jle    0x10983913
10983906:	85 ed                                           	test   ebp,ebp
10983908:	74 09                                           	je     0x10983913
1098390a:	55                                              	push   ebp
1098390b:	e8 80 55 f9 ff                                  	call   0x10918e90
10983910:	83 c4 04                                        	add    esp,0x4
10983913:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10983917:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1098391b:	2b c8                                           	sub    ecx,eax
1098391d:	83 e1 fe                                        	and    ecx,0xfffffffe
10983920:	83 f9 02                                        	cmp    ecx,0x2
10983923:	7e 0d                                           	jle    0x10983932
10983925:	85 c0                                           	test   eax,eax
10983927:	74 09                                           	je     0x10983932
10983929:	50                                              	push   eax
1098392a:	e8 61 55 f9 ff                                  	call   0x10918e90
1098392f:	83 c4 04                                        	add    esp,0x4
10983932:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10983936:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1098393a:	2b d0                                           	sub    edx,eax
1098393c:	83 e2 fe                                        	and    edx,0xfffffffe
1098393f:	83 fa 02                                        	cmp    edx,0x2
10983942:	7e 0d                                           	jle    0x10983951
10983944:	85 c0                                           	test   eax,eax
10983946:	74 09                                           	je     0x10983951
10983948:	50                                              	push   eax
10983949:	e8 42 55 f9 ff                                  	call   0x10918e90
1098394e:	83 c4 04                                        	add    esp,0x4
10983951:	83 44 24 14 04                                  	add    DWORD PTR [esp+0x14],0x4
10983956:	83 6c 24 18 01                                  	sub    DWORD PTR [esp+0x18],0x1
1098395b:	0f 85 cf fd ff ff                               	jne    0x10983730
10983961:	8b ac 24 08 02 00 00                            	mov    ebp,DWORD PTR [esp+0x208]
10983968:	33 db                                           	xor    ebx,ebx
1098396a:	33 ff                                           	xor    edi,edi
1098396c:	3b eb                                           	cmp    ebp,ebx
1098396e:	0f 84 b9 00 00 00                               	je     0x10983a2d
10983974:	53                                              	push   ebx
10983975:	53                                              	push   ebx
10983976:	53                                              	push   ebx
10983977:	53                                              	push   ebx
10983978:	68 f8 65 b9 10                                  	push   0x10b965f8
1098397d:	6a 2c                                           	push   0x2c
1098397f:	e8 2c 55 f9 ff                                  	call   0x10918eb0
10983984:	83 c4 18                                        	add    esp,0x18
10983987:	3b c3                                           	cmp    eax,ebx
10983989:	74 1f                                           	je     0x109839aa
1098398b:	68 f8 65 b9 10                                  	push   0x10b965f8
10983990:	53                                              	push   ebx
10983991:	53                                              	push   ebx
10983992:	8b c8                                           	mov    ecx,eax
10983994:	e8 f7 06 f9 ff                                  	call   0x10914090
10983999:	8b f0                                           	mov    esi,eax
1098399b:	3b f3                                           	cmp    esi,ebx
1098399d:	74 0b                                           	je     0x109839aa
1098399f:	8b 06                                           	mov    eax,DWORD PTR [esi]
109839a1:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
109839a4:	8b ce                                           	mov    ecx,esi
109839a6:	ff d2                                           	call   edx
109839a8:	8b fe                                           	mov    edi,esi
109839aa:	d9 e8                                           	fld1
109839ac:	51                                              	push   ecx
109839ad:	d9 1c 24                                        	fstp   DWORD PTR [esp]
109839b0:	8b cf                                           	mov    ecx,edi
109839b2:	6a 01                                           	push   0x1
109839b4:	e8 b7 00 f9 ff                                  	call   0x10913a70
109839b9:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
109839bd:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109839bf:	8b 40 70                                        	mov    eax,DWORD PTR [eax+0x70]
109839c2:	8d 54 24 60                                     	lea    edx,[esp+0x60]
109839c6:	52                                              	push   edx
109839c7:	8d 54 24 20                                     	lea    edx,[esp+0x20]
109839cb:	52                                              	push   edx
109839cc:	55                                              	push   ebp
109839cd:	ff d0                                           	call   eax
109839cf:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
109839d3:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109839d7:	8b 17                                           	mov    edx,DWORD PTR [edi]
109839d9:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
109839dc:	50                                              	push   eax
109839dd:	51                                              	push   ecx
109839de:	8b cf                                           	mov    ecx,edi
109839e0:	ff d2                                           	call   edx
109839e2:	84 c0                                           	test   al,al
109839e4:	8b cf                                           	mov    ecx,edi
109839e6:	75 3c                                           	jne    0x10983a24
109839e8:	8b 07                                           	mov    eax,DWORD PTR [edi]
109839ea:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
109839ed:	ff d2                                           	call   edx
109839ef:	8d 8c 24 dc 00 00 00                            	lea    ecx,[esp+0xdc]
109839f6:	e8 e5 bd 77 ff                                  	call   0x100ff7e0
109839fb:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
109839ff:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
10983a03:	2b c8                                           	sub    ecx,eax
10983a05:	83 f9 01                                        	cmp    ecx,0x1
10983a08:	7e 0d                                           	jle    0x10983a17
10983a0a:	3b c3                                           	cmp    eax,ebx
10983a0c:	74 09                                           	je     0x10983a17
10983a0e:	50                                              	push   eax
10983a0f:	e8 7c 54 f9 ff                                  	call   0x10918e90
10983a14:	83 c4 04                                        	add    esp,0x4
10983a17:	5e                                              	pop    esi
10983a18:	5b                                              	pop    ebx
10983a19:	5f                                              	pop    edi
10983a1a:	32 c0                                           	xor    al,al
10983a1c:	5d                                              	pop    ebp
10983a1d:	81 c4 b4 01 00 00                               	add    esp,0x1b4
10983a23:	c3                                              	ret
10983a24:	8b 17                                           	mov    edx,DWORD PTR [edi]
10983a26:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
10983a29:	53                                              	push   ebx
10983a2a:	53                                              	push   ebx
10983a2b:	ff d0                                           	call   eax
10983a2d:	33 ed                                           	xor    ebp,ebp
10983a2f:	3b fb                                           	cmp    edi,ebx
10983a31:	74 27                                           	je     0x10983a5a
10983a33:	53                                              	push   ebx
10983a34:	53                                              	push   ebx
10983a35:	53                                              	push   ebx
10983a36:	53                                              	push   ebx
10983a37:	68 cc 65 b9 10                                  	push   0x10b965cc
10983a3c:	6a 18                                           	push   0x18
10983a3e:	e8 6d 54 f9 ff                                  	call   0x10918eb0
10983a43:	83 c4 18                                        	add    esp,0x18
10983a46:	3b c3                                           	cmp    eax,ebx
10983a48:	74 0e                                           	je     0x10983a58
10983a4a:	6a 01                                           	push   0x1
10983a4c:	57                                              	push   edi
10983a4d:	8b c8                                           	mov    ecx,eax
10983a4f:	e8 4c 88 c4 ff                                  	call   0x105cc2a0
10983a54:	8b e8                                           	mov    ebp,eax
10983a56:	eb 02                                           	jmp    0x10983a5a
10983a58:	33 ed                                           	xor    ebp,ebp
10983a5a:	8b b4 24 10 02 00 00                            	mov    esi,DWORD PTR [esp+0x210]
10983a61:	3b f3                                           	cmp    esi,ebx
10983a63:	89 ac 24 0c 01 00 00                            	mov    DWORD PTR [esp+0x10c],ebp
10983a6a:	74 66                                           	je     0x10983ad2
10983a6c:	8b 84 24 0c 02 00 00                            	mov    eax,DWORD PTR [esp+0x20c]
10983a73:	3b c3                                           	cmp    eax,ebx
10983a75:	7e 5b                                           	jle    0x10983ad2
10983a77:	8b d8                                           	mov    ebx,eax
10983a79:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10983a80:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10983a84:	51                                              	push   ecx
10983a85:	8b ce                                           	mov    ecx,esi
10983a87:	e8 34 a0 bd ff                                  	call   0x1055dac0
10983a8c:	8b 84 24 b8 01 00 00                            	mov    eax,DWORD PTR [esp+0x1b8]
10983a93:	3b 84 24 bc 01 00 00                            	cmp    eax,DWORD PTR [esp+0x1bc]
10983a9a:	73 1c                                           	jae    0x10983ab8
10983a9c:	8b c8                                           	mov    ecx,eax
10983a9e:	83 c0 10                                        	add    eax,0x10
10983aa1:	85 c9                                           	test   ecx,ecx
10983aa3:	89 84 24 b8 01 00 00                            	mov    DWORD PTR [esp+0x1b8],eax
10983aaa:	74 1e                                           	je     0x10983aca
10983aac:	8d 54 24 20                                     	lea    edx,[esp+0x20]
10983ab0:	52                                              	push   edx
10983ab1:	e8 0a fb fa ff                                  	call   0x109335c0
10983ab6:	eb 12                                           	jmp    0x10983aca
10983ab8:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10983abc:	51                                              	push   ecx
10983abd:	50                                              	push   eax
10983abe:	8d 8c 24 bc 01 00 00                            	lea    ecx,[esp+0x1bc]
10983ac5:	e8 06 06 d0 ff                                  	call   0x106840d0
10983aca:	83 c6 10                                        	add    esi,0x10
10983acd:	83 eb 01                                        	sub    ebx,0x1
10983ad0:	75 ae                                           	jne    0x10983a80
10983ad2:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10983ad7:	b9 46 82 ca 10                                  	mov    ecx,0x10ca8246
10983adc:	89 8c 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],ecx
10983ae3:	89 8c 24 b0 00 00 00                            	mov    DWORD PTR [esp+0xb0],ecx
10983aea:	53                                              	push   ebx
10983aeb:	8d 8c 24 bc 00 00 00                            	lea    ecx,[esp+0xbc]
10983af2:	89 9c 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],ebx
10983af9:	89 9c 24 8c 00 00 00                            	mov    DWORD PTR [esp+0x8c],ebx
10983b00:	89 9c 24 90 00 00 00                            	mov    DWORD PTR [esp+0x90],ebx
10983b07:	89 9c 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],ebx
10983b0e:	c6 84 24 98 00 00 00 01                         	mov    BYTE PTR [esp+0x98],0x1
10983b16:	c6 84 24 99 00 00 00 01                         	mov    BYTE PTR [esp+0x99],0x1
10983b1e:	c7 84 24 a8 00 00 00 24 b8 ab 10                	mov    DWORD PTR [esp+0xa8],0x10abb824
10983b29:	89 84 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],eax
10983b30:	89 84 24 a0 00 00 00                            	mov    DWORD PTR [esp+0xa0],eax
10983b37:	c7 84 24 b8 00 00 00 00 b8 ab 10                	mov    DWORD PTR [esp+0xb8],0x10abb800
10983b42:	89 84 24 ac 00 00 00                            	mov    DWORD PTR [esp+0xac],eax
10983b49:	89 84 24 b0 00 00 00                            	mov    DWORD PTR [esp+0xb0],eax
10983b50:	e8 2b fa fa ff                                  	call   0x10933580
10983b55:	8b 94 24 04 02 00 00                            	mov    edx,DWORD PTR [esp+0x204]
10983b5c:	53                                              	push   ebx
10983b5d:	8d 84 24 88 00 00 00                            	lea    eax,[esp+0x88]
10983b64:	50                                              	push   eax
10983b65:	8d 8c 24 e4 00 00 00                            	lea    ecx,[esp+0xe4]
10983b6c:	51                                              	push   ecx
10983b6d:	89 94 24 d4 00 00 00                            	mov    DWORD PTR [esp+0xd4],edx
10983b74:	e8 97 96 e1 ff                                  	call   0x1079d210
10983b79:	83 c4 0c                                        	add    esp,0xc
10983b7c:	3b eb                                           	cmp    ebp,ebx
10983b7e:	88 44 24 13                                     	mov    BYTE PTR [esp+0x13],al
10983b82:	74 10                                           	je     0x10983b94
10983b84:	8b cd                                           	mov    ecx,ebp
10983b86:	e8 75 6d c4 ff                                  	call   0x105ca900
10983b8b:	55                                              	push   ebp
10983b8c:	e8 ff 52 f9 ff                                  	call   0x10918e90
10983b91:	83 c4 04                                        	add    esp,0x4
10983b94:	8b 94 24 b0 00 00 00                            	mov    edx,DWORD PTR [esp+0xb0]
10983b9b:	8b 84 24 a8 00 00 00                            	mov    eax,DWORD PTR [esp+0xa8]
10983ba2:	2b d0                                           	sub    edx,eax
10983ba4:	83 e2 fe                                        	and    edx,0xfffffffe
10983ba7:	83 fa 02                                        	cmp    edx,0x2
10983baa:	7e 0d                                           	jle    0x10983bb9
10983bac:	3b c3                                           	cmp    eax,ebx
10983bae:	74 09                                           	je     0x10983bb9
10983bb0:	50                                              	push   eax
10983bb1:	e8 da 52 f9 ff                                  	call   0x10918e90
10983bb6:	83 c4 04                                        	add    esp,0x4
10983bb9:	8b 8c 24 a0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa0]
10983bc0:	8b 84 24 98 00 00 00                            	mov    eax,DWORD PTR [esp+0x98]
10983bc7:	2b c8                                           	sub    ecx,eax
10983bc9:	83 e1 fe                                        	and    ecx,0xfffffffe
10983bcc:	83 f9 02                                        	cmp    ecx,0x2
10983bcf:	7e 0d                                           	jle    0x10983bde
10983bd1:	3b c3                                           	cmp    eax,ebx
10983bd3:	74 09                                           	je     0x10983bde
10983bd5:	50                                              	push   eax
10983bd6:	e8 b5 52 f9 ff                                  	call   0x10918e90
10983bdb:	83 c4 04                                        	add    esp,0x4
10983bde:	3b fb                                           	cmp    edi,ebx
10983be0:	74 09                                           	je     0x10983beb
10983be2:	8b 17                                           	mov    edx,DWORD PTR [edi]
10983be4:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10983be7:	8b cf                                           	mov    ecx,edi
10983be9:	ff d0                                           	call   eax
10983beb:	8d 8c 24 dc 00 00 00                            	lea    ecx,[esp+0xdc]
10983bf2:	e8 e9 bb 77 ff                                  	call   0x100ff7e0
10983bf7:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
10983bfb:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
10983bff:	2b c8                                           	sub    ecx,eax
10983c01:	83 f9 01                                        	cmp    ecx,0x1
10983c04:	7e 0d                                           	jle    0x10983c13
10983c06:	3b c3                                           	cmp    eax,ebx
10983c08:	74 09                                           	je     0x10983c13
10983c0a:	50                                              	push   eax
10983c0b:	e8 80 52 f9 ff                                  	call   0x10918e90
10983c10:	83 c4 04                                        	add    esp,0x4
10983c13:	8a 44 24 13                                     	mov    al,BYTE PTR [esp+0x13]
10983c17:	5e                                              	pop    esi
10983c18:	5b                                              	pop    ebx
10983c19:	5f                                              	pop    edi
10983c1a:	5d                                              	pop    ebp
10983c1b:	81 c4 b4 01 00 00                               	add    esp,0x1b4
10983c21:	c3                                              	ret
10983c22:	cc                                              	int3
10983c23:	cc                                              	int3
10983c24:	cc                                              	int3
10983c25:	cc                                              	int3
10983c26:	cc                                              	int3
10983c27:	cc                                              	int3
10983c28:	cc                                              	int3
10983c29:	cc                                              	int3
10983c2a:	cc                                              	int3
10983c2b:	cc                                              	int3
10983c2c:	cc                                              	int3
10983c2d:	cc                                              	int3
10983c2e:	cc                                              	int3
10983c2f:	cc                                              	int3
