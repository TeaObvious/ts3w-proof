# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10530710 (Camera_Shake)
Paired Ghidra pseudocode: 10530710_Camera_Shake.c
Window: [0x10530710, 0x10530990) (640 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10530710: 55 8b ec 83 e4 f0 83 ec 24 53 56 57 e8 0f bf 22
10530720: 00 33 ff 3b c7 0f 84 57 02 00 00 8b c8 e8 4e 73
10530730: 40 00 3b c7 0f 84 48 02 00 00 8b c8 e8 0f c2 22
10530740: 00 3b c7 0f 84 39 02 00 00 8b 10 8b c8 8b 42 0c
10530750: 68 89 dd 0f 11 ff d0 3b c7 89 44 24 1c 0f 84 1f
10530760: 02 00 00 e8 b8 a9 02 00 8b f0 3b f7 0f 84 10 02
10530770: 00 00 57 57 57 57 68 e0 9d b1 10 6a 28 e8 2e 87
10530780: 3e 00 0f 57 c0 83 c4 18 3b c7 74 2d 89 78 08 89
10530790: 78 0c 89 78 10 c7 40 14 b0 9d b1 10 89 78 18 89
105307a0: 78 1c 89 78 20 f3 0f 11 00 f3 0f 11 40 04 c7 40
105307b0: 24 98 9d b1 10 8b d8 eb 02 33 db f3 0f 10 4d 08
105307c0: 8d 44 24 0c 50 8b 45 0c f3 0f 11 0b f3 0f 11 43
105307d0: 04 8b 16 8b 52 78 8d 4c 24 18 51 50 8b ce 89 7c
105307e0: 24 18 89 7c 24 20 ff d2 8b 06 8d 4c 24 10 51 8b
105307f0: 4d 10 8d 54 24 1c 52 8b 50 78 51 8b ce 89 7c 24
10530800: 1c 89 7c 24 24 ff d2 8b 44 24 0c 3b 44 24 10 0f
10530810: 85 0d 01 00 00 8d 7b 08 50 8b cf e8 c0 15 b0 ff
10530820: 33 c0 39 44 24 0c 7e 49 33 c9 8d 9b 00 00 00 00
10530830: 8b 54 24 14 f3 0f 10 04 82 8b 54 24 18 f3 0f 10
10530840: 0c 82 8b 17 f3 0f 11 44 24 2c f3 0f 11 44 24 28
10530850: f3 0f 11 4c 24 24 f3 0f 11 44 24 20 0f 28 44 24
10530860: 20 0f 29 04 0a 83 c0 01 83 c1 10 3b 44 24 0c 7c
10530870: bf 33 ff 8b 16 8b 52 78 8d 44 24 0c 50 8b 45 14
10530880: 8d 4c 24 18 51 50 8b ce ff d2 8b 06 8d 4c 24 10
10530890: 51 8b 4d 18 8d 54 24 1c 52 8b 50 78 51 8b ce ff
105308a0: d2 8b 44 24 0c 3b 44 24 10 0f 85 8d 00 00 00 8d
105308b0: 73 18 50 8b ce e8 26 15 b0 ff 33 c0 39 7c 24 0c
105308c0: 0f 8e b2 00 00 00 33 c9 eb 06 8d 9b 00 00 00 00
105308d0: 8b 54 24 14 f3 0f 10 04 82 8b 54 24 18 f3 0f 10
105308e0: 0c 82 8b 16 f3 0f 11 44 24 2c f3 0f 11 44 24 28
105308f0: f3 0f 11 4c 24 24 f3 0f 11 44 24 20 0f 28 44 24
10530900: 20 0f 29 04 0a 83 c0 01 83 c1 10 3b 44 24 0c 7c
10530910: bf 8b 4c 24 1c 53 e8 65 60 23 00 5f 5e 5b 8b e5
10530920: 5d c3 8d 44 24 20 0f 57 c0 50 8d 4b 08 0f 29 44
10530930: 24 24 e8 d9 18 ae ff e9 37 ff ff ff 8b 43 1c 3b
10530940: 43 20 8d 4b 18 0f 57 c0 0f 29 44 24 20 73 1e 3b
10530950: c7 8d 50 10 89 51 04 74 1f 8b 4c 24 1c 53 0f 29
10530960: 00 e8 1a 60 23 00 5f 5e 5b 8b e5 5d c3 8d 54 24
10530970: 20 52 50 e8 c8 00 c4 ff 8b 4c 24 1c 53 e8 fe 5f
10530980: 23 00 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10530710 <.text+0x52f710>:
10530710:	55                                              	push   ebp
10530711:	8b ec                                           	mov    ebp,esp
10530713:	83 e4 f0                                        	and    esp,0xfffffff0
10530716:	83 ec 24                                        	sub    esp,0x24
10530719:	53                                              	push   ebx
1053071a:	56                                              	push   esi
1053071b:	57                                              	push   edi
1053071c:	e8 0f bf 22 00                                  	call   0x1075c630
10530721:	33 ff                                           	xor    edi,edi
10530723:	3b c7                                           	cmp    eax,edi
10530725:	0f 84 57 02 00 00                               	je     0x10530982
1053072b:	8b c8                                           	mov    ecx,eax
1053072d:	e8 4e 73 40 00                                  	call   0x10937a80
10530732:	3b c7                                           	cmp    eax,edi
10530734:	0f 84 48 02 00 00                               	je     0x10530982
1053073a:	8b c8                                           	mov    ecx,eax
1053073c:	e8 0f c2 22 00                                  	call   0x1075c950
10530741:	3b c7                                           	cmp    eax,edi
10530743:	0f 84 39 02 00 00                               	je     0x10530982
10530749:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053074b:	8b c8                                           	mov    ecx,eax
1053074d:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10530750:	68 89 dd 0f 11                                  	push   0x110fdd89
10530755:	ff d0                                           	call   eax
10530757:	3b c7                                           	cmp    eax,edi
10530759:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1053075d:	0f 84 1f 02 00 00                               	je     0x10530982
10530763:	e8 b8 a9 02 00                                  	call   0x1055b120
10530768:	8b f0                                           	mov    esi,eax
1053076a:	3b f7                                           	cmp    esi,edi
1053076c:	0f 84 10 02 00 00                               	je     0x10530982
10530772:	57                                              	push   edi
10530773:	57                                              	push   edi
10530774:	57                                              	push   edi
10530775:	57                                              	push   edi
10530776:	68 e0 9d b1 10                                  	push   0x10b19de0
1053077b:	6a 28                                           	push   0x28
1053077d:	e8 2e 87 3e 00                                  	call   0x10918eb0
10530782:	0f 57 c0                                        	xorps  xmm0,xmm0
10530785:	83 c4 18                                        	add    esp,0x18
10530788:	3b c7                                           	cmp    eax,edi
1053078a:	74 2d                                           	je     0x105307b9
1053078c:	89 78 08                                        	mov    DWORD PTR [eax+0x8],edi
1053078f:	89 78 0c                                        	mov    DWORD PTR [eax+0xc],edi
10530792:	89 78 10                                        	mov    DWORD PTR [eax+0x10],edi
10530795:	c7 40 14 b0 9d b1 10                            	mov    DWORD PTR [eax+0x14],0x10b19db0
1053079c:	89 78 18                                        	mov    DWORD PTR [eax+0x18],edi
1053079f:	89 78 1c                                        	mov    DWORD PTR [eax+0x1c],edi
105307a2:	89 78 20                                        	mov    DWORD PTR [eax+0x20],edi
105307a5:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
105307a9:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
105307ae:	c7 40 24 98 9d b1 10                            	mov    DWORD PTR [eax+0x24],0x10b19d98
105307b5:	8b d8                                           	mov    ebx,eax
105307b7:	eb 02                                           	jmp    0x105307bb
105307b9:	33 db                                           	xor    ebx,ebx
105307bb:	f3 0f 10 4d 08                                  	movss  xmm1,DWORD PTR [ebp+0x8]
105307c0:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
105307c4:	50                                              	push   eax
105307c5:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
105307c8:	f3 0f 11 0b                                     	movss  DWORD PTR [ebx],xmm1
105307cc:	f3 0f 11 43 04                                  	movss  DWORD PTR [ebx+0x4],xmm0
105307d1:	8b 16                                           	mov    edx,DWORD PTR [esi]
105307d3:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
105307d6:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
105307da:	51                                              	push   ecx
105307db:	50                                              	push   eax
105307dc:	8b ce                                           	mov    ecx,esi
105307de:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
105307e2:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
105307e6:	ff d2                                           	call   edx
105307e8:	8b 06                                           	mov    eax,DWORD PTR [esi]
105307ea:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
105307ee:	51                                              	push   ecx
105307ef:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
105307f2:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
105307f6:	52                                              	push   edx
105307f7:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
105307fa:	51                                              	push   ecx
105307fb:	8b ce                                           	mov    ecx,esi
105307fd:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
10530801:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
10530805:	ff d2                                           	call   edx
10530807:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1053080b:	3b 44 24 10                                     	cmp    eax,DWORD PTR [esp+0x10]
1053080f:	0f 85 0d 01 00 00                               	jne    0x10530922
10530815:	8d 7b 08                                        	lea    edi,[ebx+0x8]
10530818:	50                                              	push   eax
10530819:	8b cf                                           	mov    ecx,edi
1053081b:	e8 c0 15 b0 ff                                  	call   0x10031de0
10530820:	33 c0                                           	xor    eax,eax
10530822:	39 44 24 0c                                     	cmp    DWORD PTR [esp+0xc],eax
10530826:	7e 49                                           	jle    0x10530871
10530828:	33 c9                                           	xor    ecx,ecx
1053082a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10530830:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10530834:	f3 0f 10 04 82                                  	movss  xmm0,DWORD PTR [edx+eax*4]
10530839:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1053083d:	f3 0f 10 0c 82                                  	movss  xmm1,DWORD PTR [edx+eax*4]
10530842:	8b 17                                           	mov    edx,DWORD PTR [edi]
10530844:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
1053084a:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
10530850:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
10530856:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1053085c:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
10530861:	0f 29 04 0a                                     	movaps XMMWORD PTR [edx+ecx*1],xmm0
10530865:	83 c0 01                                        	add    eax,0x1
10530868:	83 c1 10                                        	add    ecx,0x10
1053086b:	3b 44 24 0c                                     	cmp    eax,DWORD PTR [esp+0xc]
1053086f:	7c bf                                           	jl     0x10530830
10530871:	33 ff                                           	xor    edi,edi
10530873:	8b 16                                           	mov    edx,DWORD PTR [esi]
10530875:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
10530878:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
1053087c:	50                                              	push   eax
1053087d:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
10530880:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10530884:	51                                              	push   ecx
10530885:	50                                              	push   eax
10530886:	8b ce                                           	mov    ecx,esi
10530888:	ff d2                                           	call   edx
1053088a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1053088c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10530890:	51                                              	push   ecx
10530891:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
10530894:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
10530898:	52                                              	push   edx
10530899:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
1053089c:	51                                              	push   ecx
1053089d:	8b ce                                           	mov    ecx,esi
1053089f:	ff d2                                           	call   edx
105308a1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105308a5:	3b 44 24 10                                     	cmp    eax,DWORD PTR [esp+0x10]
105308a9:	0f 85 8d 00 00 00                               	jne    0x1053093c
105308af:	8d 73 18                                        	lea    esi,[ebx+0x18]
105308b2:	50                                              	push   eax
105308b3:	8b ce                                           	mov    ecx,esi
105308b5:	e8 26 15 b0 ff                                  	call   0x10031de0
105308ba:	33 c0                                           	xor    eax,eax
105308bc:	39 7c 24 0c                                     	cmp    DWORD PTR [esp+0xc],edi
105308c0:	0f 8e b2 00 00 00                               	jle    0x10530978
105308c6:	33 c9                                           	xor    ecx,ecx
105308c8:	eb 06                                           	jmp    0x105308d0
105308ca:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
105308d0:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
105308d4:	f3 0f 10 04 82                                  	movss  xmm0,DWORD PTR [edx+eax*4]
105308d9:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
105308dd:	f3 0f 10 0c 82                                  	movss  xmm1,DWORD PTR [edx+eax*4]
105308e2:	8b 16                                           	mov    edx,DWORD PTR [esi]
105308e4:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
105308ea:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
105308f0:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
105308f6:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
105308fc:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
10530901:	0f 29 04 0a                                     	movaps XMMWORD PTR [edx+ecx*1],xmm0
10530905:	83 c0 01                                        	add    eax,0x1
10530908:	83 c1 10                                        	add    ecx,0x10
1053090b:	3b 44 24 0c                                     	cmp    eax,DWORD PTR [esp+0xc]
1053090f:	7c bf                                           	jl     0x105308d0
10530911:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10530915:	53                                              	push   ebx
10530916:	e8 65 60 23 00                                  	call   0x10766980
1053091b:	5f                                              	pop    edi
1053091c:	5e                                              	pop    esi
1053091d:	5b                                              	pop    ebx
1053091e:	8b e5                                           	mov    esp,ebp
10530920:	5d                                              	pop    ebp
10530921:	c3                                              	ret
10530922:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10530926:	0f 57 c0                                        	xorps  xmm0,xmm0
10530929:	50                                              	push   eax
1053092a:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
1053092d:	0f 29 44 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm0
10530932:	e8 d9 18 ae ff                                  	call   0x10012210
10530937:	e9 37 ff ff ff                                  	jmp    0x10530873
1053093c:	8b 43 1c                                        	mov    eax,DWORD PTR [ebx+0x1c]
1053093f:	3b 43 20                                        	cmp    eax,DWORD PTR [ebx+0x20]
10530942:	8d 4b 18                                        	lea    ecx,[ebx+0x18]
10530945:	0f 57 c0                                        	xorps  xmm0,xmm0
10530948:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1053094d:	73 1e                                           	jae    0x1053096d
1053094f:	3b c7                                           	cmp    eax,edi
10530951:	8d 50 10                                        	lea    edx,[eax+0x10]
10530954:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10530957:	74 1f                                           	je     0x10530978
10530959:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1053095d:	53                                              	push   ebx
1053095e:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
10530961:	e8 1a 60 23 00                                  	call   0x10766980
10530966:	5f                                              	pop    edi
10530967:	5e                                              	pop    esi
10530968:	5b                                              	pop    ebx
10530969:	8b e5                                           	mov    esp,ebp
1053096b:	5d                                              	pop    ebp
1053096c:	c3                                              	ret
1053096d:	8d 54 24 20                                     	lea    edx,[esp+0x20]
10530971:	52                                              	push   edx
10530972:	50                                              	push   eax
10530973:	e8 c8 00 c4 ff                                  	call   0x10170a40
10530978:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1053097c:	53                                              	push   ebx
1053097d:	e8 fe 5f 23 00                                  	call   0x10766980
10530982:	5f                                              	pop    edi
10530983:	5e                                              	pop    esi
10530984:	5b                                              	pop    ebx
10530985:	8b e5                                           	mov    esp,ebp
10530987:	5d                                              	pop    ebp
10530988:	c3                                              	ret
10530989:	cc                                              	int3
1053098a:	cc                                              	int3
1053098b:	cc                                              	int3
1053098c:	cc                                              	int3
1053098d:	cc                                              	int3
1053098e:	cc                                              	int3
1053098f:	cc                                              	int3
