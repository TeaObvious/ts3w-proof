# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00504810 WinWindow_DispatchEventToVirtual
# Complete Ghidra body [00504810, 00504b02] inclusive; 344 instructions, 755 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 00504810_WinWindow_DispatchEventToVirtual.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00504810 <.text+0x103810>:
  504810:	56                                              	push   esi
  504811:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  504815:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  504818:	83 c0 ff                                        	add    eax,0xffffffff
  50481b:	83 f8 1e                                        	cmp    eax,0x1e
  50481e:	57                                              	push   edi
  50481f:	8b f9                                           	mov    edi,ecx
  504821:	0f 87 a9 02 00 00                               	ja     0x504ad0
  504827:	ff 24 85 04 4b 50 00                            	jmp    DWORD PTR [eax*4+0x504b04]
  50482e:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  504831:	8b 56 10                                        	mov    edx,DWORD PTR [esi+0x10]
  504834:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504836:	51                                              	push   ecx
  504837:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  50483a:	52                                              	push   edx
  50483b:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  50483e:	51                                              	push   ecx
  50483f:	8b cf                                           	mov    ecx,edi
  504841:	ff d2                                           	call   edx
  504843:	5f                                              	pop    edi
  504844:	5e                                              	pop    esi
  504845:	c2 04 00                                        	ret    0x4
  504848:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  50484b:	8b 56 10                                        	mov    edx,DWORD PTR [esi+0x10]
  50484e:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504850:	51                                              	push   ecx
  504851:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  504854:	52                                              	push   edx
  504855:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  504858:	51                                              	push   ecx
  504859:	8b cf                                           	mov    ecx,edi
  50485b:	ff d2                                           	call   edx
  50485d:	5f                                              	pop    edi
  50485e:	5e                                              	pop    esi
  50485f:	c2 04 00                                        	ret    0x4
  504862:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  504865:	8b 56 10                                        	mov    edx,DWORD PTR [esi+0x10]
  504868:	8b 07                                           	mov    eax,DWORD PTR [edi]
  50486a:	51                                              	push   ecx
  50486b:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  50486e:	52                                              	push   edx
  50486f:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  504872:	51                                              	push   ecx
  504873:	8b cf                                           	mov    ecx,edi
  504875:	ff d2                                           	call   edx
  504877:	5f                                              	pop    edi
  504878:	5e                                              	pop    esi
  504879:	c2 04 00                                        	ret    0x4
  50487c:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  50487f:	8b 56 10                                        	mov    edx,DWORD PTR [esi+0x10]
  504882:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504884:	51                                              	push   ecx
  504885:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  504888:	52                                              	push   edx
  504889:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  50488c:	51                                              	push   ecx
  50488d:	8b cf                                           	mov    ecx,edi
  50488f:	ff d2                                           	call   edx
  504891:	5f                                              	pop    edi
  504892:	5e                                              	pop    esi
  504893:	c2 04 00                                        	ret    0x4
  504896:	0f b7 4e 10                                     	movzx  ecx,WORD PTR [esi+0x10]
  50489a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  50489c:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
  50489f:	8b 40 38                                        	mov    eax,DWORD PTR [eax+0x38]
  5048a2:	51                                              	push   ecx
  5048a3:	52                                              	push   edx
  5048a4:	8b cf                                           	mov    ecx,edi
  5048a6:	ff d0                                           	call   eax
  5048a8:	5f                                              	pop    edi
  5048a9:	5e                                              	pop    esi
  5048aa:	c2 04 00                                        	ret    0x4
  5048ad:	8b 46 14                                        	mov    eax,DWORD PTR [esi+0x14]
  5048b0:	d9 46 10                                        	fld    DWORD PTR [esi+0x10]
  5048b3:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  5048b6:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5048b8:	8b 52 3c                                        	mov    edx,DWORD PTR [edx+0x3c]
  5048bb:	50                                              	push   eax
  5048bc:	51                                              	push   ecx
  5048bd:	83 ec 08                                        	sub    esp,0x8
  5048c0:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5048c4:	8b cf                                           	mov    ecx,edi
  5048c6:	d9 46 0c                                        	fld    DWORD PTR [esi+0xc]
  5048c9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5048cc:	ff d2                                           	call   edx
  5048ce:	5f                                              	pop    edi
  5048cf:	5e                                              	pop    esi
  5048d0:	c2 04 00                                        	ret    0x4
  5048d3:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  5048d6:	d9 46 10                                        	fld    DWORD PTR [esi+0x10]
  5048d9:	8b 56 18                                        	mov    edx,DWORD PTR [esi+0x18]
  5048dc:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5048de:	8b 40 40                                        	mov    eax,DWORD PTR [eax+0x40]
  5048e1:	51                                              	push   ecx
  5048e2:	52                                              	push   edx
  5048e3:	83 ec 08                                        	sub    esp,0x8
  5048e6:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5048ea:	8b cf                                           	mov    ecx,edi
  5048ec:	d9 46 0c                                        	fld    DWORD PTR [esi+0xc]
  5048ef:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5048f2:	ff d0                                           	call   eax
  5048f4:	5f                                              	pop    edi
  5048f5:	5e                                              	pop    esi
  5048f6:	c2 04 00                                        	ret    0x4
  5048f9:	8b 46 14                                        	mov    eax,DWORD PTR [esi+0x14]
  5048fc:	d9 46 10                                        	fld    DWORD PTR [esi+0x10]
  5048ff:	8b 17                                           	mov    edx,DWORD PTR [edi]
  504901:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
  504904:	50                                              	push   eax
  504905:	83 ec 08                                        	sub    esp,0x8
  504908:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  50490c:	d9 46 0c                                        	fld    DWORD PTR [esi+0xc]
  50490f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  504912:	ff d2                                           	call   edx
  504914:	5f                                              	pop    edi
  504915:	5e                                              	pop    esi
  504916:	c2 04 00                                        	ret    0x4
  504919:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  50491c:	d9 46 10                                        	fld    DWORD PTR [esi+0x10]
  50491f:	8b 56 14                                        	mov    edx,DWORD PTR [esi+0x14]
  504922:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504924:	8b 40 48                                        	mov    eax,DWORD PTR [eax+0x48]
  504927:	51                                              	push   ecx
  504928:	52                                              	push   edx
  504929:	83 ec 08                                        	sub    esp,0x8
  50492c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  504930:	8b cf                                           	mov    ecx,edi
  504932:	d9 46 0c                                        	fld    DWORD PTR [esi+0xc]
  504935:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  504938:	ff d0                                           	call   eax
  50493a:	5f                                              	pop    edi
  50493b:	5e                                              	pop    esi
  50493c:	c2 04 00                                        	ret    0x4
  50493f:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
  504942:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  504945:	8b 17                                           	mov    edx,DWORD PTR [edi]
  504947:	8b 52 4c                                        	mov    edx,DWORD PTR [edx+0x4c]
  50494a:	50                                              	push   eax
  50494b:	51                                              	push   ecx
  50494c:	8b cf                                           	mov    ecx,edi
  50494e:	ff d2                                           	call   edx
  504950:	5f                                              	pop    edi
  504951:	5e                                              	pop    esi
  504952:	c2 04 00                                        	ret    0x4
  504955:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
  504958:	8b 07                                           	mov    eax,DWORD PTR [edi]
  50495a:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
  50495d:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  504960:	51                                              	push   ecx
  504961:	52                                              	push   edx
  504962:	8b cf                                           	mov    ecx,edi
  504964:	ff d0                                           	call   eax
  504966:	5f                                              	pop    edi
  504967:	5e                                              	pop    esi
  504968:	c2 04 00                                        	ret    0x4
  50496b:	d9 46 18                                        	fld    DWORD PTR [esi+0x18]
  50496e:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
  504971:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  504974:	8b 17                                           	mov    edx,DWORD PTR [edi]
  504976:	8b 52 54                                        	mov    edx,DWORD PTR [edx+0x54]
  504979:	83 ec 08                                        	sub    esp,0x8
  50497c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  504980:	d9 46 14                                        	fld    DWORD PTR [esi+0x14]
  504983:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  504986:	50                                              	push   eax
  504987:	51                                              	push   ecx
  504988:	8b cf                                           	mov    ecx,edi
  50498a:	ff d2                                           	call   edx
  50498c:	5f                                              	pop    edi
  50498d:	5e                                              	pop    esi
  50498e:	c2 04 00                                        	ret    0x4
  504991:	d9 46 14                                        	fld    DWORD PTR [esi+0x14]
  504994:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504996:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
  504999:	8b 40 58                                        	mov    eax,DWORD PTR [eax+0x58]
  50499c:	51                                              	push   ecx
  50499d:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
  5049a0:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5049a3:	51                                              	push   ecx
  5049a4:	52                                              	push   edx
  5049a5:	8b cf                                           	mov    ecx,edi
  5049a7:	ff d0                                           	call   eax
  5049a9:	5f                                              	pop    edi
  5049aa:	5e                                              	pop    esi
  5049ab:	c2 04 00                                        	ret    0x4
  5049ae:	8b 46 18                                        	mov    eax,DWORD PTR [esi+0x18]
  5049b1:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  5049b4:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5049b6:	8b 52 5c                                        	mov    edx,DWORD PTR [edx+0x5c]
  5049b9:	50                                              	push   eax
  5049ba:	51                                              	push   ecx
  5049bb:	8b cf                                           	mov    ecx,edi
  5049bd:	ff d2                                           	call   edx
  5049bf:	5f                                              	pop    edi
  5049c0:	5e                                              	pop    esi
  5049c1:	c2 04 00                                        	ret    0x4
  5049c4:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  5049c7:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5049c9:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
  5049cc:	8b 40 60                                        	mov    eax,DWORD PTR [eax+0x60]
  5049cf:	51                                              	push   ecx
  5049d0:	52                                              	push   edx
  5049d1:	8b cf                                           	mov    ecx,edi
  5049d3:	ff d0                                           	call   eax
  5049d5:	5f                                              	pop    edi
  5049d6:	5e                                              	pop    esi
  5049d7:	c2 04 00                                        	ret    0x4
  5049da:	8b 46 18                                        	mov    eax,DWORD PTR [esi+0x18]
  5049dd:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  5049e0:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5049e2:	8b 52 64                                        	mov    edx,DWORD PTR [edx+0x64]
  5049e5:	50                                              	push   eax
  5049e6:	51                                              	push   ecx
  5049e7:	8b cf                                           	mov    ecx,edi
  5049e9:	ff d2                                           	call   edx
  5049eb:	5f                                              	pop    edi
  5049ec:	5e                                              	pop    esi
  5049ed:	c2 04 00                                        	ret    0x4
  5049f0:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5049f2:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  5049f5:	ff d2                                           	call   edx
  5049f7:	5f                                              	pop    edi
  5049f8:	5e                                              	pop    esi
  5049f9:	c2 04 00                                        	ret    0x4
  5049fc:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  5049ff:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504a01:	8b 16                                           	mov    edx,DWORD PTR [esi]
  504a03:	8b 80 80 00 00 00                               	mov    eax,DWORD PTR [eax+0x80]
  504a09:	51                                              	push   ecx
  504a0a:	52                                              	push   edx
  504a0b:	8b cf                                           	mov    ecx,edi
  504a0d:	ff d0                                           	call   eax
  504a0f:	5f                                              	pop    edi
  504a10:	5e                                              	pop    esi
  504a11:	c2 04 00                                        	ret    0x4
  504a14:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
  504a17:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  504a19:	8b 17                                           	mov    edx,DWORD PTR [edi]
  504a1b:	8b 92 84 00 00 00                               	mov    edx,DWORD PTR [edx+0x84]
  504a21:	56                                              	push   esi
  504a22:	50                                              	push   eax
  504a23:	51                                              	push   ecx
  504a24:	8b cf                                           	mov    ecx,edi
  504a26:	ff d2                                           	call   edx
  504a28:	5f                                              	pop    edi
  504a29:	5e                                              	pop    esi
  504a2a:	c2 04 00                                        	ret    0x4
  504a2d:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
  504a30:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504a32:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
  504a35:	8b 80 88 00 00 00                               	mov    eax,DWORD PTR [eax+0x88]
  504a3b:	51                                              	push   ecx
  504a3c:	52                                              	push   edx
  504a3d:	8b cf                                           	mov    ecx,edi
  504a3f:	ff d0                                           	call   eax
  504a41:	5f                                              	pop    edi
  504a42:	5e                                              	pop    esi
  504a43:	c2 04 00                                        	ret    0x4
  504a46:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
  504a49:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  504a4c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  504a4e:	8b 92 8c 00 00 00                               	mov    edx,DWORD PTR [edx+0x8c]
  504a54:	50                                              	push   eax
  504a55:	51                                              	push   ecx
  504a56:	8b cf                                           	mov    ecx,edi
  504a58:	ff d2                                           	call   edx
  504a5a:	5f                                              	pop    edi
  504a5b:	5e                                              	pop    esi
  504a5c:	c2 04 00                                        	ret    0x4
  504a5f:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  504a62:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504a64:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
  504a67:	8b 80 90 00 00 00                               	mov    eax,DWORD PTR [eax+0x90]
  504a6d:	51                                              	push   ecx
  504a6e:	52                                              	push   edx
  504a6f:	8b cf                                           	mov    ecx,edi
  504a71:	ff d0                                           	call   eax
  504a73:	5f                                              	pop    edi
  504a74:	5e                                              	pop    esi
  504a75:	c2 04 00                                        	ret    0x4
  504a78:	8b 46 18                                        	mov    eax,DWORD PTR [esi+0x18]
  504a7b:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  504a7e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  504a80:	8b 92 94 00 00 00                               	mov    edx,DWORD PTR [edx+0x94]
  504a86:	50                                              	push   eax
  504a87:	51                                              	push   ecx
  504a88:	8b cf                                           	mov    ecx,edi
  504a8a:	ff d2                                           	call   edx
  504a8c:	5f                                              	pop    edi
  504a8d:	5e                                              	pop    esi
  504a8e:	c2 04 00                                        	ret    0x4
  504a91:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504a93:	8b 50 6c                                        	mov    edx,DWORD PTR [eax+0x6c]
  504a96:	ff d2                                           	call   edx
  504a98:	5f                                              	pop    edi
  504a99:	32 c0                                           	xor    al,al
  504a9b:	5e                                              	pop    esi
  504a9c:	c2 04 00                                        	ret    0x4
  504a9f:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504aa1:	8b 50 70                                        	mov    edx,DWORD PTR [eax+0x70]
  504aa4:	ff d2                                           	call   edx
  504aa6:	5f                                              	pop    edi
  504aa7:	32 c0                                           	xor    al,al
  504aa9:	5e                                              	pop    esi
  504aaa:	c2 04 00                                        	ret    0x4
  504aad:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  504ab0:	d9 46 10                                        	fld    DWORD PTR [esi+0x10]
  504ab3:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504ab5:	8b 50 74                                        	mov    edx,DWORD PTR [eax+0x74]
  504ab8:	51                                              	push   ecx
  504ab9:	83 ec 08                                        	sub    esp,0x8
  504abc:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  504ac0:	8b cf                                           	mov    ecx,edi
  504ac2:	d9 46 0c                                        	fld    DWORD PTR [esi+0xc]
  504ac5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  504ac8:	ff d2                                           	call   edx
  504aca:	84 c0                                           	test   al,al
  504acc:	75 ca                                           	jne    0x504a98
  504ace:	8b cf                                           	mov    ecx,edi
  504ad0:	56                                              	push   esi
  504ad1:	e8 0a 0b 01 00                                  	call   0x5155e0
  504ad6:	5f                                              	pop    edi
  504ad7:	5e                                              	pop    esi
  504ad8:	c2 04 00                                        	ret    0x4
  504adb:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  504ade:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504ae0:	8b 50 78                                        	mov    edx,DWORD PTR [eax+0x78]
  504ae3:	51                                              	push   ecx
  504ae4:	8b cf                                           	mov    ecx,edi
  504ae6:	ff d2                                           	call   edx
  504ae8:	5f                                              	pop    edi
  504ae9:	32 c0                                           	xor    al,al
  504aeb:	5e                                              	pop    esi
  504aec:	c2 04 00                                        	ret    0x4
  504aef:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  504af2:	8b 07                                           	mov    eax,DWORD PTR [edi]
  504af4:	8b 50 7c                                        	mov    edx,DWORD PTR [eax+0x7c]
  504af7:	51                                              	push   ecx
  504af8:	8b cf                                           	mov    ecx,edi
  504afa:	ff d2                                           	call   edx
  504afc:	5f                                              	pop    edi
  504afd:	32 c0                                           	xor    al,al
  504aff:	5e                                              	pop    esi
  504b00:	c2 04 00                                        	ret    0x4
