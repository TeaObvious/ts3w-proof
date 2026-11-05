# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original PC1.67 TS3W.exe function envelope; paired actual annotated Ghidra C: 0093A8D0_ObjectSignatureMap_WriteVersionOne.c.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093a8d0 <.text+0x5398d0>:
  93a8d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  93a8d4:	83 ec 18                                        	sub    esp,0x18
  93a8d7:	53                                              	push   ebx
  93a8d8:	55                                              	push   ebp
  93a8d9:	56                                              	push   esi
  93a8da:	57                                              	push   edi
  93a8db:	6a 01                                           	push   0x1
  93a8dd:	8b f9                                           	mov    edi,ecx
  93a8df:	50                                              	push   eax
  93a8e0:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  93a8e4:	e8 f7 ea e9 ff                                  	call   0x7d93e0
  93a8e9:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  93a8ed:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  93a8f1:	51                                              	push   ecx
  93a8f2:	6a 01                                           	push   0x1
  93a8f4:	52                                              	push   edx
  93a8f5:	e8 76 36 ba ff                                  	call   0x4ddf70
  93a8fa:	83 c4 0c                                        	add    esp,0xc
  93a8fd:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  93a901:	50                                              	push   eax
  93a902:	e8 e9 d0 e9 ff                                  	call   0x7d79f0
  93a907:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  93a90b:	8b 47 48                                        	mov    eax,DWORD PTR [edi+0x48]
  93a90e:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  93a912:	51                                              	push   ecx
  93a913:	50                                              	push   eax
  93a914:	52                                              	push   edx
  93a915:	e8 56 36 ba ff                                  	call   0x4ddf70
  93a91a:	83 c4 0c                                        	add    esp,0xc
  93a91d:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  93a921:	50                                              	push   eax
  93a922:	e8 c9 d0 e9 ff                                  	call   0x7d79f0
  93a927:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  93a92b:	8b 47 34                                        	mov    eax,DWORD PTR [edi+0x34]
  93a92e:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  93a932:	51                                              	push   ecx
  93a933:	50                                              	push   eax
  93a934:	52                                              	push   edx
  93a935:	e8 36 36 ba ff                                  	call   0x4ddf70
  93a93a:	83 c4 0c                                        	add    esp,0xc
  93a93d:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  93a941:	50                                              	push   eax
  93a942:	e8 a9 d0 e9 ff                                  	call   0x7d79f0
  93a947:	8b 47 2c                                        	mov    eax,DWORD PTR [edi+0x2c]
  93a94a:	8b 30                                           	mov    esi,DWORD PTR [eax]
  93a94c:	85 f6                                           	test   esi,esi
  93a94e:	75 11                                           	jne    0x93a961
  93a950:	83 c0 04                                        	add    eax,0x4
  93a953:	39 30                                           	cmp    DWORD PTR [eax],esi
  93a955:	75 08                                           	jne    0x93a95f
  93a957:	83 c0 04                                        	add    eax,0x4
  93a95a:	83 38 00                                        	cmp    DWORD PTR [eax],0x0
  93a95d:	74 f8                                           	je     0x93a957
  93a95f:	8b 30                                           	mov    esi,DWORD PTR [eax]
  93a961:	8b 4f 2c                                        	mov    ecx,DWORD PTR [edi+0x2c]
  93a964:	8b d8                                           	mov    ebx,eax
  93a966:	8b 47 30                                        	mov    eax,DWORD PTR [edi+0x30]
  93a969:	8b 2c 81                                        	mov    ebp,DWORD PTR [ecx+eax*4]
  93a96c:	3b f5                                           	cmp    esi,ebp
  93a96e:	74 5e                                           	je     0x93a9ce
  93a970:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  93a974:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  93a977:	8b 06                                           	mov    eax,DWORD PTR [esi]
  93a979:	8b 7e 08                                        	mov    edi,DWORD PTR [esi+0x8]
  93a97c:	52                                              	push   edx
  93a97d:	51                                              	push   ecx
  93a97e:	50                                              	push   eax
  93a97f:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  93a983:	50                                              	push   eax
  93a984:	e8 37 37 ba ff                                  	call   0x4de0c0
  93a989:	83 c4 10                                        	add    esp,0x10
  93a98c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  93a990:	50                                              	push   eax
  93a991:	e8 5a d0 e9 ff                                  	call   0x7d79f0
  93a996:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  93a99a:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  93a99e:	51                                              	push   ecx
  93a99f:	57                                              	push   edi
  93a9a0:	52                                              	push   edx
  93a9a1:	e8 ca 35 ba ff                                  	call   0x4ddf70
  93a9a6:	83 c4 0c                                        	add    esp,0xc
  93a9a9:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  93a9ad:	50                                              	push   eax
  93a9ae:	e8 3d d0 e9 ff                                  	call   0x7d79f0
  93a9b3:	8b 76 10                                        	mov    esi,DWORD PTR [esi+0x10]
  93a9b6:	85 f6                                           	test   esi,esi
  93a9b8:	75 10                                           	jne    0x93a9ca
  93a9ba:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  93a9c0:	8b 73 04                                        	mov    esi,DWORD PTR [ebx+0x4]
  93a9c3:	83 c3 04                                        	add    ebx,0x4
  93a9c6:	85 f6                                           	test   esi,esi
  93a9c8:	74 f6                                           	je     0x93a9c0
  93a9ca:	3b f5                                           	cmp    esi,ebp
  93a9cc:	75 a2                                           	jne    0x93a970
  93a9ce:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  93a9d2:	e8 b9 cf e9 ff                                  	call   0x7d7990
  93a9d7:	5f                                              	pop    edi
  93a9d8:	5e                                              	pop    esi
  93a9d9:	5d                                              	pop    ebp
  93a9da:	5b                                              	pop    ebx
  93a9db:	83 c4 18                                        	add    esp,0x18
  93a9de:	c2 04 00                                        	ret    0x4
