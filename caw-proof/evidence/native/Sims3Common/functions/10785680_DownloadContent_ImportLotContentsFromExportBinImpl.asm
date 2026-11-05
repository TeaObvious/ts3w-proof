# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785680 (DownloadContent_ImportLotContentsFromExportBinImpl)
Paired Ghidra pseudocode: 10785680_DownloadContent_ImportLotContentsFromExportBinImpl.c
Window: [0x10785680, 0x107857b0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x107857b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785680: 83 ec 2c 53 56 57 e8 95 5a dd ff 33 db 3b c3 0f
10785690: 84 06 01 00 00 8b 4c 24 3c 8b 10 8b 52 58 51 8b
107856a0: c8 ff d2 50 8d 4c 24 14 89 5c 24 14 89 5c 24 18
107856b0: 89 5c 24 1c c7 44 24 20 2c 8d b5 10 e8 5f 4f 8e
107856c0: ff 8b 35 94 de c8 10 8b 3d d8 e9 c6 10 8b ce e8
107856d0: ec b0 00 00 84 c0 0f 85 a0 00 00 00 8d 44 24 0c
107856e0: 50 8d 4c 24 14 51 8b ce 89 5c 24 14 e8 bf c9 00
107856f0: 00 84 c0 74 74 8b 54 24 0c 55 6a 01 52 8d 4c 24
10785700: 2c e8 8a 51 e4 ff 8b 44 24 44 50 8d 4c 24 28 51
10785710: 8b cf e8 99 6b 91 ff 8b ce 8b f8 8b ea e8 2e b0
10785720: 00 00 8d 4c 24 24 e8 d5 51 e4 ff 8b 44 24 10 3b
10785730: c3 74 0b 8b 50 04 8d 48 04 8b 42 04 ff d0 8b 4c
10785740: 24 1c 8b 44 24 14 2b c8 83 e1 fe 83 f9 02 7e 0d
10785750: 3b c3 74 09 50 e8 36 37 19 00 83 c4 04 8b d5 5d
10785760: 8b c7 5f 5e 5b 83 c4 2c c3 8b 44 24 0c 3b c3 74
10785770: 0b 8b 50 04 8d 48 04 8b 42 04 ff d0 8b 4c 24 18
10785780: 8b 44 24 10 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c3
10785790: 74 09 50 e8 f8 36 19 00 83 c4 04 5f 5e 33 c0 33
107857a0: d2 5b 83 c4 2c c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10785680 <.text+0x784680>:
10785680:	83 ec 2c                                        	sub    esp,0x2c
10785683:	53                                              	push   ebx
10785684:	56                                              	push   esi
10785685:	57                                              	push   edi
10785686:	e8 95 5a dd ff                                  	call   0x1055b120
1078568b:	33 db                                           	xor    ebx,ebx
1078568d:	3b c3                                           	cmp    eax,ebx
1078568f:	0f 84 06 01 00 00                               	je     0x1078579b
10785695:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
10785699:	8b 10                                           	mov    edx,DWORD PTR [eax]
1078569b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1078569e:	51                                              	push   ecx
1078569f:	8b c8                                           	mov    ecx,eax
107856a1:	ff d2                                           	call   edx
107856a3:	50                                              	push   eax
107856a4:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
107856a8:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
107856ac:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
107856b0:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
107856b4:	c7 44 24 20 2c 8d b5 10                         	mov    DWORD PTR [esp+0x20],0x10b58d2c
107856bc:	e8 5f 4f 8e ff                                  	call   0x1006a620
107856c1:	8b 35 94 de c8 10                               	mov    esi,DWORD PTR ds:0x10c8de94
107856c7:	8b 3d d8 e9 c6 10                               	mov    edi,DWORD PTR ds:0x10c6e9d8
107856cd:	8b ce                                           	mov    ecx,esi
107856cf:	e8 ec b0 00 00                                  	call   0x107907c0
107856d4:	84 c0                                           	test   al,al
107856d6:	0f 85 a0 00 00 00                               	jne    0x1078577c
107856dc:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
107856e0:	50                                              	push   eax
107856e1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
107856e5:	51                                              	push   ecx
107856e6:	8b ce                                           	mov    ecx,esi
107856e8:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
107856ec:	e8 bf c9 00 00                                  	call   0x107920b0
107856f1:	84 c0                                           	test   al,al
107856f3:	74 74                                           	je     0x10785769
107856f5:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
107856f9:	55                                              	push   ebp
107856fa:	6a 01                                           	push   0x1
107856fc:	52                                              	push   edx
107856fd:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10785701:	e8 8a 51 e4 ff                                  	call   0x105ca890
10785706:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
1078570a:	50                                              	push   eax
1078570b:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1078570f:	51                                              	push   ecx
10785710:	8b cf                                           	mov    ecx,edi
10785712:	e8 99 6b 91 ff                                  	call   0x1009c2b0
10785717:	8b ce                                           	mov    ecx,esi
10785719:	8b f8                                           	mov    edi,eax
1078571b:	8b ea                                           	mov    ebp,edx
1078571d:	e8 2e b0 00 00                                  	call   0x10790750
10785722:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10785726:	e8 d5 51 e4 ff                                  	call   0x105ca900
1078572b:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1078572f:	3b c3                                           	cmp    eax,ebx
10785731:	74 0b                                           	je     0x1078573e
10785733:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785736:	8d 48 04                                        	lea    ecx,[eax+0x4]
10785739:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1078573c:	ff d0                                           	call   eax
1078573e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10785742:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10785746:	2b c8                                           	sub    ecx,eax
10785748:	83 e1 fe                                        	and    ecx,0xfffffffe
1078574b:	83 f9 02                                        	cmp    ecx,0x2
1078574e:	7e 0d                                           	jle    0x1078575d
10785750:	3b c3                                           	cmp    eax,ebx
10785752:	74 09                                           	je     0x1078575d
10785754:	50                                              	push   eax
10785755:	e8 36 37 19 00                                  	call   0x10918e90
1078575a:	83 c4 04                                        	add    esp,0x4
1078575d:	8b d5                                           	mov    edx,ebp
1078575f:	5d                                              	pop    ebp
10785760:	8b c7                                           	mov    eax,edi
10785762:	5f                                              	pop    edi
10785763:	5e                                              	pop    esi
10785764:	5b                                              	pop    ebx
10785765:	83 c4 2c                                        	add    esp,0x2c
10785768:	c3                                              	ret
10785769:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1078576d:	3b c3                                           	cmp    eax,ebx
1078576f:	74 0b                                           	je     0x1078577c
10785771:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10785774:	8d 48 04                                        	lea    ecx,[eax+0x4]
10785777:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1078577a:	ff d0                                           	call   eax
1078577c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10785780:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10785784:	2b c8                                           	sub    ecx,eax
10785786:	83 e1 fe                                        	and    ecx,0xfffffffe
10785789:	83 f9 02                                        	cmp    ecx,0x2
1078578c:	7e 0d                                           	jle    0x1078579b
1078578e:	3b c3                                           	cmp    eax,ebx
10785790:	74 09                                           	je     0x1078579b
10785792:	50                                              	push   eax
10785793:	e8 f8 36 19 00                                  	call   0x10918e90
10785798:	83 c4 04                                        	add    esp,0x4
1078579b:	5f                                              	pop    edi
1078579c:	5e                                              	pop    esi
1078579d:	33 c0                                           	xor    eax,eax
1078579f:	33 d2                                           	xor    edx,edx
107857a1:	5b                                              	pop    ebx
107857a2:	83 c4 2c                                        	add    esp,0x2c
107857a5:	c3                                              	ret
107857a6:	cc                                              	int3
107857a7:	cc                                              	int3
107857a8:	cc                                              	int3
107857a9:	cc                                              	int3
107857aa:	cc                                              	int3
107857ab:	cc                                              	int3
107857ac:	cc                                              	int3
107857ad:	cc                                              	int3
107857ae:	cc                                              	int3
107857af:	cc                                              	int3
