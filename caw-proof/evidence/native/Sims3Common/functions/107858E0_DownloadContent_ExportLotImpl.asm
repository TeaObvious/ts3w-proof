# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107858e0 (DownloadContent_ExportLotImpl)
Paired Ghidra pseudocode: 107858E0_DownloadContent_ExportLotImpl.c
Window: [0x107858e0, 0x10785a60) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x10785a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107858e0: 83 ec 54 57 8b 7c 24 5c 85 ff 75 07 32 c0 5f 83
107858f0: c4 54 c3 56 e8 27 58 dd ff 8b f0 85 f6 0f 84 c9
10785900: 00 00 00 b8 44 82 ca 10 c7 44 24 14 88 8d b5 10
10785910: 89 44 24 08 89 44 24 0c c7 44 24 10 46 82 ca 10
10785920: 8b 06 8b 50 58 57 8b ce ff d2 66 83 38 00 8b c8
10785930: 74 09 83 c1 02 66 83 39 00 75 f7 2b c8 d1 f9 8d
10785940: 0c 48 51 50 8d 4c 24 10 e8 73 9f 89 ff 68 58 8d
10785950: b5 10 6a 00 6a 00 8d 4c 24 3c e8 31 e7 18 00 d9
10785960: e8 83 44 24 3c 01 51 d9 1c 24 6a 01 8d 4c 24 38
10785970: e8 fb e0 18 00 8b 44 24 64 85 c0 74 57 8d 54 24
10785980: 30 52 50 56 e8 f7 e6 ff ff 83 c4 0c 84 c0 75 44
10785990: 8b 4c 24 34 85 c9 c7 44 24 30 10 ad b8 10 74 05
107859a0: e8 8b e0 18 00 8b 4c 24 10 8b 44 24 08 2b c8 83
107859b0: e1 fe 83 f9 02 c7 44 24 30 e4 fe aa 10 7e 0d 85
107859c0: c0 74 09 50 e8 c7 34 19 00 83 c4 04 5e 32 c0 5f
107859d0: 83 c4 54 c3 53 6a 00 6a 00 8d 4c 24 3c e8 fe e4
107859e0: 18 00 6a 01 8d 54 24 38 52 8d 4c 24 24 e8 ae 68
107859f0: e4 ff 8d 44 24 1c 50 8d 4c 24 10 51 e8 5f 10 01
10785a00: 00 83 c4 08 8d 4c 24 1c 8a d8 e8 f1 4e e4 ff 8b
10785a10: 4c 24 38 85 c9 c7 44 24 34 10 ad b8 10 74 05 e8
10785a20: 0c e0 18 00 8b 54 24 14 8b 44 24 0c 2b d0 83 e2
10785a30: fe 83 fa 02 c7 44 24 34 e4 fe aa 10 7e 0d 85 c0
10785a40: 74 09 50 e8 48 34 19 00 83 c4 04 8a c3 5b 5e 5f
10785a50: 83 c4 54 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
107858e0 <.text+0x7848e0>:
107858e0:	83 ec 54                                        	sub    esp,0x54
107858e3:	57                                              	push   edi
107858e4:	8b 7c 24 5c                                     	mov    edi,DWORD PTR [esp+0x5c]
107858e8:	85 ff                                           	test   edi,edi
107858ea:	75 07                                           	jne    0x107858f3
107858ec:	32 c0                                           	xor    al,al
107858ee:	5f                                              	pop    edi
107858ef:	83 c4 54                                        	add    esp,0x54
107858f2:	c3                                              	ret
107858f3:	56                                              	push   esi
107858f4:	e8 27 58 dd ff                                  	call   0x1055b120
107858f9:	8b f0                                           	mov    esi,eax
107858fb:	85 f6                                           	test   esi,esi
107858fd:	0f 84 c9 00 00 00                               	je     0x107859cc
10785903:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10785908:	c7 44 24 14 88 8d b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58d88
10785910:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10785914:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10785918:	c7 44 24 10 46 82 ca 10                         	mov    DWORD PTR [esp+0x10],0x10ca8246
10785920:	8b 06                                           	mov    eax,DWORD PTR [esi]
10785922:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10785925:	57                                              	push   edi
10785926:	8b ce                                           	mov    ecx,esi
10785928:	ff d2                                           	call   edx
1078592a:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
1078592e:	8b c8                                           	mov    ecx,eax
10785930:	74 09                                           	je     0x1078593b
10785932:	83 c1 02                                        	add    ecx,0x2
10785935:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
10785939:	75 f7                                           	jne    0x10785932
1078593b:	2b c8                                           	sub    ecx,eax
1078593d:	d1 f9                                           	sar    ecx,1
1078593f:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
10785942:	51                                              	push   ecx
10785943:	50                                              	push   eax
10785944:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10785948:	e8 73 9f 89 ff                                  	call   0x1001f8c0
1078594d:	68 58 8d b5 10                                  	push   0x10b58d58
10785952:	6a 00                                           	push   0x0
10785954:	6a 00                                           	push   0x0
10785956:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
1078595a:	e8 31 e7 18 00                                  	call   0x10914090
1078595f:	d9 e8                                           	fld1
10785961:	83 44 24 3c 01                                  	add    DWORD PTR [esp+0x3c],0x1
10785966:	51                                              	push   ecx
10785967:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1078596a:	6a 01                                           	push   0x1
1078596c:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
10785970:	e8 fb e0 18 00                                  	call   0x10913a70
10785975:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
10785979:	85 c0                                           	test   eax,eax
1078597b:	74 57                                           	je     0x107859d4
1078597d:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10785981:	52                                              	push   edx
10785982:	50                                              	push   eax
10785983:	56                                              	push   esi
10785984:	e8 f7 e6 ff ff                                  	call   0x10784080
10785989:	83 c4 0c                                        	add    esp,0xc
1078598c:	84 c0                                           	test   al,al
1078598e:	75 44                                           	jne    0x107859d4
10785990:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10785994:	85 c9                                           	test   ecx,ecx
10785996:	c7 44 24 30 10 ad b8 10                         	mov    DWORD PTR [esp+0x30],0x10b8ad10
1078599e:	74 05                                           	je     0x107859a5
107859a0:	e8 8b e0 18 00                                  	call   0x10913a30
107859a5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
107859a9:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
107859ad:	2b c8                                           	sub    ecx,eax
107859af:	83 e1 fe                                        	and    ecx,0xfffffffe
107859b2:	83 f9 02                                        	cmp    ecx,0x2
107859b5:	c7 44 24 30 e4 fe aa 10                         	mov    DWORD PTR [esp+0x30],0x10aafee4
107859bd:	7e 0d                                           	jle    0x107859cc
107859bf:	85 c0                                           	test   eax,eax
107859c1:	74 09                                           	je     0x107859cc
107859c3:	50                                              	push   eax
107859c4:	e8 c7 34 19 00                                  	call   0x10918e90
107859c9:	83 c4 04                                        	add    esp,0x4
107859cc:	5e                                              	pop    esi
107859cd:	32 c0                                           	xor    al,al
107859cf:	5f                                              	pop    edi
107859d0:	83 c4 54                                        	add    esp,0x54
107859d3:	c3                                              	ret
107859d4:	53                                              	push   ebx
107859d5:	6a 00                                           	push   0x0
107859d7:	6a 00                                           	push   0x0
107859d9:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
107859dd:	e8 fe e4 18 00                                  	call   0x10913ee0
107859e2:	6a 01                                           	push   0x1
107859e4:	8d 54 24 38                                     	lea    edx,[esp+0x38]
107859e8:	52                                              	push   edx
107859e9:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
107859ed:	e8 ae 68 e4 ff                                  	call   0x105cc2a0
107859f2:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
107859f6:	50                                              	push   eax
107859f7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
107859fb:	51                                              	push   ecx
107859fc:	e8 5f 10 01 00                                  	call   0x10796a60
10785a01:	83 c4 08                                        	add    esp,0x8
10785a04:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10785a08:	8a d8                                           	mov    bl,al
10785a0a:	e8 f1 4e e4 ff                                  	call   0x105ca900
10785a0f:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10785a13:	85 c9                                           	test   ecx,ecx
10785a15:	c7 44 24 34 10 ad b8 10                         	mov    DWORD PTR [esp+0x34],0x10b8ad10
10785a1d:	74 05                                           	je     0x10785a24
10785a1f:	e8 0c e0 18 00                                  	call   0x10913a30
10785a24:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10785a28:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10785a2c:	2b d0                                           	sub    edx,eax
10785a2e:	83 e2 fe                                        	and    edx,0xfffffffe
10785a31:	83 fa 02                                        	cmp    edx,0x2
10785a34:	c7 44 24 34 e4 fe aa 10                         	mov    DWORD PTR [esp+0x34],0x10aafee4
10785a3c:	7e 0d                                           	jle    0x10785a4b
10785a3e:	85 c0                                           	test   eax,eax
10785a40:	74 09                                           	je     0x10785a4b
10785a42:	50                                              	push   eax
10785a43:	e8 48 34 19 00                                  	call   0x10918e90
10785a48:	83 c4 04                                        	add    esp,0x4
10785a4b:	8a c3                                           	mov    al,bl
10785a4d:	5b                                              	pop    ebx
10785a4e:	5e                                              	pop    esi
10785a4f:	5f                                              	pop    edi
10785a50:	83 c4 54                                        	add    esp,0x54
10785a53:	c3                                              	ret
10785a54:	cc                                              	int3
10785a55:	cc                                              	int3
10785a56:	cc                                              	int3
10785a57:	cc                                              	int3
10785a58:	cc                                              	int3
10785a59:	cc                                              	int3
10785a5a:	cc                                              	int3
10785a5b:	cc                                              	int3
10785a5c:	cc                                              	int3
10785a5d:	cc                                              	int3
10785a5e:	cc                                              	int3
10785a5f:	cc                                              	int3
