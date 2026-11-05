# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052e830 (Automation_EnableNetworkListening)
Paired Ghidra pseudocode: 1052E830_Automation_EnableNetworkListening.c
Window: [0x1052e830, 0x1052e9f0) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052e9f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052e830: 83 ec 50 a1 bc 86 c7 10 53 b9 02 00 00 00 57 66
1052e840: 89 4c 24 20 66 89 4c 24 3c a3 b8 86 c7 10 b8 10
1052e850: 10 00 00 8d 4c 24 20 33 ff 6a ff 51 89 7c 24 2c
1052e860: 66 89 44 24 2a 89 7c 24 48 66 89 44 24 46 e8 1d
1052e870: 63 40 00 6a 01 8d 54 24 1c 8a d8 8b 44 24 30 52
1052e880: 50 e8 6a 62 40 00 83 c4 14 84 db 75 08 5f 32 c0
1052e890: 5b 83 c4 50 c3 56 e8 35 6e 40 00 85 c0 75 50 57
1052e8a0: 57 57 57 68 d8 9c b1 10 68 cc 01 00 00 e8 fe a5
1052e8b0: 3e 00 83 c4 18 3b c7 74 0b 8b c8 e8 b0 64 40 00
1052e8c0: 8b f0 eb 02 33 f6 8b 16 8b 42 04 8b ce ff d0 84
1052e8d0: c0 75 13 8b 16 8b 02 6a 01 8b ce ff d0 5e 5f 32
1052e8e0: c0 5b 83 c4 50 c3 56 e8 f4 6d 40 00 83 c4 04 a1
1052e8f0: b8 86 c7 10 8b 70 08 3b f7 55 8b 68 04 0f 84 df
1052e900: 00 00 00 3b ef 0f 84 d7 00 00 00 8b 16 8b 42 24
1052e910: 8b ce ff d0 84 c0 0f 84 c6 00 00 00 8b 55 00 8b
1052e920: 42 24 8b cd ff d0 84 c0 0f 84 b4 00 00 00 8b 16
1052e930: 8b 52 2c 8d 44 24 44 50 8b ce ff d2 84 c0 0f 84
1052e940: 9e 00 00 00 8b 46 7c 8b 50 1c 83 c6 7c 68 f4 01
1052e950: 00 00 8b ce ff d2 84 c0 0f 84 84 00 00 00 8b 06
1052e960: 8b 50 30 6a 00 8b ce ff d2 84 c0 75 2d bb e8 03
1052e970: 00 00 83 ff 0a 73 23 8d 44 24 14 50 89 5c 24 18
1052e980: e8 4b 79 3e 00 8b 16 8b 42 30 83 c4 04 6a 00 8b
1052e990: ce 83 c7 01 ff d0 84 c0 74 d8 8b 16 8b 42 30 6a
1052e9a0: 00 8b ce ff d0 84 c0 74 39 8d 4c 24 13 c6 44 24
1052e9b0: 13 00 8b 16 8b 52 38 51 8d 45 7c 50 8b ce ff d2
1052e9c0: 84 c0 74 14 80 7c 24 13 00 74 0d 5d 5e 5f b8 01
1052e9d0: 00 00 00 5b 83 c4 50 c3 5d 5e 5f 33 c0 5b 83 c4
1052e9e0: 50 c3 5d 5e 5f 32 c0 5b 83 c4 50 c3 cc cc cc cc

LINEAR DISASSEMBLY
1052e830 <.text+0x52d830>:
1052e830:	83 ec 50                                        	sub    esp,0x50
1052e833:	a1 bc 86 c7 10                                  	mov    eax,ds:0x10c786bc
1052e838:	53                                              	push   ebx
1052e839:	b9 02 00 00 00                                  	mov    ecx,0x2
1052e83e:	57                                              	push   edi
1052e83f:	66 89 4c 24 20                                  	mov    WORD PTR [esp+0x20],cx
1052e844:	66 89 4c 24 3c                                  	mov    WORD PTR [esp+0x3c],cx
1052e849:	a3 b8 86 c7 10                                  	mov    ds:0x10c786b8,eax
1052e84e:	b8 10 10 00 00                                  	mov    eax,0x1010
1052e853:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1052e857:	33 ff                                           	xor    edi,edi
1052e859:	6a ff                                           	push   0xffffffff
1052e85b:	51                                              	push   ecx
1052e85c:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
1052e860:	66 89 44 24 2a                                  	mov    WORD PTR [esp+0x2a],ax
1052e865:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
1052e869:	66 89 44 24 46                                  	mov    WORD PTR [esp+0x46],ax
1052e86e:	e8 1d 63 40 00                                  	call   0x10934b90
1052e873:	6a 01                                           	push   0x1
1052e875:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
1052e879:	8a d8                                           	mov    bl,al
1052e87b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1052e87f:	52                                              	push   edx
1052e880:	50                                              	push   eax
1052e881:	e8 6a 62 40 00                                  	call   0x10934af0
1052e886:	83 c4 14                                        	add    esp,0x14
1052e889:	84 db                                           	test   bl,bl
1052e88b:	75 08                                           	jne    0x1052e895
1052e88d:	5f                                              	pop    edi
1052e88e:	32 c0                                           	xor    al,al
1052e890:	5b                                              	pop    ebx
1052e891:	83 c4 50                                        	add    esp,0x50
1052e894:	c3                                              	ret
1052e895:	56                                              	push   esi
1052e896:	e8 35 6e 40 00                                  	call   0x109356d0
1052e89b:	85 c0                                           	test   eax,eax
1052e89d:	75 50                                           	jne    0x1052e8ef
1052e89f:	57                                              	push   edi
1052e8a0:	57                                              	push   edi
1052e8a1:	57                                              	push   edi
1052e8a2:	57                                              	push   edi
1052e8a3:	68 d8 9c b1 10                                  	push   0x10b19cd8
1052e8a8:	68 cc 01 00 00                                  	push   0x1cc
1052e8ad:	e8 fe a5 3e 00                                  	call   0x10918eb0
1052e8b2:	83 c4 18                                        	add    esp,0x18
1052e8b5:	3b c7                                           	cmp    eax,edi
1052e8b7:	74 0b                                           	je     0x1052e8c4
1052e8b9:	8b c8                                           	mov    ecx,eax
1052e8bb:	e8 b0 64 40 00                                  	call   0x10934d70
1052e8c0:	8b f0                                           	mov    esi,eax
1052e8c2:	eb 02                                           	jmp    0x1052e8c6
1052e8c4:	33 f6                                           	xor    esi,esi
1052e8c6:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052e8c8:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1052e8cb:	8b ce                                           	mov    ecx,esi
1052e8cd:	ff d0                                           	call   eax
1052e8cf:	84 c0                                           	test   al,al
1052e8d1:	75 13                                           	jne    0x1052e8e6
1052e8d3:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052e8d5:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052e8d7:	6a 01                                           	push   0x1
1052e8d9:	8b ce                                           	mov    ecx,esi
1052e8db:	ff d0                                           	call   eax
1052e8dd:	5e                                              	pop    esi
1052e8de:	5f                                              	pop    edi
1052e8df:	32 c0                                           	xor    al,al
1052e8e1:	5b                                              	pop    ebx
1052e8e2:	83 c4 50                                        	add    esp,0x50
1052e8e5:	c3                                              	ret
1052e8e6:	56                                              	push   esi
1052e8e7:	e8 f4 6d 40 00                                  	call   0x109356e0
1052e8ec:	83 c4 04                                        	add    esp,0x4
1052e8ef:	a1 b8 86 c7 10                                  	mov    eax,ds:0x10c786b8
1052e8f4:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
1052e8f7:	3b f7                                           	cmp    esi,edi
1052e8f9:	55                                              	push   ebp
1052e8fa:	8b 68 04                                        	mov    ebp,DWORD PTR [eax+0x4]
1052e8fd:	0f 84 df 00 00 00                               	je     0x1052e9e2
1052e903:	3b ef                                           	cmp    ebp,edi
1052e905:	0f 84 d7 00 00 00                               	je     0x1052e9e2
1052e90b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052e90d:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
1052e910:	8b ce                                           	mov    ecx,esi
1052e912:	ff d0                                           	call   eax
1052e914:	84 c0                                           	test   al,al
1052e916:	0f 84 c6 00 00 00                               	je     0x1052e9e2
1052e91c:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
1052e91f:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
1052e922:	8b cd                                           	mov    ecx,ebp
1052e924:	ff d0                                           	call   eax
1052e926:	84 c0                                           	test   al,al
1052e928:	0f 84 b4 00 00 00                               	je     0x1052e9e2
1052e92e:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052e930:	8b 52 2c                                        	mov    edx,DWORD PTR [edx+0x2c]
1052e933:	8d 44 24 44                                     	lea    eax,[esp+0x44]
1052e937:	50                                              	push   eax
1052e938:	8b ce                                           	mov    ecx,esi
1052e93a:	ff d2                                           	call   edx
1052e93c:	84 c0                                           	test   al,al
1052e93e:	0f 84 9e 00 00 00                               	je     0x1052e9e2
1052e944:	8b 46 7c                                        	mov    eax,DWORD PTR [esi+0x7c]
1052e947:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
1052e94a:	83 c6 7c                                        	add    esi,0x7c
1052e94d:	68 f4 01 00 00                                  	push   0x1f4
1052e952:	8b ce                                           	mov    ecx,esi
1052e954:	ff d2                                           	call   edx
1052e956:	84 c0                                           	test   al,al
1052e958:	0f 84 84 00 00 00                               	je     0x1052e9e2
1052e95e:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052e960:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
1052e963:	6a 00                                           	push   0x0
1052e965:	8b ce                                           	mov    ecx,esi
1052e967:	ff d2                                           	call   edx
1052e969:	84 c0                                           	test   al,al
1052e96b:	75 2d                                           	jne    0x1052e99a
1052e96d:	bb e8 03 00 00                                  	mov    ebx,0x3e8
1052e972:	83 ff 0a                                        	cmp    edi,0xa
1052e975:	73 23                                           	jae    0x1052e99a
1052e977:	8d 44 24 14                                     	lea    eax,[esp+0x14]
1052e97b:	50                                              	push   eax
1052e97c:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
1052e980:	e8 4b 79 3e 00                                  	call   0x109162d0
1052e985:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052e987:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
1052e98a:	83 c4 04                                        	add    esp,0x4
1052e98d:	6a 00                                           	push   0x0
1052e98f:	8b ce                                           	mov    ecx,esi
1052e991:	83 c7 01                                        	add    edi,0x1
1052e994:	ff d0                                           	call   eax
1052e996:	84 c0                                           	test   al,al
1052e998:	74 d8                                           	je     0x1052e972
1052e99a:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052e99c:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
1052e99f:	6a 00                                           	push   0x0
1052e9a1:	8b ce                                           	mov    ecx,esi
1052e9a3:	ff d0                                           	call   eax
1052e9a5:	84 c0                                           	test   al,al
1052e9a7:	74 39                                           	je     0x1052e9e2
1052e9a9:	8d 4c 24 13                                     	lea    ecx,[esp+0x13]
1052e9ad:	c6 44 24 13 00                                  	mov    BYTE PTR [esp+0x13],0x0
1052e9b2:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052e9b4:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
1052e9b7:	51                                              	push   ecx
1052e9b8:	8d 45 7c                                        	lea    eax,[ebp+0x7c]
1052e9bb:	50                                              	push   eax
1052e9bc:	8b ce                                           	mov    ecx,esi
1052e9be:	ff d2                                           	call   edx
1052e9c0:	84 c0                                           	test   al,al
1052e9c2:	74 14                                           	je     0x1052e9d8
1052e9c4:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
1052e9c9:	74 0d                                           	je     0x1052e9d8
1052e9cb:	5d                                              	pop    ebp
1052e9cc:	5e                                              	pop    esi
1052e9cd:	5f                                              	pop    edi
1052e9ce:	b8 01 00 00 00                                  	mov    eax,0x1
1052e9d3:	5b                                              	pop    ebx
1052e9d4:	83 c4 50                                        	add    esp,0x50
1052e9d7:	c3                                              	ret
1052e9d8:	5d                                              	pop    ebp
1052e9d9:	5e                                              	pop    esi
1052e9da:	5f                                              	pop    edi
1052e9db:	33 c0                                           	xor    eax,eax
1052e9dd:	5b                                              	pop    ebx
1052e9de:	83 c4 50                                        	add    esp,0x50
1052e9e1:	c3                                              	ret
1052e9e2:	5d                                              	pop    ebp
1052e9e3:	5e                                              	pop    esi
1052e9e4:	5f                                              	pop    edi
1052e9e5:	32 c0                                           	xor    al,al
1052e9e7:	5b                                              	pop    ebx
1052e9e8:	83 c4 50                                        	add    esp,0x50
1052e9eb:	c3                                              	ret
1052e9ec:	cc                                              	int3
1052e9ed:	cc                                              	int3
1052e9ee:	cc                                              	int3
1052e9ef:	cc                                              	int3
