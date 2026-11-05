# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109874a0 (PackageTool_Add)
Paired Ghidra pseudocode: 109874A0_PackageTool_Add.c
Window: [0x109874a0, 0x10987780) (736 bytes; stop exclusive)
Next defined Ghidra entry: 0x10987780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109874a0: 81 ec 5c 02 00 00 55 8d 44 24 04 56 8b c8 33 ed
109874b0: 68 98 03 00 00 89 6c 24 14 89 44 24 10 89 4c 24
109874c0: 0c e8 1a 1b f9 ff 83 c4 04 3b c5 74 0d 55 55 8b
109874d0: c8 e8 fa 7a f5 ff 8b f0 eb 02 33 f6 8b 4c 24 10
109874e0: 3b f1 74 3f 8b 44 24 0c 8d 54 24 08 3b c2 75 0e
109874f0: 3b cd 74 29 8b 01 8b 10 6a 01 ff d2 eb 1f 8b 4c
10987500: 24 08 89 41 04 8b 54 24 0c 8b 44 24 08 89 02 8d
10987510: 4c 24 08 8b d1 89 4c 24 0c 89 54 24 08 8b ce 89
10987520: 4c 24 10 8b 01 8b 50 04 ff d2 84 c0 0f 84 00 02
10987530: 00 00 8b 4c 24 10 8b 01 8b 94 24 68 02 00 00 8b
10987540: 40 2c 52 ff d0 84 c0 0f 84 e5 01 00 00 8b 4c 24
10987550: 10 8b 11 8b 42 18 55 6a 06 6a 03 ff d0 84 c0 0f
10987560: 84 cd 01 00 00 8b 8c 24 70 02 00 00 51 8d 4c 24
10987570: 40 e8 ba 92 f8 ff 55 6a 01 6a 06 6a 01 8d 4c 24
10987580: 4c e8 fa 8d f8 ff 84 c0 75 28 8b 4c 24 10 8b 11
10987590: 8b 42 08 ff d0 8d 4c 24 3c e8 f2 92 f8 ff 8d 4c
109875a0: 24 08 e8 f9 fb ff ff 5e 32 c0 5d 81 c4 5c 02 00
109875b0: 00 c3 53 8d 4c 24 40 e8 74 8f f8 ff 8d 4c 24 1c
109875c0: 51 8b f0 56 8d 4c 24 38 c7 44 24 24 cc 6a b9 10
109875d0: e8 9b 1b b0 ff 8b 5c 24 30 56 53 8d 4c 24 48 e8
109875e0: 2c 91 f8 ff 8b 94 24 70 02 00 00 55 6a ff 52 8d
109875f0: 44 24 3c 50 89 6c 24 30 89 6c 24 34 89 6c 24 38
10987600: 89 6c 24 3c e8 17 f9 f9 ff 50 8d 4c 24 34 51 e8
10987610: dc 5a e0 ff 8b 54 24 50 8b 44 24 48 2b d0 83 c4
10987620: 18 83 fa 01 7e 0d 3b c5 74 09 50 e8 60 18 f9 ff
10987630: 83 c4 04 8b 4c 24 14 89 6c 24 18 8b 01 8b 40 40
10987640: 57 8d 54 24 24 52 ff d0 8b 4c 24 1c 3b cd 8b 7c
10987650: 24 18 74 0b 89 6c 24 1c 8b 11 8b 42 08 ff d0 8b
10987660: 17 8b 52 34 55 6a 01 6a 02 6a 02 8d 44 24 2c 50
10987670: 8d 4c 24 38 51 8b cf ff d2 84 c0 5f 74 6f 8b 4c
10987680: 24 18 8b 01 8b 50 18 ff d2 8b 10 56 8b c8 8b 42
10987690: 38 53 ff d0 8b 4c 24 18 8b 11 8b 42 20 ff d0 8d
109876a0: 4c 24 40 e8 18 8e f8 ff 8b 4c 24 14 8b 11 8b 42
109876b0: 08 ff d0 8b 4c 24 18 3b cd 74 07 8b 11 8b 42 08
109876c0: ff d0 3b dd 74 09 53 e8 c4 17 f9 ff 83 c4 04 8d
109876d0: 4c 24 40 e8 b8 91 f8 ff 8d 4c 24 0c e8 bf fa ff
109876e0: ff 5b 5e b0 01 5d 81 c4 5c 02 00 00 c3 8b 4c 24
109876f0: 14 8b 11 8b 42 08 ff d0 8b 4c 24 18 3b cd 74 07
10987700: 8b 11 8b 42 08 ff d0 3b dd 74 09 53 e8 7f 17 f9
10987710: ff 83 c4 04 8d 4c 24 40 e8 73 91 f8 ff 8d 4c 24
10987720: 0c e8 7a fa ff ff 5b 5e 32 c0 5d 81 c4 5c 02 00
10987730: 00 c3 8b 4c 24 10 3b cd 74 30 8b 44 24 0c 8d 54
10987740: 24 08 3b c2 75 13 8b 01 8b 10 6a 01 ff d2 5e 32
10987750: c0 5d 81 c4 5c 02 00 00 c3 8b 4c 24 08 89 41 04
10987760: 8b 54 24 0c 8b 44 24 08 89 02 5e 32 c0 5d 81 c4
10987770: 5c 02 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109874a0 <.text+0x9864a0>:
109874a0:	81 ec 5c 02 00 00                               	sub    esp,0x25c
109874a6:	55                                              	push   ebp
109874a7:	8d 44 24 04                                     	lea    eax,[esp+0x4]
109874ab:	56                                              	push   esi
109874ac:	8b c8                                           	mov    ecx,eax
109874ae:	33 ed                                           	xor    ebp,ebp
109874b0:	68 98 03 00 00                                  	push   0x398
109874b5:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
109874b9:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
109874bd:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
109874c1:	e8 1a 1b f9 ff                                  	call   0x10918fe0
109874c6:	83 c4 04                                        	add    esp,0x4
109874c9:	3b c5                                           	cmp    eax,ebp
109874cb:	74 0d                                           	je     0x109874da
109874cd:	55                                              	push   ebp
109874ce:	55                                              	push   ebp
109874cf:	8b c8                                           	mov    ecx,eax
109874d1:	e8 fa 7a f5 ff                                  	call   0x108defd0
109874d6:	8b f0                                           	mov    esi,eax
109874d8:	eb 02                                           	jmp    0x109874dc
109874da:	33 f6                                           	xor    esi,esi
109874dc:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109874e0:	3b f1                                           	cmp    esi,ecx
109874e2:	74 3f                                           	je     0x10987523
109874e4:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
109874e8:	8d 54 24 08                                     	lea    edx,[esp+0x8]
109874ec:	3b c2                                           	cmp    eax,edx
109874ee:	75 0e                                           	jne    0x109874fe
109874f0:	3b cd                                           	cmp    ecx,ebp
109874f2:	74 29                                           	je     0x1098751d
109874f4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109874f6:	8b 10                                           	mov    edx,DWORD PTR [eax]
109874f8:	6a 01                                           	push   0x1
109874fa:	ff d2                                           	call   edx
109874fc:	eb 1f                                           	jmp    0x1098751d
109874fe:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10987502:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
10987505:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10987509:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098750d:	89 02                                           	mov    DWORD PTR [edx],eax
1098750f:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10987513:	8b d1                                           	mov    edx,ecx
10987515:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
10987519:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1098751d:	8b ce                                           	mov    ecx,esi
1098751f:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10987523:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10987525:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10987528:	ff d2                                           	call   edx
1098752a:	84 c0                                           	test   al,al
1098752c:	0f 84 00 02 00 00                               	je     0x10987732
10987532:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10987536:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10987538:	8b 94 24 68 02 00 00                            	mov    edx,DWORD PTR [esp+0x268]
1098753f:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
10987542:	52                                              	push   edx
10987543:	ff d0                                           	call   eax
10987545:	84 c0                                           	test   al,al
10987547:	0f 84 e5 01 00 00                               	je     0x10987732
1098754d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10987551:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10987553:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
10987556:	55                                              	push   ebp
10987557:	6a 06                                           	push   0x6
10987559:	6a 03                                           	push   0x3
1098755b:	ff d0                                           	call   eax
1098755d:	84 c0                                           	test   al,al
1098755f:	0f 84 cd 01 00 00                               	je     0x10987732
10987565:	8b 8c 24 70 02 00 00                            	mov    ecx,DWORD PTR [esp+0x270]
1098756c:	51                                              	push   ecx
1098756d:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10987571:	e8 ba 92 f8 ff                                  	call   0x10910830
10987576:	55                                              	push   ebp
10987577:	6a 01                                           	push   0x1
10987579:	6a 06                                           	push   0x6
1098757b:	6a 01                                           	push   0x1
1098757d:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10987581:	e8 fa 8d f8 ff                                  	call   0x10910380
10987586:	84 c0                                           	test   al,al
10987588:	75 28                                           	jne    0x109875b2
1098758a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098758e:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10987590:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10987593:	ff d0                                           	call   eax
10987595:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10987599:	e8 f2 92 f8 ff                                  	call   0x10910890
1098759e:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
109875a2:	e8 f9 fb ff ff                                  	call   0x109871a0
109875a7:	5e                                              	pop    esi
109875a8:	32 c0                                           	xor    al,al
109875aa:	5d                                              	pop    ebp
109875ab:	81 c4 5c 02 00 00                               	add    esp,0x25c
109875b1:	c3                                              	ret
109875b2:	53                                              	push   ebx
109875b3:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
109875b7:	e8 74 8f f8 ff                                  	call   0x10910530
109875bc:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
109875c0:	51                                              	push   ecx
109875c1:	8b f0                                           	mov    esi,eax
109875c3:	56                                              	push   esi
109875c4:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
109875c8:	c7 44 24 24 cc 6a b9 10                         	mov    DWORD PTR [esp+0x24],0x10b96acc
109875d0:	e8 9b 1b b0 ff                                  	call   0x10489170
109875d5:	8b 5c 24 30                                     	mov    ebx,DWORD PTR [esp+0x30]
109875d9:	56                                              	push   esi
109875da:	53                                              	push   ebx
109875db:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
109875df:	e8 2c 91 f8 ff                                  	call   0x10910710
109875e4:	8b 94 24 70 02 00 00                            	mov    edx,DWORD PTR [esp+0x270]
109875eb:	55                                              	push   ebp
109875ec:	6a ff                                           	push   0xffffffff
109875ee:	52                                              	push   edx
109875ef:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
109875f3:	50                                              	push   eax
109875f4:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
109875f8:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
109875fc:	89 6c 24 38                                     	mov    DWORD PTR [esp+0x38],ebp
10987600:	89 6c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebp
10987604:	e8 17 f9 f9 ff                                  	call   0x10926f20
10987609:	50                                              	push   eax
1098760a:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1098760e:	51                                              	push   ecx
1098760f:	e8 dc 5a e0 ff                                  	call   0x1078d0f0
10987614:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
10987618:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
1098761c:	2b d0                                           	sub    edx,eax
1098761e:	83 c4 18                                        	add    esp,0x18
10987621:	83 fa 01                                        	cmp    edx,0x1
10987624:	7e 0d                                           	jle    0x10987633
10987626:	3b c5                                           	cmp    eax,ebp
10987628:	74 09                                           	je     0x10987633
1098762a:	50                                              	push   eax
1098762b:	e8 60 18 f9 ff                                  	call   0x10918e90
10987630:	83 c4 04                                        	add    esp,0x4
10987633:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10987637:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
1098763b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098763d:	8b 40 40                                        	mov    eax,DWORD PTR [eax+0x40]
10987640:	57                                              	push   edi
10987641:	8d 54 24 24                                     	lea    edx,[esp+0x24]
10987645:	52                                              	push   edx
10987646:	ff d0                                           	call   eax
10987648:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1098764c:	3b cd                                           	cmp    ecx,ebp
1098764e:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
10987652:	74 0b                                           	je     0x1098765f
10987654:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
10987658:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098765a:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1098765d:	ff d0                                           	call   eax
1098765f:	8b 17                                           	mov    edx,DWORD PTR [edi]
10987661:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
10987664:	55                                              	push   ebp
10987665:	6a 01                                           	push   0x1
10987667:	6a 02                                           	push   0x2
10987669:	6a 02                                           	push   0x2
1098766b:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
1098766f:	50                                              	push   eax
10987670:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10987674:	51                                              	push   ecx
10987675:	8b cf                                           	mov    ecx,edi
10987677:	ff d2                                           	call   edx
10987679:	84 c0                                           	test   al,al
1098767b:	5f                                              	pop    edi
1098767c:	74 6f                                           	je     0x109876ed
1098767e:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10987682:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10987684:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
10987687:	ff d2                                           	call   edx
10987689:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098768b:	56                                              	push   esi
1098768c:	8b c8                                           	mov    ecx,eax
1098768e:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
10987691:	53                                              	push   ebx
10987692:	ff d0                                           	call   eax
10987694:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10987698:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098769a:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
1098769d:	ff d0                                           	call   eax
1098769f:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
109876a3:	e8 18 8e f8 ff                                  	call   0x109104c0
109876a8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
109876ac:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109876ae:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
109876b1:	ff d0                                           	call   eax
109876b3:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109876b7:	3b cd                                           	cmp    ecx,ebp
109876b9:	74 07                                           	je     0x109876c2
109876bb:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109876bd:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
109876c0:	ff d0                                           	call   eax
109876c2:	3b dd                                           	cmp    ebx,ebp
109876c4:	74 09                                           	je     0x109876cf
109876c6:	53                                              	push   ebx
109876c7:	e8 c4 17 f9 ff                                  	call   0x10918e90
109876cc:	83 c4 04                                        	add    esp,0x4
109876cf:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
109876d3:	e8 b8 91 f8 ff                                  	call   0x10910890
109876d8:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
109876dc:	e8 bf fa ff ff                                  	call   0x109871a0
109876e1:	5b                                              	pop    ebx
109876e2:	5e                                              	pop    esi
109876e3:	b0 01                                           	mov    al,0x1
109876e5:	5d                                              	pop    ebp
109876e6:	81 c4 5c 02 00 00                               	add    esp,0x25c
109876ec:	c3                                              	ret
109876ed:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
109876f1:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109876f3:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
109876f6:	ff d0                                           	call   eax
109876f8:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109876fc:	3b cd                                           	cmp    ecx,ebp
109876fe:	74 07                                           	je     0x10987707
10987700:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10987702:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10987705:	ff d0                                           	call   eax
10987707:	3b dd                                           	cmp    ebx,ebp
10987709:	74 09                                           	je     0x10987714
1098770b:	53                                              	push   ebx
1098770c:	e8 7f 17 f9 ff                                  	call   0x10918e90
10987711:	83 c4 04                                        	add    esp,0x4
10987714:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10987718:	e8 73 91 f8 ff                                  	call   0x10910890
1098771d:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10987721:	e8 7a fa ff ff                                  	call   0x109871a0
10987726:	5b                                              	pop    ebx
10987727:	5e                                              	pop    esi
10987728:	32 c0                                           	xor    al,al
1098772a:	5d                                              	pop    ebp
1098772b:	81 c4 5c 02 00 00                               	add    esp,0x25c
10987731:	c3                                              	ret
10987732:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10987736:	3b cd                                           	cmp    ecx,ebp
10987738:	74 30                                           	je     0x1098776a
1098773a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098773e:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10987742:	3b c2                                           	cmp    eax,edx
10987744:	75 13                                           	jne    0x10987759
10987746:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10987748:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098774a:	6a 01                                           	push   0x1
1098774c:	ff d2                                           	call   edx
1098774e:	5e                                              	pop    esi
1098774f:	32 c0                                           	xor    al,al
10987751:	5d                                              	pop    ebp
10987752:	81 c4 5c 02 00 00                               	add    esp,0x25c
10987758:	c3                                              	ret
10987759:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098775d:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
10987760:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10987764:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10987768:	89 02                                           	mov    DWORD PTR [edx],eax
1098776a:	5e                                              	pop    esi
1098776b:	32 c0                                           	xor    al,al
1098776d:	5d                                              	pop    ebp
1098776e:	81 c4 5c 02 00 00                               	add    esp,0x25c
10987774:	c3                                              	ret
10987775:	cc                                              	int3
10987776:	cc                                              	int3
10987777:	cc                                              	int3
10987778:	cc                                              	int3
10987779:	cc                                              	int3
1098777a:	cc                                              	int3
1098777b:	cc                                              	int3
1098777c:	cc                                              	int3
1098777d:	cc                                              	int3
1098777e:	cc                                              	int3
1098777f:	cc                                              	int3
