# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x106558f0 (Audio_StartSoundArrayImpl)
Paired Ghidra pseudocode: 106558F0_Audio_StartSoundArrayImpl.c
Window: [0x106558f0, 0x10655af0) (512 bytes; stop exclusive)
Next defined Ghidra entry: 0x10655af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
106558f0: a1 a0 d4 c7 10 83 ec 3c 53 55 33 db 3b c3 56 57
10655900: 74 08 8d b0 30 84 fd ff eb 02 33 f6 e8 8f 48 0d
10655910: 00 8b e8 e8 08 58 f0 ff 3b f3 8b f8 0f 84 4e 01
10655920: 00 00 3b eb 0f 84 46 01 00 00 3b fb 0f 84 3e 01
10655930: 00 00 8b 4c 24 50 8b 07 8b 50 58 51 8b cf ff d2
10655940: 50 8d 4c 24 30 89 5c 24 30 89 5c 24 34 89 5c 24
10655950: 38 c7 44 24 3c 54 85 b3 10 e8 c2 4c a1 ff 8b 4c
10655960: 24 54 8b 07 8b 50 58 51 8b cf ff d2 50 8d 4c 24
10655970: 20 89 5c 24 20 89 5c 24 24 89 5c 24 28 c7 44 24
10655980: 2c 40 85 b3 10 e8 96 4c a1 ff 8b 07 8d 4c 24 14
10655990: 51 8b 4c 24 5c 8d 54 24 14 52 8b 50 68 51 8b cf
106559a0: 89 5c 24 1c 89 5c 24 20 ff d2 8d 44 24 2c 50 8d
106559b0: 4c 24 40 51 e8 97 16 2d 00 8b 16 8b 42 28 8b 7c
106559c0: 24 44 83 c4 08 8b ce ff d0 8b 16 89 44 24 18 8b
106559d0: 42 44 68 be e8 29 0a 8b ce ff d0 8b 16 8b 42 54
106559e0: 53 57 68 7e 53 47 03 8b ce ff d0 8b 4c 24 10 8b
106559f0: 44 24 14 8b 7c 24 18 55 56 51 8d 54 24 28 52 50
10655a00: 57 e8 6a fb ff ff 8b 16 83 c4 18 84 c0 8b ce 75
10655a10: 69 8b 42 6c ff d0 8b 4c 24 44 8b 44 24 3c 2b c8
10655a20: 83 f9 01 7e 0d 3b c3 74 09 50 e8 61 34 2c 00 83
10655a30: c4 04 8b 54 24 24 8b 44 24 1c 2b d0 83 e2 fe 83
10655a40: fa 02 7e 0d 3b c3 74 09 50 e8 42 34 2c 00 83 c4
10655a50: 04 8b 4c 24 34 8b 44 24 2c 2b c8 83 e1 fe 83 f9
10655a60: 02 7e 0d 3b c3 74 09 50 e8 23 34 2c 00 83 c4 04
10655a70: 5f 5e 5d 33 c0 5b 83 c4 3c c3 8b 42 68 ff d0 8b
10655a80: 4c 24 44 8b 44 24 3c 2b c8 83 f9 01 7e 0d 3b c3
10655a90: 74 09 50 e8 f8 33 2c 00 83 c4 04 8b 54 24 24 8b
10655aa0: 44 24 1c 2b d0 83 e2 fe 83 fa 02 7e 0d 3b c3 74
10655ab0: 09 50 e8 d9 33 2c 00 83 c4 04 8b 4c 24 34 8b 44
10655ac0: 24 2c 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c3 74 09
10655ad0: 50 e8 ba 33 2c 00 83 c4 04 8b c7 5f 5e 5d 5b 83
10655ae0: c4 3c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
106558f0 <.text+0x6548f0>:
106558f0:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
106558f5:	83 ec 3c                                        	sub    esp,0x3c
106558f8:	53                                              	push   ebx
106558f9:	55                                              	push   ebp
106558fa:	33 db                                           	xor    ebx,ebx
106558fc:	3b c3                                           	cmp    eax,ebx
106558fe:	56                                              	push   esi
106558ff:	57                                              	push   edi
10655900:	74 08                                           	je     0x1065590a
10655902:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
10655908:	eb 02                                           	jmp    0x1065590c
1065590a:	33 f6                                           	xor    esi,esi
1065590c:	e8 8f 48 0d 00                                  	call   0x1072a1a0
10655911:	8b e8                                           	mov    ebp,eax
10655913:	e8 08 58 f0 ff                                  	call   0x1055b120
10655918:	3b f3                                           	cmp    esi,ebx
1065591a:	8b f8                                           	mov    edi,eax
1065591c:	0f 84 4e 01 00 00                               	je     0x10655a70
10655922:	3b eb                                           	cmp    ebp,ebx
10655924:	0f 84 46 01 00 00                               	je     0x10655a70
1065592a:	3b fb                                           	cmp    edi,ebx
1065592c:	0f 84 3e 01 00 00                               	je     0x10655a70
10655932:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
10655936:	8b 07                                           	mov    eax,DWORD PTR [edi]
10655938:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
1065593b:	51                                              	push   ecx
1065593c:	8b cf                                           	mov    ecx,edi
1065593e:	ff d2                                           	call   edx
10655940:	50                                              	push   eax
10655941:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10655945:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
10655949:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
1065594d:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
10655951:	c7 44 24 3c 54 85 b3 10                         	mov    DWORD PTR [esp+0x3c],0x10b38554
10655959:	e8 c2 4c a1 ff                                  	call   0x1006a620
1065595e:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
10655962:	8b 07                                           	mov    eax,DWORD PTR [edi]
10655964:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10655967:	51                                              	push   ecx
10655968:	8b cf                                           	mov    ecx,edi
1065596a:	ff d2                                           	call   edx
1065596c:	50                                              	push   eax
1065596d:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10655971:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
10655975:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
10655979:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
1065597d:	c7 44 24 2c 40 85 b3 10                         	mov    DWORD PTR [esp+0x2c],0x10b38540
10655985:	e8 96 4c a1 ff                                  	call   0x1006a620
1065598a:	8b 07                                           	mov    eax,DWORD PTR [edi]
1065598c:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10655990:	51                                              	push   ecx
10655991:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
10655995:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10655999:	52                                              	push   edx
1065599a:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
1065599d:	51                                              	push   ecx
1065599e:	8b cf                                           	mov    ecx,edi
106559a0:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
106559a4:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
106559a8:	ff d2                                           	call   edx
106559aa:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
106559ae:	50                                              	push   eax
106559af:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
106559b3:	51                                              	push   ecx
106559b4:	e8 97 16 2d 00                                  	call   0x10927050
106559b9:	8b 16                                           	mov    edx,DWORD PTR [esi]
106559bb:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
106559be:	8b 7c 24 44                                     	mov    edi,DWORD PTR [esp+0x44]
106559c2:	83 c4 08                                        	add    esp,0x8
106559c5:	8b ce                                           	mov    ecx,esi
106559c7:	ff d0                                           	call   eax
106559c9:	8b 16                                           	mov    edx,DWORD PTR [esi]
106559cb:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
106559cf:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
106559d2:	68 be e8 29 0a                                  	push   0xa29e8be
106559d7:	8b ce                                           	mov    ecx,esi
106559d9:	ff d0                                           	call   eax
106559db:	8b 16                                           	mov    edx,DWORD PTR [esi]
106559dd:	8b 42 54                                        	mov    eax,DWORD PTR [edx+0x54]
106559e0:	53                                              	push   ebx
106559e1:	57                                              	push   edi
106559e2:	68 7e 53 47 03                                  	push   0x347537e
106559e7:	8b ce                                           	mov    ecx,esi
106559e9:	ff d0                                           	call   eax
106559eb:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
106559ef:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
106559f3:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
106559f7:	55                                              	push   ebp
106559f8:	56                                              	push   esi
106559f9:	51                                              	push   ecx
106559fa:	8d 54 24 28                                     	lea    edx,[esp+0x28]
106559fe:	52                                              	push   edx
106559ff:	50                                              	push   eax
10655a00:	57                                              	push   edi
10655a01:	e8 6a fb ff ff                                  	call   0x10655570
10655a06:	8b 16                                           	mov    edx,DWORD PTR [esi]
10655a08:	83 c4 18                                        	add    esp,0x18
10655a0b:	84 c0                                           	test   al,al
10655a0d:	8b ce                                           	mov    ecx,esi
10655a0f:	75 69                                           	jne    0x10655a7a
10655a11:	8b 42 6c                                        	mov    eax,DWORD PTR [edx+0x6c]
10655a14:	ff d0                                           	call   eax
10655a16:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
10655a1a:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10655a1e:	2b c8                                           	sub    ecx,eax
10655a20:	83 f9 01                                        	cmp    ecx,0x1
10655a23:	7e 0d                                           	jle    0x10655a32
10655a25:	3b c3                                           	cmp    eax,ebx
10655a27:	74 09                                           	je     0x10655a32
10655a29:	50                                              	push   eax
10655a2a:	e8 61 34 2c 00                                  	call   0x10918e90
10655a2f:	83 c4 04                                        	add    esp,0x4
10655a32:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10655a36:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10655a3a:	2b d0                                           	sub    edx,eax
10655a3c:	83 e2 fe                                        	and    edx,0xfffffffe
10655a3f:	83 fa 02                                        	cmp    edx,0x2
10655a42:	7e 0d                                           	jle    0x10655a51
10655a44:	3b c3                                           	cmp    eax,ebx
10655a46:	74 09                                           	je     0x10655a51
10655a48:	50                                              	push   eax
10655a49:	e8 42 34 2c 00                                  	call   0x10918e90
10655a4e:	83 c4 04                                        	add    esp,0x4
10655a51:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10655a55:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10655a59:	2b c8                                           	sub    ecx,eax
10655a5b:	83 e1 fe                                        	and    ecx,0xfffffffe
10655a5e:	83 f9 02                                        	cmp    ecx,0x2
10655a61:	7e 0d                                           	jle    0x10655a70
10655a63:	3b c3                                           	cmp    eax,ebx
10655a65:	74 09                                           	je     0x10655a70
10655a67:	50                                              	push   eax
10655a68:	e8 23 34 2c 00                                  	call   0x10918e90
10655a6d:	83 c4 04                                        	add    esp,0x4
10655a70:	5f                                              	pop    edi
10655a71:	5e                                              	pop    esi
10655a72:	5d                                              	pop    ebp
10655a73:	33 c0                                           	xor    eax,eax
10655a75:	5b                                              	pop    ebx
10655a76:	83 c4 3c                                        	add    esp,0x3c
10655a79:	c3                                              	ret
10655a7a:	8b 42 68                                        	mov    eax,DWORD PTR [edx+0x68]
10655a7d:	ff d0                                           	call   eax
10655a7f:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
10655a83:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
10655a87:	2b c8                                           	sub    ecx,eax
10655a89:	83 f9 01                                        	cmp    ecx,0x1
10655a8c:	7e 0d                                           	jle    0x10655a9b
10655a8e:	3b c3                                           	cmp    eax,ebx
10655a90:	74 09                                           	je     0x10655a9b
10655a92:	50                                              	push   eax
10655a93:	e8 f8 33 2c 00                                  	call   0x10918e90
10655a98:	83 c4 04                                        	add    esp,0x4
10655a9b:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10655a9f:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10655aa3:	2b d0                                           	sub    edx,eax
10655aa5:	83 e2 fe                                        	and    edx,0xfffffffe
10655aa8:	83 fa 02                                        	cmp    edx,0x2
10655aab:	7e 0d                                           	jle    0x10655aba
10655aad:	3b c3                                           	cmp    eax,ebx
10655aaf:	74 09                                           	je     0x10655aba
10655ab1:	50                                              	push   eax
10655ab2:	e8 d9 33 2c 00                                  	call   0x10918e90
10655ab7:	83 c4 04                                        	add    esp,0x4
10655aba:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10655abe:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
10655ac2:	2b c8                                           	sub    ecx,eax
10655ac4:	83 e1 fe                                        	and    ecx,0xfffffffe
10655ac7:	83 f9 02                                        	cmp    ecx,0x2
10655aca:	7e 0d                                           	jle    0x10655ad9
10655acc:	3b c3                                           	cmp    eax,ebx
10655ace:	74 09                                           	je     0x10655ad9
10655ad0:	50                                              	push   eax
10655ad1:	e8 ba 33 2c 00                                  	call   0x10918e90
10655ad6:	83 c4 04                                        	add    esp,0x4
10655ad9:	8b c7                                           	mov    eax,edi
10655adb:	5f                                              	pop    edi
10655adc:	5e                                              	pop    esi
10655add:	5d                                              	pop    ebp
10655ade:	5b                                              	pop    ebx
10655adf:	83 c4 3c                                        	add    esp,0x3c
10655ae2:	c3                                              	ret
10655ae3:	cc                                              	int3
10655ae4:	cc                                              	int3
10655ae5:	cc                                              	int3
10655ae6:	cc                                              	int3
10655ae7:	cc                                              	int3
10655ae8:	cc                                              	int3
10655ae9:	cc                                              	int3
10655aea:	cc                                              	int3
10655aeb:	cc                                              	int3
10655aec:	cc                                              	int3
10655aed:	cc                                              	int3
10655aee:	cc                                              	int3
10655aef:	cc                                              	int3
