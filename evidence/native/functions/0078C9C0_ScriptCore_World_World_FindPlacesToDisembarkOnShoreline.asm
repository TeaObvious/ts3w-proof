# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078c9c0 (ScriptCore.World::World_FindPlacesToDisembarkOnShoreline)
Paired Ghidra pseudocode: 0078C9C0_ScriptCore_World_World_FindPlacesToDisembarkOnShoreline.c
Window: [0x0078c9c0, 0x0078cbb0) (496 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078cbb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078c9c0: 55 8b ec 83 e4 f0 83 ec 34 53 56 57 e8 9f ab 1a
0078c9d0: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 a0 b5 1a 00
0078c9e0: 8b f0 85 f6 89 74 24 18 0f 84 aa 01 00 00 8d 5e
0078c9f0: 04 8b c3 b9 01 00 00 00 f0 0f c1 08 8b 7d 10 85
0078ca00: ff 0f 84 74 01 00 00 e8 e4 c2 09 00 85 c0 0f 84
0078ca10: 67 01 00 00 8b c8 e8 e5 cb 09 00 85 c0 89 44 24
0078ca20: 1c 0f 84 54 01 00 00 e8 64 c9 fd ff f3 0f 10 4f
0078ca30: 08 f3 0f 10 07 f3 0f 11 4c 24 28 f3 0f 10 4f 04
0078ca40: 8b 7d 14 8b f0 33 c9 8d 04 7f ba 04 00 00 00 f7
0078ca50: e2 6a 00 0f 90 c1 6a 00 6a 00 6a 00 f3 0f 11 44
0078ca60: 24 3c f3 0f 11 4c 24 34 f3 0f 11 44 24 30 0f 28
0078ca70: 44 24 30 68 a8 18 01 01 f7 d9 0b c8 51 0f 29 44
0078ca80: 24 48 c7 44 24 28 00 00 00 00 e8 71 7a d5 ff 8b
0078ca90: d8 33 c9 8d 04 bd 00 00 00 00 ba 04 00 00 00 f7
0078caa0: e2 6a 00 0f 90 c1 6a 00 6a 00 6a 00 68 a8 18 01
0078cab0: 01 f7 d9 0b c8 51 e8 45 7a d5 ff 8b 54 24 48 83
0078cac0: c4 30 50 53 89 44 24 1c 8d 44 24 18 50 57 8d 4c
0078cad0: 24 40 51 8b 4c 24 30 52 e8 43 04 ed ff 84 c0 88
0078cae0: 44 24 0f 74 6f 8b 44 24 10 8b 16 8b 7d 18 8b 92
0078caf0: 90 00 00 00 8d 04 40 50 57 8b ce ff d2 8b 4c 24
0078cb00: 10 8b 06 8d 14 8d 00 00 00 00 8b 4d 1c 52 8b 90
0078cb10: 90 00 00 00 51 8b ce ff d2 8b 44 24 10 8b 16 8b
0078cb20: 92 a8 00 00 00 8d 04 40 50 6a 00 53 57 8b ce ff
0078cb30: d2 8b 4c 24 10 8b 06 8b 80 a8 00 00 00 8d 14 8d
0078cb40: 00 00 00 00 8b 4c 24 14 52 8b 55 1c 6a 00 51 52
0078cb50: 8b ce ff d0 53 e8 86 79 d5 ff 8b 4c 24 18 51 e8
0078cb60: 7c 79 d5 ff 83 c4 08 8d 4c 24 18 e8 70 97 fb ff
0078cb70: 8a 44 24 0f 5f 5e 5b 8b e5 5d c3 8b d3 83 c8 ff
0078cb80: f0 0f c1 02 48 75 11 b9 01 00 00 00 87 0b 8b 16
0078cb90: 8b 02 6a 01 8b ce ff d0 5f 5e 32 c0 5b 8b e5 5d
0078cba0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078c9c0 <.text+0x38b9c0>:
  78c9c0:	55                                              	push   ebp
  78c9c1:	8b ec                                           	mov    ebp,esp
  78c9c3:	83 e4 f0                                        	and    esp,0xfffffff0
  78c9c6:	83 ec 34                                        	sub    esp,0x34
  78c9c9:	53                                              	push   ebx
  78c9ca:	56                                              	push   esi
  78c9cb:	57                                              	push   edi
  78c9cc:	e8 9f ab 1a 00                                  	call   0x937570
  78c9d1:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78c9d4:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78c9d7:	51                                              	push   ecx
  78c9d8:	52                                              	push   edx
  78c9d9:	8b c8                                           	mov    ecx,eax
  78c9db:	e8 a0 b5 1a 00                                  	call   0x937f80
  78c9e0:	8b f0                                           	mov    esi,eax
  78c9e2:	85 f6                                           	test   esi,esi
  78c9e4:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  78c9e8:	0f 84 aa 01 00 00                               	je     0x78cb98
  78c9ee:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  78c9f1:	8b c3                                           	mov    eax,ebx
  78c9f3:	b9 01 00 00 00                                  	mov    ecx,0x1
  78c9f8:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78c9fc:	8b 7d 10                                        	mov    edi,DWORD PTR [ebp+0x10]
  78c9ff:	85 ff                                           	test   edi,edi
  78ca01:	0f 84 74 01 00 00                               	je     0x78cb7b
  78ca07:	e8 e4 c2 09 00                                  	call   0x828cf0
  78ca0c:	85 c0                                           	test   eax,eax
  78ca0e:	0f 84 67 01 00 00                               	je     0x78cb7b
  78ca14:	8b c8                                           	mov    ecx,eax
  78ca16:	e8 e5 cb 09 00                                  	call   0x829600
  78ca1b:	85 c0                                           	test   eax,eax
  78ca1d:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  78ca21:	0f 84 54 01 00 00                               	je     0x78cb7b
  78ca27:	e8 64 c9 fd ff                                  	call   0x769390
  78ca2c:	f3 0f 10 4f 08                                  	movss  xmm1,DWORD PTR [edi+0x8]
  78ca31:	f3 0f 10 07                                     	movss  xmm0,DWORD PTR [edi]
  78ca35:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
  78ca3b:	f3 0f 10 4f 04                                  	movss  xmm1,DWORD PTR [edi+0x4]
  78ca40:	8b 7d 14                                        	mov    edi,DWORD PTR [ebp+0x14]
  78ca43:	8b f0                                           	mov    esi,eax
  78ca45:	33 c9                                           	xor    ecx,ecx
  78ca47:	8d 04 7f                                        	lea    eax,[edi+edi*2]
  78ca4a:	ba 04 00 00 00                                  	mov    edx,0x4
  78ca4f:	f7 e2                                           	mul    edx
  78ca51:	6a 00                                           	push   0x0
  78ca53:	0f 90 c1                                        	seto   cl
  78ca56:	6a 00                                           	push   0x0
  78ca58:	6a 00                                           	push   0x0
  78ca5a:	6a 00                                           	push   0x0
  78ca5c:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  78ca62:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  78ca68:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  78ca6e:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  78ca73:	68 a8 18 01 01                                  	push   0x10118a8
  78ca78:	f7 d9                                           	neg    ecx
  78ca7a:	0b c8                                           	or     ecx,eax
  78ca7c:	51                                              	push   ecx
  78ca7d:	0f 29 44 24 48                                  	movaps XMMWORD PTR [esp+0x48],xmm0
  78ca82:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
  78ca8a:	e8 71 7a d5 ff                                  	call   0x4e4500
  78ca8f:	8b d8                                           	mov    ebx,eax
  78ca91:	33 c9                                           	xor    ecx,ecx
  78ca93:	8d 04 bd 00 00 00 00                            	lea    eax,[edi*4+0x0]
  78ca9a:	ba 04 00 00 00                                  	mov    edx,0x4
  78ca9f:	f7 e2                                           	mul    edx
  78caa1:	6a 00                                           	push   0x0
  78caa3:	0f 90 c1                                        	seto   cl
  78caa6:	6a 00                                           	push   0x0
  78caa8:	6a 00                                           	push   0x0
  78caaa:	6a 00                                           	push   0x0
  78caac:	68 a8 18 01 01                                  	push   0x10118a8
  78cab1:	f7 d9                                           	neg    ecx
  78cab3:	0b c8                                           	or     ecx,eax
  78cab5:	51                                              	push   ecx
  78cab6:	e8 45 7a d5 ff                                  	call   0x4e4500
  78cabb:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  78cabf:	83 c4 30                                        	add    esp,0x30
  78cac2:	50                                              	push   eax
  78cac3:	53                                              	push   ebx
  78cac4:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  78cac8:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  78cacc:	50                                              	push   eax
  78cacd:	57                                              	push   edi
  78cace:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  78cad2:	51                                              	push   ecx
  78cad3:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  78cad7:	52                                              	push   edx
  78cad8:	e8 43 04 ed ff                                  	call   0x65cf20
  78cadd:	84 c0                                           	test   al,al
  78cadf:	88 44 24 0f                                     	mov    BYTE PTR [esp+0xf],al
  78cae3:	74 6f                                           	je     0x78cb54
  78cae5:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  78cae9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78caeb:	8b 7d 18                                        	mov    edi,DWORD PTR [ebp+0x18]
  78caee:	8b 92 90 00 00 00                               	mov    edx,DWORD PTR [edx+0x90]
  78caf4:	8d 04 40                                        	lea    eax,[eax+eax*2]
  78caf7:	50                                              	push   eax
  78caf8:	57                                              	push   edi
  78caf9:	8b ce                                           	mov    ecx,esi
  78cafb:	ff d2                                           	call   edx
  78cafd:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78cb01:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78cb03:	8d 14 8d 00 00 00 00                            	lea    edx,[ecx*4+0x0]
  78cb0a:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
  78cb0d:	52                                              	push   edx
  78cb0e:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
  78cb14:	51                                              	push   ecx
  78cb15:	8b ce                                           	mov    ecx,esi
  78cb17:	ff d2                                           	call   edx
  78cb19:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  78cb1d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78cb1f:	8b 92 a8 00 00 00                               	mov    edx,DWORD PTR [edx+0xa8]
  78cb25:	8d 04 40                                        	lea    eax,[eax+eax*2]
  78cb28:	50                                              	push   eax
  78cb29:	6a 00                                           	push   0x0
  78cb2b:	53                                              	push   ebx
  78cb2c:	57                                              	push   edi
  78cb2d:	8b ce                                           	mov    ecx,esi
  78cb2f:	ff d2                                           	call   edx
  78cb31:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78cb35:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78cb37:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
  78cb3d:	8d 14 8d 00 00 00 00                            	lea    edx,[ecx*4+0x0]
  78cb44:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  78cb48:	52                                              	push   edx
  78cb49:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
  78cb4c:	6a 00                                           	push   0x0
  78cb4e:	51                                              	push   ecx
  78cb4f:	52                                              	push   edx
  78cb50:	8b ce                                           	mov    ecx,esi
  78cb52:	ff d0                                           	call   eax
  78cb54:	53                                              	push   ebx
  78cb55:	e8 86 79 d5 ff                                  	call   0x4e44e0
  78cb5a:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78cb5e:	51                                              	push   ecx
  78cb5f:	e8 7c 79 d5 ff                                  	call   0x4e44e0
  78cb64:	83 c4 08                                        	add    esp,0x8
  78cb67:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  78cb6b:	e8 70 97 fb ff                                  	call   0x7462e0
  78cb70:	8a 44 24 0f                                     	mov    al,BYTE PTR [esp+0xf]
  78cb74:	5f                                              	pop    edi
  78cb75:	5e                                              	pop    esi
  78cb76:	5b                                              	pop    ebx
  78cb77:	8b e5                                           	mov    esp,ebp
  78cb79:	5d                                              	pop    ebp
  78cb7a:	c3                                              	ret
  78cb7b:	8b d3                                           	mov    edx,ebx
  78cb7d:	83 c8 ff                                        	or     eax,0xffffffff
  78cb80:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  78cb84:	48                                              	dec    eax
  78cb85:	75 11                                           	jne    0x78cb98
  78cb87:	b9 01 00 00 00                                  	mov    ecx,0x1
  78cb8c:	87 0b                                           	xchg   DWORD PTR [ebx],ecx
  78cb8e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78cb90:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78cb92:	6a 01                                           	push   0x1
  78cb94:	8b ce                                           	mov    ecx,esi
  78cb96:	ff d0                                           	call   eax
  78cb98:	5f                                              	pop    edi
  78cb99:	5e                                              	pop    esi
  78cb9a:	32 c0                                           	xor    al,al
  78cb9c:	5b                                              	pop    ebx
  78cb9d:	8b e5                                           	mov    esp,ebp
  78cb9f:	5d                                              	pop    ebp
  78cba0:	c3                                              	ret
  78cba1:	cc                                              	int3
  78cba2:	cc                                              	int3
  78cba3:	cc                                              	int3
  78cba4:	cc                                              	int3
  78cba5:	cc                                              	int3
  78cba6:	cc                                              	int3
  78cba7:	cc                                              	int3
  78cba8:	cc                                              	int3
  78cba9:	cc                                              	int3
  78cbaa:	cc                                              	int3
  78cbab:	cc                                              	int3
  78cbac:	cc                                              	int3
  78cbad:	cc                                              	int3
  78cbae:	cc                                              	int3
  78cbaf:	cc                                              	int3
