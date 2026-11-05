# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x009c7490 (Sims3Pack_ParseManifestXml)
Full Ghidra function-body envelope: 0x009c7490..0x009c7d85 (exclusive end)
Ghidra body ranges: [[009c7490, 009c7628] [009c7630, 009c7d84]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c7490 <.text+0x5c6490>:
  9c7490:	81 ec 30 02 00 00                               	sub    esp,0x230
  9c7496:	53                                              	push   ebx
  9c7497:	56                                              	push   esi
  9c7498:	8b d9                                           	mov    ebx,ecx
  9c749a:	6a 00                                           	push   0x0
  9c749c:	8d 8c 24 78 01 00 00                            	lea    ecx,[esp+0x178]
  9c74a3:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  9c74a7:	c6 44 24 0f 00                                  	mov    BYTE PTR [esp+0xf],0x0
  9c74ac:	e8 df 13 af ff                                  	call   0x4b8890
  9c74b1:	8b 84 24 3c 02 00 00                            	mov    eax,DWORD PTR [esp+0x23c]
  9c74b8:	6a ff                                           	push   0xffffffff
  9c74ba:	6a 00                                           	push   0x0
  9c74bc:	6a 01                                           	push   0x1
  9c74be:	50                                              	push   eax
  9c74bf:	8d 8c 24 84 01 00 00                            	lea    ecx,[esp+0x184]
  9c74c6:	e8 35 f7 ae ff                                  	call   0x4b6c00
  9c74cb:	6a 00                                           	push   0x0
  9c74cd:	6a 00                                           	push   0x0
  9c74cf:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
  9c74d6:	e8 85 d4 ae ff                                  	call   0x4b4960
  9c74db:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  9c74e2:	51                                              	push   ecx
  9c74e3:	8d 8c 24 78 01 00 00                            	lea    ecx,[esp+0x178]
  9c74ea:	e8 c1 dd ae ff                                  	call   0x4b52b0
  9c74ef:	84 c0                                           	test   al,al
  9c74f1:	0f 84 06 08 00 00                               	je     0x9c7cfd
  9c74f7:	8d 4b 04                                        	lea    ecx,[ebx+0x4]
  9c74fa:	e8 d1 d2 ff ff                                  	call   0x9c47d0
  9c74ff:	68 24 13 05 01                                  	push   0x1051324
  9c7504:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  9c7508:	52                                              	push   edx
  9c7509:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
  9c7510:	e8 8b d0 ae ff                                  	call   0x4b45a0
  9c7515:	8b 00                                           	mov    eax,DWORD PTR [eax]
  9c7517:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  9c751a:	3b b4 24 b8 00 00 00                            	cmp    esi,DWORD PTR [esp+0xb8]
  9c7521:	75 49                                           	jne    0x9c756c
  9c7523:	68 0c 13 05 01                                  	push   0x105130c
  9c7528:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  9c752c:	51                                              	push   ecx
  9c752d:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
  9c7534:	e8 67 d0 ae ff                                  	call   0x4b45a0
  9c7539:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9c753b:	8b 72 08                                        	mov    esi,DWORD PTR [edx+0x8]
  9c753e:	3b b4 24 b8 00 00 00                            	cmp    esi,DWORD PTR [esp+0xb8]
  9c7545:	75 25                                           	jne    0x9c756c
  9c7547:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  9c754e:	e8 4d d2 ae ff                                  	call   0x4b47a0
  9c7553:	8d 8c 24 74 01 00 00                            	lea    ecx,[esp+0x174]
  9c755a:	e8 71 ff ae ff                                  	call   0x4b74d0
  9c755f:	5e                                              	pop    esi
  9c7560:	32 c0                                           	xor    al,al
  9c7562:	5b                                              	pop    ebx
  9c7563:	81 c4 30 02 00 00                               	add    esp,0x230
  9c7569:	c2 04 00                                        	ret    0x4
  9c756c:	85 f6                                           	test   esi,esi
  9c756e:	74 d7                                           	je     0x9c7547
  9c7570:	8d 46 38                                        	lea    eax,[esi+0x38]
  9c7573:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c7575:	0f 84 85 00 00 00                               	je     0x9c7600
  9c757b:	68 04 13 05 01                                  	push   0x1051304
  9c7580:	8b ce                                           	mov    ecx,esi
  9c7582:	e8 59 d1 ae ff                                  	call   0x4b46e0
  9c7587:	85 c0                                           	test   eax,eax
  9c7589:	74 19                                           	je     0x9c75a4
  9c758b:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  9c758e:	3b 48 1c                                        	cmp    ecx,DWORD PTR [eax+0x1c]
  9c7591:	74 11                                           	je     0x9c75a4
  9c7593:	8b c1                                           	mov    eax,ecx
  9c7595:	50                                              	push   eax
  9c7596:	e8 a5 a6 fe ff                                  	call   0x9b1c40
  9c759b:	83 c4 04                                        	add    esp,0x4
  9c759e:	89 83 a8 00 00 00                               	mov    DWORD PTR [ebx+0xa8],eax
  9c75a4:	68 fc 12 05 01                                  	push   0x10512fc
  9c75a9:	8b ce                                           	mov    ecx,esi
  9c75ab:	e8 30 d1 ae ff                                  	call   0x4b46e0
  9c75b0:	85 c0                                           	test   eax,eax
  9c75b2:	74 1d                                           	je     0x9c75d1
  9c75b4:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  9c75b7:	3b 50 1c                                        	cmp    edx,DWORD PTR [eax+0x1c]
  9c75ba:	74 15                                           	je     0x9c75d1
  9c75bc:	6a 10                                           	push   0x10
  9c75be:	8b c2                                           	mov    eax,edx
  9c75c0:	6a 00                                           	push   0x0
  9c75c2:	50                                              	push   eax
  9c75c3:	e8 e8 85 b3 ff                                  	call   0x4ffbb0
  9c75c8:	83 c4 0c                                        	add    esp,0xc
  9c75cb:	89 83 ac 00 00 00                               	mov    DWORD PTR [ebx+0xac],eax
  9c75d1:	68 f0 12 05 01                                  	push   0x10512f0
  9c75d6:	8b ce                                           	mov    ecx,esi
  9c75d8:	e8 03 d1 ae ff                                  	call   0x4b46e0
  9c75dd:	85 c0                                           	test   eax,eax
  9c75df:	74 29                                           	je     0x9c760a
  9c75e1:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  9c75e4:	3b 48 1c                                        	cmp    ecx,DWORD PTR [eax+0x1c]
  9c75e7:	74 21                                           	je     0x9c760a
  9c75e9:	6a 10                                           	push   0x10
  9c75eb:	8b c1                                           	mov    eax,ecx
  9c75ed:	6a 00                                           	push   0x0
  9c75ef:	50                                              	push   eax
  9c75f0:	e8 bb 85 b3 ff                                  	call   0x4ffbb0
  9c75f5:	83 c4 0c                                        	add    esp,0xc
  9c75f8:	89 83 b0 00 00 00                               	mov    DWORD PTR [ebx+0xb0],eax
  9c75fe:	eb 0a                                           	jmp    0x9c760a
  9c7600:	c7 83 a8 00 00 00 00 00 00 00                   	mov    DWORD PTR [ebx+0xa8],0x0
  9c760a:	8b 46 24                                        	mov    eax,DWORD PTR [esi+0x24]
  9c760d:	83 c6 24                                        	add    esi,0x24
  9c7610:	3b c6                                           	cmp    eax,esi
  9c7612:	c6 44 24 0b 01                                  	mov    BYTE PTR [esp+0xb],0x1
  9c7617:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  9c761b:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  9c761f:	0f 84 d8 06 00 00                               	je     0x9c7cfd
  9c7625:	55                                              	push   ebp
  9c7626:	57                                              	push   edi
  9c7627:	eb 07                                           	jmp    0x9c7630
  9c7629:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  9c7630:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  9c7633:	83 7e 04 02                                     	cmp    DWORD PTR [esi+0x4],0x2
  9c7637:	0f 85 9f 06 00 00                               	jne    0x9c7cdc
  9c763d:	8d 7e 08                                        	lea    edi,[esi+0x8]
  9c7640:	68 78 c2 02 01                                  	push   0x102c278
  9c7645:	8b cf                                           	mov    ecx,edi
  9c7647:	e8 34 7b ad ff                                  	call   0x49f180
  9c764c:	85 c0                                           	test   eax,eax
  9c764e:	75 5d                                           	jne    0x9c76ad
  9c7650:	8d 46 24                                        	lea    eax,[esi+0x24]
  9c7653:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c7655:	0f 84 81 06 00 00                               	je     0x9c7cdc
  9c765b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9c765d:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  9c7660:	85 c0                                           	test   eax,eax
  9c7662:	0f 84 74 06 00 00                               	je     0x9c7cdc
  9c7668:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  9c766b:	3b 48 0c                                        	cmp    ecx,DWORD PTR [eax+0xc]
  9c766e:	0f 84 68 06 00 00                               	je     0x9c7cdc
  9c7674:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  9c7677:	2b 48 08                                        	sub    ecx,DWORD PTR [eax+0x8]
  9c767a:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c767d:	6a 00                                           	push   0x0
  9c767f:	51                                              	push   ecx
  9c7680:	50                                              	push   eax
  9c7681:	8d 94 24 48 01 00 00                            	lea    edx,[esp+0x148]
  9c7688:	52                                              	push   edx
  9c7689:	e8 c2 c4 b2 ff                                  	call   0x4f3b50
  9c768e:	8b 00                                           	mov    eax,DWORD PTR [eax]
  9c7690:	83 c4 10                                        	add    esp,0x10
  9c7693:	50                                              	push   eax
  9c7694:	8d 4b 14                                        	lea    ecx,[ebx+0x14]
  9c7697:	e8 64 da ff ff                                  	call   0x9c5100
  9c769c:	8d 8c 24 3c 01 00 00                            	lea    ecx,[esp+0x13c]
  9c76a3:	e8 48 82 b2 ff                                  	call   0x4ef8f0
  9c76a8:	e9 2f 06 00 00                                  	jmp    0x9c7cdc
  9c76ad:	68 e0 12 05 01                                  	push   0x10512e0
  9c76b2:	8b cf                                           	mov    ecx,edi
  9c76b4:	e8 c7 7a ad ff                                  	call   0x49f180
  9c76b9:	85 c0                                           	test   eax,eax
  9c76bb:	75 33                                           	jne    0x9c76f0
  9c76bd:	8b 4e 24                                        	mov    ecx,DWORD PTR [esi+0x24]
  9c76c0:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  9c76c3:	85 c0                                           	test   eax,eax
  9c76c5:	0f 84 11 06 00 00                               	je     0x9c7cdc
  9c76cb:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9c76ce:	3b 50 0c                                        	cmp    edx,DWORD PTR [eax+0xc]
  9c76d1:	0f 84 05 06 00 00                               	je     0x9c7cdc
  9c76d7:	6a 00                                           	push   0x0
  9c76d9:	6a 00                                           	push   0x0
  9c76db:	8b c2                                           	mov    eax,edx
  9c76dd:	68 d8 12 05 01                                  	push   0x10512d8
  9c76e2:	50                                              	push   eax
  9c76e3:	e8 88 5d e4 ff                                  	call   0x80d470
  9c76e8:	83 c4 10                                        	add    esp,0x10
  9c76eb:	e9 ec 05 00 00                                  	jmp    0x9c7cdc
  9c76f0:	68 8c c2 02 01                                  	push   0x102c28c
  9c76f5:	8b cf                                           	mov    ecx,edi
  9c76f7:	e8 84 7a ad ff                                  	call   0x49f180
  9c76fc:	85 c0                                           	test   eax,eax
  9c76fe:	0f 84 d8 05 00 00                               	je     0x9c7cdc
  9c7704:	68 c8 12 05 01                                  	push   0x10512c8
  9c7709:	8b cf                                           	mov    ecx,edi
  9c770b:	e8 70 7a ad ff                                  	call   0x49f180
  9c7710:	85 c0                                           	test   eax,eax
  9c7712:	75 31                                           	jne    0x9c7745
  9c7714:	8b 4e 24                                        	mov    ecx,DWORD PTR [esi+0x24]
  9c7717:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  9c771a:	85 c0                                           	test   eax,eax
  9c771c:	0f 84 ba 05 00 00                               	je     0x9c7cdc
  9c7722:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9c7725:	3b 50 0c                                        	cmp    edx,DWORD PTR [eax+0xc]
  9c7728:	0f 84 ae 05 00 00                               	je     0x9c7cdc
  9c772e:	8b c2                                           	mov    eax,edx
  9c7730:	50                                              	push   eax
  9c7731:	e8 aa c2 ec ff                                  	call   0x8939e0
  9c7736:	83 c4 04                                        	add    esp,0x4
  9c7739:	66 89 83 cc 00 00 00                            	mov    WORD PTR [ebx+0xcc],ax
  9c7740:	e9 97 05 00 00                                  	jmp    0x9c7cdc
  9c7745:	68 48 97 04 01                                  	push   0x1049748
  9c774a:	8b cf                                           	mov    ecx,edi
  9c774c:	e8 2f 7a ad ff                                  	call   0x49f180
  9c7751:	85 c0                                           	test   eax,eax
  9c7753:	75 51                                           	jne    0x9c77a6
  9c7755:	8b 46 24                                        	mov    eax,DWORD PTR [esi+0x24]
  9c7758:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c775b:	85 c0                                           	test   eax,eax
  9c775d:	0f 84 79 05 00 00                               	je     0x9c7cdc
  9c7763:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  9c7766:	3b 48 0c                                        	cmp    ecx,DWORD PTR [eax+0xc]
  9c7769:	0f 84 6d 05 00 00                               	je     0x9c7cdc
  9c776f:	8b c1                                           	mov    eax,ecx
  9c7771:	50                                              	push   eax
  9c7772:	8d 8c 24 50 01 00 00                            	lea    ecx,[esp+0x150]
  9c7779:	e8 12 75 fe ff                                  	call   0x9aec90
  9c777e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9c7780:	89 93 f0 00 00 00                               	mov    DWORD PTR [ebx+0xf0],edx
  9c7786:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  9c7789:	89 8b f4 00 00 00                               	mov    DWORD PTR [ebx+0xf4],ecx
  9c778f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9c7792:	89 93 f8 00 00 00                               	mov    DWORD PTR [ebx+0xf8],edx
  9c7798:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  9c779b:	89 83 fc 00 00 00                               	mov    DWORD PTR [ebx+0xfc],eax
  9c77a1:	e9 36 05 00 00                                  	jmp    0x9c7cdc
  9c77a6:	68 bc 12 05 01                                  	push   0x10512bc
  9c77ab:	8b cf                                           	mov    ecx,edi
  9c77ad:	e8 ce 79 ad ff                                  	call   0x49f180
  9c77b2:	85 c0                                           	test   eax,eax
  9c77b4:	75 5e                                           	jne    0x9c7814
  9c77b6:	8d 46 24                                        	lea    eax,[esi+0x24]
  9c77b9:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c77bb:	0f 84 1b 05 00 00                               	je     0x9c7cdc
  9c77c1:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  9c77c3:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  9c77c6:	85 c0                                           	test   eax,eax
  9c77c8:	0f 84 0e 05 00 00                               	je     0x9c7cdc
  9c77ce:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  9c77d1:	3b 50 0c                                        	cmp    edx,DWORD PTR [eax+0xc]
  9c77d4:	0f 84 02 05 00 00                               	je     0x9c7cdc
  9c77da:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  9c77dd:	6a 00                                           	push   0x0
  9c77df:	2b ca                                           	sub    ecx,edx
  9c77e1:	8b c2                                           	mov    eax,edx
  9c77e3:	51                                              	push   ecx
  9c77e4:	50                                              	push   eax
  9c77e5:	8d 84 24 08 01 00 00                            	lea    eax,[esp+0x108]
  9c77ec:	50                                              	push   eax
  9c77ed:	e8 5e c3 b2 ff                                  	call   0x4f3b50
  9c77f2:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  9c77f4:	83 c4 10                                        	add    esp,0x10
  9c77f7:	51                                              	push   ecx
  9c77f8:	8d 8b 88 00 00 00                               	lea    ecx,[ebx+0x88]
  9c77fe:	e8 4d 17 a4 ff                                  	call   0x408f50
  9c7803:	8d 8c 24 fc 00 00 00                            	lea    ecx,[esp+0xfc]
  9c780a:	e8 e1 80 b2 ff                                  	call   0x4ef8f0
  9c780f:	e9 c8 04 00 00                                  	jmp    0x9c7cdc
  9c7814:	68 b0 12 05 01                                  	push   0x10512b0
  9c7819:	8b cf                                           	mov    ecx,edi
  9c781b:	e8 60 79 ad ff                                  	call   0x49f180
  9c7820:	85 c0                                           	test   eax,eax
  9c7822:	75 60                                           	jne    0x9c7884
  9c7824:	8d 46 24                                        	lea    eax,[esi+0x24]
  9c7827:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c7829:	0f 84 ad 04 00 00                               	je     0x9c7cdc
  9c782f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9c7831:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  9c7834:	85 c0                                           	test   eax,eax
  9c7836:	0f 84 a0 04 00 00                               	je     0x9c7cdc
  9c783c:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  9c783f:	3b 48 0c                                        	cmp    ecx,DWORD PTR [eax+0xc]
  9c7842:	0f 84 94 04 00 00                               	je     0x9c7cdc
  9c7848:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  9c784b:	2b 48 08                                        	sub    ecx,DWORD PTR [eax+0x8]
  9c784e:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c7851:	6a 00                                           	push   0x0
  9c7853:	51                                              	push   ecx
  9c7854:	50                                              	push   eax
  9c7855:	8d 94 24 d8 00 00 00                            	lea    edx,[esp+0xd8]
  9c785c:	52                                              	push   edx
  9c785d:	e8 ee c2 b2 ff                                  	call   0x4f3b50
  9c7862:	8b 00                                           	mov    eax,DWORD PTR [eax]
  9c7864:	83 c4 10                                        	add    esp,0x10
  9c7867:	50                                              	push   eax
  9c7868:	8d 8b 98 00 00 00                               	lea    ecx,[ebx+0x98]
  9c786e:	e8 dd 16 a4 ff                                  	call   0x408f50
  9c7873:	8d 8c 24 cc 00 00 00                            	lea    ecx,[esp+0xcc]
  9c787a:	e8 71 80 b2 ff                                  	call   0x4ef8f0
  9c787f:	e9 58 04 00 00                                  	jmp    0x9c7cdc
  9c7884:	68 a4 12 05 01                                  	push   0x10512a4
  9c7889:	8b cf                                           	mov    ecx,edi
  9c788b:	e8 f0 78 ad ff                                  	call   0x49f180
  9c7890:	85 c0                                           	test   eax,eax
  9c7892:	75 5d                                           	jne    0x9c78f1
  9c7894:	8d 46 24                                        	lea    eax,[esi+0x24]
  9c7897:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c7899:	0f 84 3d 04 00 00                               	je     0x9c7cdc
  9c789f:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  9c78a1:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  9c78a4:	85 f6                                           	test   esi,esi
  9c78a6:	0f 84 30 04 00 00                               	je     0x9c7cdc
  9c78ac:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  9c78af:	3b 56 0c                                        	cmp    edx,DWORD PTR [esi+0xc]
  9c78b2:	0f 84 24 04 00 00                               	je     0x9c7cdc
  9c78b8:	8d 8c 24 ec 00 00 00                            	lea    ecx,[esp+0xec]
  9c78bf:	e8 3c 93 b3 ff                                  	call   0x500c00
  9c78c4:	8b 76 08                                        	mov    esi,DWORD PTR [esi+0x8]
  9c78c7:	6a 10                                           	push   0x10
  9c78c9:	6a 00                                           	push   0x0
  9c78cb:	56                                              	push   esi
  9c78cc:	8d 84 24 78 01 00 00                            	lea    eax,[esp+0x178]
  9c78d3:	50                                              	push   eax
  9c78d4:	8d 8c 24 fc 00 00 00                            	lea    ecx,[esp+0xfc]
  9c78db:	e8 c0 9d b3 ff                                  	call   0x5016a0
  9c78e0:	50                                              	push   eax
  9c78e1:	8d 8b 00 01 00 00                               	lea    ecx,[ebx+0x100]
  9c78e7:	e8 a4 93 b3 ff                                  	call   0x500c90
  9c78ec:	e9 eb 03 00 00                                  	jmp    0x9c7cdc
  9c78f1:	68 94 12 05 01                                  	push   0x1051294
  9c78f6:	8b cf                                           	mov    ecx,edi
  9c78f8:	e8 83 78 ad ff                                  	call   0x49f180
  9c78fd:	85 c0                                           	test   eax,eax
  9c78ff:	0f 85 92 00 00 00                               	jne    0x9c7997
  9c7905:	8b 6c 24 1c                                     	mov    ebp,DWORD PTR [esp+0x1c]
  9c7909:	8b 8d bc 00 00 00                               	mov    ecx,DWORD PTR [ebp+0xbc]
  9c790f:	81 c5 bc 00 00 00                               	add    ebp,0xbc
  9c7915:	8d 5e 24                                        	lea    ebx,[esi+0x24]
  9c7918:	89 4d 04                                        	mov    DWORD PTR [ebp+0x4],ecx
  9c791b:	39 1b                                           	cmp    DWORD PTR [ebx],ebx
  9c791d:	0f 84 b9 03 00 00                               	je     0x9c7cdc
  9c7923:	8b 3b                                           	mov    edi,DWORD PTR [ebx]
  9c7925:	3b fb                                           	cmp    edi,ebx
  9c7927:	0f 84 af 03 00 00                               	je     0x9c7cdc
  9c792d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  9c7930:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
  9c7933:	83 7e 04 02                                     	cmp    DWORD PTR [esi+0x4],0x2
  9c7937:	75 53                                           	jne    0x9c798c
  9c7939:	68 88 12 05 01                                  	push   0x1051288
  9c793e:	8d 4e 08                                        	lea    ecx,[esi+0x8]
  9c7941:	e8 3a 78 ad ff                                  	call   0x49f180
  9c7946:	85 c0                                           	test   eax,eax
  9c7948:	75 42                                           	jne    0x9c798c
  9c794a:	8b 56 24                                        	mov    edx,DWORD PTR [esi+0x24]
  9c794d:	8b 72 08                                        	mov    esi,DWORD PTR [edx+0x8]
  9c7950:	85 f6                                           	test   esi,esi
  9c7952:	74 38                                           	je     0x9c798c
  9c7954:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  9c7957:	3b 46 0c                                        	cmp    eax,DWORD PTR [esi+0xc]
  9c795a:	74 30                                           	je     0x9c798c
  9c795c:	8d 8c 24 1c 01 00 00                            	lea    ecx,[esp+0x11c]
  9c7963:	e8 98 92 b3 ff                                  	call   0x500c00
  9c7968:	8b 76 08                                        	mov    esi,DWORD PTR [esi+0x8]
  9c796b:	6a 10                                           	push   0x10
  9c796d:	6a 00                                           	push   0x0
  9c796f:	56                                              	push   esi
  9c7970:	8d 8c 24 68 01 00 00                            	lea    ecx,[esp+0x168]
  9c7977:	51                                              	push   ecx
  9c7978:	8d 8c 24 2c 01 00 00                            	lea    ecx,[esp+0x12c]
  9c797f:	e8 1c 9d b3 ff                                  	call   0x5016a0
  9c7984:	50                                              	push   eax
  9c7985:	8b cd                                           	mov    ecx,ebp
  9c7987:	e8 e4 a2 ec ff                                  	call   0x891c70
  9c798c:	8b 3f                                           	mov    edi,DWORD PTR [edi]
  9c798e:	3b fb                                           	cmp    edi,ebx
  9c7990:	75 9e                                           	jne    0x9c7930
  9c7992:	e9 45 03 00 00                                  	jmp    0x9c7cdc
  9c7997:	68 78 12 05 01                                  	push   0x1051278
  9c799c:	8b cf                                           	mov    ecx,edi
  9c799e:	e8 dd 77 ad ff                                  	call   0x49f180
  9c79a3:	85 c0                                           	test   eax,eax
  9c79a5:	0f 85 99 01 00 00                               	jne    0x9c7b44
  9c79ab:	8d ab d0 00 00 00                               	lea    ebp,[ebx+0xd0]
  9c79b1:	8b cd                                           	mov    ecx,ebp
  9c79b3:	e8 48 b6 fe ff                                  	call   0x9b3000
  9c79b8:	8d 5e 24                                        	lea    ebx,[esi+0x24]
  9c79bb:	39 1b                                           	cmp    DWORD PTR [ebx],ebx
  9c79bd:	0f 84 19 03 00 00                               	je     0x9c7cdc
  9c79c3:	8b 3b                                           	mov    edi,DWORD PTR [ebx]
  9c79c5:	3b fb                                           	cmp    edi,ebx
  9c79c7:	0f 84 0f 03 00 00                               	je     0x9c7cdc
  9c79cd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  9c79d0:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
  9c79d3:	83 7e 04 02                                     	cmp    DWORD PTR [esi+0x4],0x2
  9c79d7:	0f 85 58 01 00 00                               	jne    0x9c7b35
  9c79dd:	68 68 12 05 01                                  	push   0x1051268
  9c79e2:	8d 4e 08                                        	lea    ecx,[esi+0x8]
  9c79e5:	e8 96 77 ad ff                                  	call   0x49f180
  9c79ea:	85 c0                                           	test   eax,eax
  9c79ec:	0f 85 43 01 00 00                               	jne    0x9c7b35
  9c79f2:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  9c79f6:	52                                              	push   edx
  9c79f7:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  9c79fb:	c7 44 24 18 34 12 05 01                         	mov    DWORD PTR [esp+0x18],0x1051234
  9c7a03:	e8 e8 0e a4 ff                                  	call   0x4088f0
  9c7a08:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  9c7a0c:	50                                              	push   eax
  9c7a0d:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
  9c7a14:	c7 44 24 18 04 12 05 01                         	mov    DWORD PTR [esp+0x18],0x1051204
  9c7a1c:	e8 cf 0e a4 ff                                  	call   0x4088f0
  9c7a21:	8d 46 38                                        	lea    eax,[esi+0x38]
  9c7a24:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c7a26:	74 4e                                           	je     0x9c7a76
  9c7a28:	68 cc 8e fb 00                                  	push   0xfb8ecc
  9c7a2d:	8b ce                                           	mov    ecx,esi
  9c7a2f:	e8 ac cc ae ff                                  	call   0x4b46e0
  9c7a34:	85 c0                                           	test   eax,eax
  9c7a36:	74 3e                                           	je     0x9c7a76
  9c7a38:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  9c7a3b:	3b 48 1c                                        	cmp    ecx,DWORD PTR [eax+0x1c]
  9c7a3e:	74 36                                           	je     0x9c7a76
  9c7a40:	8b 48 1c                                        	mov    ecx,DWORD PTR [eax+0x1c]
  9c7a43:	2b 48 18                                        	sub    ecx,DWORD PTR [eax+0x18]
  9c7a46:	8b 40 18                                        	mov    eax,DWORD PTR [eax+0x18]
  9c7a49:	68 d4 11 05 01                                  	push   0x10511d4
  9c7a4e:	51                                              	push   ecx
  9c7a4f:	50                                              	push   eax
  9c7a50:	8d 94 24 38 01 00 00                            	lea    edx,[esp+0x138]
  9c7a57:	52                                              	push   edx
  9c7a58:	e8 f3 c0 b2 ff                                  	call   0x4f3b50
  9c7a5d:	83 c4 10                                        	add    esp,0x10
  9c7a60:	50                                              	push   eax
  9c7a61:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  9c7a65:	e8 e6 13 a4 ff                                  	call   0x408e50
  9c7a6a:	8d 8c 24 2c 01 00 00                            	lea    ecx,[esp+0x12c]
  9c7a71:	e8 7a 7e b2 ff                                  	call   0x4ef8f0
  9c7a76:	8d 46 24                                        	lea    eax,[esi+0x24]
  9c7a79:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c7a7b:	74 48                                           	je     0x9c7ac5
  9c7a7d:	8b 00                                           	mov    eax,DWORD PTR [eax]
  9c7a7f:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c7a82:	85 c0                                           	test   eax,eax
  9c7a84:	74 3f                                           	je     0x9c7ac5
  9c7a86:	83 78 04 05                                     	cmp    DWORD PTR [eax+0x4],0x5
  9c7a8a:	75 39                                           	jne    0x9c7ac5
  9c7a8c:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  9c7a8f:	2b 48 08                                        	sub    ecx,DWORD PTR [eax+0x8]
  9c7a92:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c7a95:	68 a8 11 05 01                                  	push   0x10511a8
  9c7a9a:	51                                              	push   ecx
  9c7a9b:	50                                              	push   eax
  9c7a9c:	8d 8c 24 18 01 00 00                            	lea    ecx,[esp+0x118]
  9c7aa3:	51                                              	push   ecx
  9c7aa4:	e8 a7 c0 b2 ff                                  	call   0x4f3b50
  9c7aa9:	83 c4 10                                        	add    esp,0x10
  9c7aac:	50                                              	push   eax
  9c7aad:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
  9c7ab4:	e8 97 13 a4 ff                                  	call   0x408e50
  9c7ab9:	8d 8c 24 0c 01 00 00                            	lea    ecx,[esp+0x10c]
  9c7ac0:	e8 2b 7e b2 ff                                  	call   0x4ef8f0
  9c7ac5:	8d 94 24 84 00 00 00                            	lea    edx,[esp+0x84]
  9c7acc:	52                                              	push   edx
  9c7acd:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  9c7ad1:	50                                              	push   eax
  9c7ad2:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  9c7ad6:	e8 15 e9 a8 ff                                  	call   0x4563f0
  9c7adb:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  9c7adf:	51                                              	push   ecx
  9c7ae0:	8b cd                                           	mov    ecx,ebp
  9c7ae2:	e8 39 a4 b2 ff                                  	call   0x4f1f20
  9c7ae7:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  9c7aeb:	68 f4 cf fc 00                                  	push   0xfccff4
  9c7af0:	52                                              	push   edx
  9c7af1:	e8 4a 61 b2 ff                                  	call   0x4edc40
  9c7af6:	83 c4 08                                        	add    esp,0x8
  9c7af9:	84 c0                                           	test   al,al
  9c7afb:	74 1a                                           	je     0x9c7b17
  9c7afd:	68 9c 11 05 01                                  	push   0x105119c
  9c7b02:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  9c7b06:	e8 45 14 a4 ff                                  	call   0x408f50
  9c7b0b:	8d 44 24 64                                     	lea    eax,[esp+0x64]
  9c7b0f:	50                                              	push   eax
  9c7b10:	8b cd                                           	mov    ecx,ebp
  9c7b12:	e8 09 a4 b2 ff                                  	call   0x4f1f20
  9c7b17:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  9c7b1b:	e8 d0 7e b2 ff                                  	call   0x4ef9f0
  9c7b20:	8d 8c 24 84 00 00 00                            	lea    ecx,[esp+0x84]
  9c7b27:	e8 c4 7d b2 ff                                  	call   0x4ef8f0
  9c7b2c:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  9c7b30:	e8 bb 7d b2 ff                                  	call   0x4ef8f0
  9c7b35:	8b 3f                                           	mov    edi,DWORD PTR [edi]
  9c7b37:	3b fb                                           	cmp    edi,ebx
  9c7b39:	0f 85 91 fe ff ff                               	jne    0x9c79d0
  9c7b3f:	e9 98 01 00 00                                  	jmp    0x9c7cdc
  9c7b44:	68 84 11 05 01                                  	push   0x1051184
  9c7b49:	8b cf                                           	mov    ecx,edi
  9c7b4b:	e8 30 76 ad ff                                  	call   0x49f180
  9c7b50:	85 c0                                           	test   eax,eax
  9c7b52:	0f 85 57 01 00 00                               	jne    0x9c7caf
  9c7b58:	8d ab e0 00 00 00                               	lea    ebp,[ebx+0xe0]
  9c7b5e:	8b cd                                           	mov    ecx,ebp
  9c7b60:	e8 9b b4 fe ff                                  	call   0x9b3000
  9c7b65:	8d 5e 24                                        	lea    ebx,[esi+0x24]
  9c7b68:	39 1b                                           	cmp    DWORD PTR [ebx],ebx
  9c7b6a:	0f 84 6c 01 00 00                               	je     0x9c7cdc
  9c7b70:	8b 3b                                           	mov    edi,DWORD PTR [ebx]
  9c7b72:	3b fb                                           	cmp    edi,ebx
  9c7b74:	0f 84 62 01 00 00                               	je     0x9c7cdc
  9c7b7a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  9c7b80:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
  9c7b83:	83 7e 04 02                                     	cmp    DWORD PTR [esi+0x4],0x2
  9c7b87:	0f 85 16 01 00 00                               	jne    0x9c7ca3
  9c7b8d:	68 6c 11 05 01                                  	push   0x105116c
  9c7b92:	8d 4e 08                                        	lea    ecx,[esi+0x8]
  9c7b95:	e8 e6 75 ad ff                                  	call   0x49f180
  9c7b9a:	85 c0                                           	test   eax,eax
  9c7b9c:	0f 85 01 01 00 00                               	jne    0x9c7ca3
  9c7ba2:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  9c7ba6:	51                                              	push   ecx
  9c7ba7:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  9c7bab:	c7 44 24 18 34 12 05 01                         	mov    DWORD PTR [esp+0x18],0x1051234
  9c7bb3:	e8 38 0d a4 ff                                  	call   0x4088f0
  9c7bb8:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  9c7bbc:	52                                              	push   edx
  9c7bbd:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  9c7bc1:	c7 44 24 18 04 12 05 01                         	mov    DWORD PTR [esp+0x18],0x1051204
  9c7bc9:	e8 22 0d a4 ff                                  	call   0x4088f0
  9c7bce:	8d 46 38                                        	lea    eax,[esi+0x38]
  9c7bd1:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c7bd3:	74 4e                                           	je     0x9c7c23
  9c7bd5:	68 cc 8e fb 00                                  	push   0xfb8ecc
  9c7bda:	8b ce                                           	mov    ecx,esi
  9c7bdc:	e8 ff ca ae ff                                  	call   0x4b46e0
  9c7be1:	85 c0                                           	test   eax,eax
  9c7be3:	74 3e                                           	je     0x9c7c23
  9c7be5:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  9c7be8:	3b 48 1c                                        	cmp    ecx,DWORD PTR [eax+0x1c]
  9c7beb:	74 36                                           	je     0x9c7c23
  9c7bed:	8b 48 1c                                        	mov    ecx,DWORD PTR [eax+0x1c]
  9c7bf0:	2b 48 18                                        	sub    ecx,DWORD PTR [eax+0x18]
  9c7bf3:	8b 40 18                                        	mov    eax,DWORD PTR [eax+0x18]
  9c7bf6:	68 d4 11 05 01                                  	push   0x10511d4
  9c7bfb:	51                                              	push   ecx
  9c7bfc:	50                                              	push   eax
  9c7bfd:	8d 94 24 e8 00 00 00                            	lea    edx,[esp+0xe8]
  9c7c04:	52                                              	push   edx
  9c7c05:	e8 46 bf b2 ff                                  	call   0x4f3b50
  9c7c0a:	83 c4 10                                        	add    esp,0x10
  9c7c0d:	50                                              	push   eax
  9c7c0e:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  9c7c12:	e8 39 12 a4 ff                                  	call   0x408e50
  9c7c17:	8d 8c 24 dc 00 00 00                            	lea    ecx,[esp+0xdc]
  9c7c1e:	e8 cd 7c b2 ff                                  	call   0x4ef8f0
  9c7c23:	8d 46 24                                        	lea    eax,[esi+0x24]
  9c7c26:	39 00                                           	cmp    DWORD PTR [eax],eax
  9c7c28:	74 3f                                           	je     0x9c7c69
  9c7c2a:	8b 00                                           	mov    eax,DWORD PTR [eax]
  9c7c2c:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c7c2f:	85 c0                                           	test   eax,eax
  9c7c31:	74 36                                           	je     0x9c7c69
  9c7c33:	83 78 04 05                                     	cmp    DWORD PTR [eax+0x4],0x5
  9c7c37:	75 30                                           	jne    0x9c7c69
  9c7c39:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  9c7c3c:	2b 48 08                                        	sub    ecx,DWORD PTR [eax+0x8]
  9c7c3f:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  9c7c42:	68 a8 11 05 01                                  	push   0x10511a8
  9c7c47:	51                                              	push   ecx
  9c7c48:	50                                              	push   eax
  9c7c49:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  9c7c4d:	51                                              	push   ecx
  9c7c4e:	e8 fd be b2 ff                                  	call   0x4f3b50
  9c7c53:	83 c4 10                                        	add    esp,0x10
  9c7c56:	50                                              	push   eax
  9c7c57:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  9c7c5b:	e8 f0 11 a4 ff                                  	call   0x408e50
  9c7c60:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  9c7c64:	e8 87 7c b2 ff                                  	call   0x4ef8f0
  9c7c69:	8d 54 24 54                                     	lea    edx,[esp+0x54]
  9c7c6d:	52                                              	push   edx
  9c7c6e:	8d 44 24 48                                     	lea    eax,[esp+0x48]
  9c7c72:	50                                              	push   eax
  9c7c73:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  9c7c77:	e8 74 e7 a8 ff                                  	call   0x4563f0
  9c7c7c:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  9c7c80:	51                                              	push   ecx
  9c7c81:	8b cd                                           	mov    ecx,ebp
  9c7c83:	e8 98 a2 b2 ff                                  	call   0x4f1f20
  9c7c88:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  9c7c8c:	e8 5f 7d b2 ff                                  	call   0x4ef9f0
  9c7c91:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  9c7c95:	e8 56 7c b2 ff                                  	call   0x4ef8f0
  9c7c9a:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  9c7c9e:	e8 4d 7c b2 ff                                  	call   0x4ef8f0
  9c7ca3:	8b 3f                                           	mov    edi,DWORD PTR [edi]
  9c7ca5:	3b fb                                           	cmp    edi,ebx
  9c7ca7:	0f 85 d3 fe ff ff                               	jne    0x9c7b80
  9c7cad:	eb 2d                                           	jmp    0x9c7cdc
  9c7caf:	68 5c 11 05 01                                  	push   0x105115c
  9c7cb4:	8b cf                                           	mov    ecx,edi
  9c7cb6:	e8 c5 74 ad ff                                  	call   0x49f180
  9c7cbb:	85 c0                                           	test   eax,eax
  9c7cbd:	75 1d                                           	jne    0x9c7cdc
  9c7cbf:	8d 4b 04                                        	lea    ecx,[ebx+0x4]
  9c7cc2:	e8 d9 f0 ff ff                                  	call   0x9c6da0
  9c7cc7:	8b 43 08                                        	mov    eax,DWORD PTR [ebx+0x8]
  9c7cca:	2d 68 08 00 00                                  	sub    eax,0x868
  9c7ccf:	56                                              	push   esi
  9c7cd0:	50                                              	push   eax
  9c7cd1:	8b cb                                           	mov    ecx,ebx
  9c7cd3:	e8 28 dd ff ff                                  	call   0x9c5a00
  9c7cd8:	84 c0                                           	test   al,al
  9c7cda:	74 1a                                           	je     0x9c7cf6
  9c7cdc:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  9c7ce0:	8b 02                                           	mov    eax,DWORD PTR [edx]
  9c7ce2:	3b 44 24 20                                     	cmp    eax,DWORD PTR [esp+0x20]
  9c7ce6:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
  9c7cea:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  9c7cee:	0f 85 3c f9 ff ff                               	jne    0x9c7630
  9c7cf4:	eb 05                                           	jmp    0x9c7cfb
  9c7cf6:	c6 44 24 13 00                                  	mov    BYTE PTR [esp+0x13],0x0
  9c7cfb:	5f                                              	pop    edi
  9c7cfc:	5d                                              	pop    ebp
  9c7cfd:	6a 00                                           	push   0x0
  9c7cff:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  9c7d03:	e8 48 8f b3 ff                                  	call   0x500c50
  9c7d08:	8d b3 00 01 00 00                               	lea    esi,[ebx+0x100]
  9c7d0e:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  9c7d12:	56                                              	push   esi
  9c7d13:	50                                              	push   eax
  9c7d14:	e8 d7 8f b3 ff                                  	call   0x500cf0
  9c7d19:	83 c4 08                                        	add    esp,0x8
  9c7d1c:	84 c0                                           	test   al,al
  9c7d1e:	74 3e                                           	je     0x9c7d5e
  9c7d20:	8b 4b 04                                        	mov    ecx,DWORD PTR [ebx+0x4]
  9c7d23:	3b 4b 08                                        	cmp    ecx,DWORD PTR [ebx+0x8]
  9c7d26:	74 36                                           	je     0x9c7d5e
  9c7d28:	8b c1                                           	mov    eax,ecx
  9c7d2a:	3b 43 08                                        	cmp    eax,DWORD PTR [ebx+0x8]
  9c7d2d:	74 2f                                           	je     0x9c7d5e
  9c7d2f:	90                                              	nop
  9c7d30:	83 b8 5c 08 00 00 00                            	cmp    DWORD PTR [eax+0x85c],0x0
  9c7d37:	74 0c                                           	je     0x9c7d45
  9c7d39:	05 68 08 00 00                                  	add    eax,0x868
  9c7d3e:	3b 43 08                                        	cmp    eax,DWORD PTR [ebx+0x8]
  9c7d41:	75 ed                                           	jne    0x9c7d30
  9c7d43:	eb 19                                           	jmp    0x9c7d5e
  9c7d45:	83 c0 08                                        	add    eax,0x8
  9c7d48:	50                                              	push   eax
  9c7d49:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  9c7d4d:	e8 3e 8f b3 ff                                  	call   0x500c90
  9c7d52:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  9c7d56:	52                                              	push   edx
  9c7d57:	8b ce                                           	mov    ecx,esi
  9c7d59:	e8 32 8f b3 ff                                  	call   0x500c90
  9c7d5e:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  9c7d65:	e8 36 ca ae ff                                  	call   0x4b47a0
  9c7d6a:	8d 8c 24 74 01 00 00                            	lea    ecx,[esp+0x174]
  9c7d71:	e8 5a f7 ae ff                                  	call   0x4b74d0
  9c7d76:	8a 44 24 0b                                     	mov    al,BYTE PTR [esp+0xb]
  9c7d7a:	5e                                              	pop    esi
  9c7d7b:	5b                                              	pop    ebx
  9c7d7c:	81 c4 30 02 00 00                               	add    esp,0x230
  9c7d82:	c2 04 00                                        	ret    0x4
