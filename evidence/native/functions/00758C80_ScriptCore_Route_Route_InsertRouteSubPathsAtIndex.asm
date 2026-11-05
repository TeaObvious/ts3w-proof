# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00758c80 (ScriptCore.Route::Route_InsertRouteSubPathsAtIndex)
Paired Ghidra pseudocode: 00758C80_ScriptCore_Route_Route_InsertRouteSubPathsAtIndex.c
Window: [0x00758c80, 0x00758fd0) (848 bytes; stop exclusive)
Next defined Ghidra entry: 0x00758fd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00758c80: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 14 85
00758c90: c9 53 56 57 0f 84 d4 01 00 00 8b 45 08 50 e8 0d
00758ca0: 28 ff ff 8b f0 85 f6 89 74 24 0c 74 09 8b 16 8b
00758cb0: 42 10 8b ce ff d0 8b 0d c4 50 1d 01 85 c9 0f 84
00758cc0: b6 01 00 00 8b 55 10 52 e8 e3 27 ff ff 8b d8 85
00758cd0: db 89 5c 24 10 74 09 8b 03 8b 50 10 8b cb ff d2
00758ce0: 85 f6 0f 84 bc 02 00 00 85 db 0f 84 c1 02 00 00
00758cf0: 8b 86 e0 00 00 00 8b 4d 0c 8d be e0 00 00 00 3b
00758d00: c7 74 11 85 c9 0f 84 80 01 00 00 8b 00 83 e9 01
00758d10: 3b c7 75 ef 8b b3 e0 00 00 00 81 c3 e0 00 00 00
00758d20: 3b f3 74 5a eb 0a 8d a4 24 00 00 00 00 8d 49 00
00758d30: 8b 47 08 68 e7 00 00 00 68 88 99 f9 00 6a 00 6a
00758d40: 00 50 6a 0c e8 b7 b7 d8 ff 8d 48 08 83 c4 18 85
00758d50: c9 74 15 8b 56 08 85 d2 89 11 74 0c 83 c2 04 b9
00758d60: 01 00 00 00 f0 0f c1 0a 89 38 8b 57 04 89 50 04
00758d70: 8b 4f 04 89 01 89 47 04 8b 36 3b f3 75 b2 8b 44
00758d80: 24 10 0f 28 80 00 01 00 00 8b 4c 24 0c 8b 5c 24
00758d90: 10 0f 29 81 00 01 00 00 0f 28 80 10 01 00 00 0f
00758da0: 29 81 10 01 00 00 0f 28 80 20 01 00 00 0f 29 81
00758db0: 20 01 00 00 0f 28 80 30 01 00 00 0f 29 81 30 01
00758dc0: 00 00 8a 90 41 01 00 00 88 91 41 01 00 00 8a 80
00758dd0: 40 01 00 00 88 81 40 01 00 00 8b 07 3b c7 8b 74
00758de0: 24 0c 0f 84 74 01 00 00 8b d8 8b 73 08 85 f6 74
00758df0: 0c 8d 4e 04 ba 01 00 00 00 f0 0f c1 11 8b 44 24
00758e00: 0c 8b 16 05 58 01 00 00 50 8b 42 10 8b ce ff d0
00758e10: 8b 16 8b 42 0c 8b ce ff d0 8b 4c 24 0c 8b 49 3c
00758e20: 51 8b c8 e8 e8 36 0c 00 50 56 e8 b1 67 10 00 8d
00758e30: 46 04 83 c4 0c 8b d0 83 c9 ff f0 0f c1 0a 49 75
00758e40: 11 ba 01 00 00 00 87 10 8b 06 8b 10 6a 01 8b ce
00758e50: ff d2 8b 1b 3b df 75 92 8b 07 8b 08 3b cf 89 44
00758e60: 24 14 89 4c 24 18 0f 84 e8 00 00 00 eb 4d c7 44
00758e70: 24 0c 00 00 00 00 8b 74 24 0c c7 44 24 10 00 00
00758e80: 00 00 8b 5c 24 10 e9 55 fe ff ff 3b c7 0f 84 81
00758e90: fe ff ff 8b 74 24 18 8b 93 e0 00 00 00 56 8d 8b
00758ea0: e0 00 00 00 51 52 50 8b cf e8 d2 85 ff ff e9 27
00758eb0: ff ff ff 8b 44 24 14 8b 4c 24 18 8b 58 08 85 db
00758ec0: 74 0c 8d 43 04 ba 01 00 00 00 f0 0f c1 10 8b 71
00758ed0: 08 85 f6 74 0c 8d 46 04 b9 01 00 00 00 f0 0f c1
00758ee0: 08 8b 13 8b 42 78 56 8b cb ff d0 8b 16 8b 82 80
00758ef0: 00 00 00 53 8b ce ff d0 8d 46 04 8b c8 83 ca ff
00758f00: f0 0f c1 11 4a 75 11 b9 01 00 00 00 87 08 8b 16
00758f10: 8b 02 6a 01 8b ce ff d0 8d 43 04 8b c8 83 ca ff
00758f20: f0 0f c1 11 4a 75 11 b9 01 00 00 00 87 08 8b 13
00758f30: 8b 02 6a 01 8b cb ff d0 8b 44 24 18 8b 4c 24 14
00758f40: 8b 00 3b c7 8b 11 89 54 24 14 89 44 24 18 0f 85
00758f50: 5f ff ff ff 8b 74 24 0c 8b 5c 24 10 8b ce e8 ed
00758f60: 74 ff ff 8b be f0 00 00 00 85 ff 7c 37 3b 7d 0c
00758f70: 7c 1d 8b 83 e0 00 00 00 8d 8b e0 00 00 00 33 d2
00758f80: 3b c1 74 09 8b 00 83 c2 01 3b c1 75 f7 03 fa 3b
00758f90: be f0 00 00 00 74 0d 8b ce 89 be f0 00 00 00 e8
00758fa0: dc e3 ff ff 85 db 74 09 8b 13 8b 42 14 8b cb ff
00758fb0: d0 85 f6 74 09 8b 16 8b 42 14 8b ce ff d0 5f 5e
00758fc0: 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00758c80 <.text+0x357c80>:
  758c80:	55                                              	push   ebp
  758c81:	8b ec                                           	mov    ebp,esp
  758c83:	83 e4 f0                                        	and    esp,0xfffffff0
  758c86:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  758c8c:	83 ec 14                                        	sub    esp,0x14
  758c8f:	85 c9                                           	test   ecx,ecx
  758c91:	53                                              	push   ebx
  758c92:	56                                              	push   esi
  758c93:	57                                              	push   edi
  758c94:	0f 84 d4 01 00 00                               	je     0x758e6e
  758c9a:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  758c9d:	50                                              	push   eax
  758c9e:	e8 0d 28 ff ff                                  	call   0x74b4b0
  758ca3:	8b f0                                           	mov    esi,eax
  758ca5:	85 f6                                           	test   esi,esi
  758ca7:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  758cab:	74 09                                           	je     0x758cb6
  758cad:	8b 16                                           	mov    edx,DWORD PTR [esi]
  758caf:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  758cb2:	8b ce                                           	mov    ecx,esi
  758cb4:	ff d0                                           	call   eax
  758cb6:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  758cbc:	85 c9                                           	test   ecx,ecx
  758cbe:	0f 84 b6 01 00 00                               	je     0x758e7a
  758cc4:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  758cc7:	52                                              	push   edx
  758cc8:	e8 e3 27 ff ff                                  	call   0x74b4b0
  758ccd:	8b d8                                           	mov    ebx,eax
  758ccf:	85 db                                           	test   ebx,ebx
  758cd1:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
  758cd5:	74 09                                           	je     0x758ce0
  758cd7:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  758cd9:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  758cdc:	8b cb                                           	mov    ecx,ebx
  758cde:	ff d2                                           	call   edx
  758ce0:	85 f6                                           	test   esi,esi
  758ce2:	0f 84 bc 02 00 00                               	je     0x758fa4
  758ce8:	85 db                                           	test   ebx,ebx
  758cea:	0f 84 c1 02 00 00                               	je     0x758fb1
  758cf0:	8b 86 e0 00 00 00                               	mov    eax,DWORD PTR [esi+0xe0]
  758cf6:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  758cf9:	8d be e0 00 00 00                               	lea    edi,[esi+0xe0]
  758cff:	3b c7                                           	cmp    eax,edi
  758d01:	74 11                                           	je     0x758d14
  758d03:	85 c9                                           	test   ecx,ecx
  758d05:	0f 84 80 01 00 00                               	je     0x758e8b
  758d0b:	8b 00                                           	mov    eax,DWORD PTR [eax]
  758d0d:	83 e9 01                                        	sub    ecx,0x1
  758d10:	3b c7                                           	cmp    eax,edi
  758d12:	75 ef                                           	jne    0x758d03
  758d14:	8b b3 e0 00 00 00                               	mov    esi,DWORD PTR [ebx+0xe0]
  758d1a:	81 c3 e0 00 00 00                               	add    ebx,0xe0
  758d20:	3b f3                                           	cmp    esi,ebx
  758d22:	74 5a                                           	je     0x758d7e
  758d24:	eb 0a                                           	jmp    0x758d30
  758d26:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  758d2d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  758d30:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
  758d33:	68 e7 00 00 00                                  	push   0xe7
  758d38:	68 88 99 f9 00                                  	push   0xf99988
  758d3d:	6a 00                                           	push   0x0
  758d3f:	6a 00                                           	push   0x0
  758d41:	50                                              	push   eax
  758d42:	6a 0c                                           	push   0xc
  758d44:	e8 b7 b7 d8 ff                                  	call   0x4e4500
  758d49:	8d 48 08                                        	lea    ecx,[eax+0x8]
  758d4c:	83 c4 18                                        	add    esp,0x18
  758d4f:	85 c9                                           	test   ecx,ecx
  758d51:	74 15                                           	je     0x758d68
  758d53:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  758d56:	85 d2                                           	test   edx,edx
  758d58:	89 11                                           	mov    DWORD PTR [ecx],edx
  758d5a:	74 0c                                           	je     0x758d68
  758d5c:	83 c2 04                                        	add    edx,0x4
  758d5f:	b9 01 00 00 00                                  	mov    ecx,0x1
  758d64:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  758d68:	89 38                                           	mov    DWORD PTR [eax],edi
  758d6a:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
  758d6d:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  758d70:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  758d73:	89 01                                           	mov    DWORD PTR [ecx],eax
  758d75:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
  758d78:	8b 36                                           	mov    esi,DWORD PTR [esi]
  758d7a:	3b f3                                           	cmp    esi,ebx
  758d7c:	75 b2                                           	jne    0x758d30
  758d7e:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  758d82:	0f 28 80 00 01 00 00                            	movaps xmm0,XMMWORD PTR [eax+0x100]
  758d89:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  758d8d:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  758d91:	0f 29 81 00 01 00 00                            	movaps XMMWORD PTR [ecx+0x100],xmm0
  758d98:	0f 28 80 10 01 00 00                            	movaps xmm0,XMMWORD PTR [eax+0x110]
  758d9f:	0f 29 81 10 01 00 00                            	movaps XMMWORD PTR [ecx+0x110],xmm0
  758da6:	0f 28 80 20 01 00 00                            	movaps xmm0,XMMWORD PTR [eax+0x120]
  758dad:	0f 29 81 20 01 00 00                            	movaps XMMWORD PTR [ecx+0x120],xmm0
  758db4:	0f 28 80 30 01 00 00                            	movaps xmm0,XMMWORD PTR [eax+0x130]
  758dbb:	0f 29 81 30 01 00 00                            	movaps XMMWORD PTR [ecx+0x130],xmm0
  758dc2:	8a 90 41 01 00 00                               	mov    dl,BYTE PTR [eax+0x141]
  758dc8:	88 91 41 01 00 00                               	mov    BYTE PTR [ecx+0x141],dl
  758dce:	8a 80 40 01 00 00                               	mov    al,BYTE PTR [eax+0x140]
  758dd4:	88 81 40 01 00 00                               	mov    BYTE PTR [ecx+0x140],al
  758dda:	8b 07                                           	mov    eax,DWORD PTR [edi]
  758ddc:	3b c7                                           	cmp    eax,edi
  758dde:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  758de2:	0f 84 74 01 00 00                               	je     0x758f5c
  758de8:	8b d8                                           	mov    ebx,eax
  758dea:	8b 73 08                                        	mov    esi,DWORD PTR [ebx+0x8]
  758ded:	85 f6                                           	test   esi,esi
  758def:	74 0c                                           	je     0x758dfd
  758df1:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  758df4:	ba 01 00 00 00                                  	mov    edx,0x1
  758df9:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  758dfd:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  758e01:	8b 16                                           	mov    edx,DWORD PTR [esi]
  758e03:	05 58 01 00 00                                  	add    eax,0x158
  758e08:	50                                              	push   eax
  758e09:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  758e0c:	8b ce                                           	mov    ecx,esi
  758e0e:	ff d0                                           	call   eax
  758e10:	8b 16                                           	mov    edx,DWORD PTR [esi]
  758e12:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  758e15:	8b ce                                           	mov    ecx,esi
  758e17:	ff d0                                           	call   eax
  758e19:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  758e1d:	8b 49 3c                                        	mov    ecx,DWORD PTR [ecx+0x3c]
  758e20:	51                                              	push   ecx
  758e21:	8b c8                                           	mov    ecx,eax
  758e23:	e8 e8 36 0c 00                                  	call   0x81c510
  758e28:	50                                              	push   eax
  758e29:	56                                              	push   esi
  758e2a:	e8 b1 67 10 00                                  	call   0x85f5e0
  758e2f:	8d 46 04                                        	lea    eax,[esi+0x4]
  758e32:	83 c4 0c                                        	add    esp,0xc
  758e35:	8b d0                                           	mov    edx,eax
  758e37:	83 c9 ff                                        	or     ecx,0xffffffff
  758e3a:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  758e3e:	49                                              	dec    ecx
  758e3f:	75 11                                           	jne    0x758e52
  758e41:	ba 01 00 00 00                                  	mov    edx,0x1
  758e46:	87 10                                           	xchg   DWORD PTR [eax],edx
  758e48:	8b 06                                           	mov    eax,DWORD PTR [esi]
  758e4a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  758e4c:	6a 01                                           	push   0x1
  758e4e:	8b ce                                           	mov    ecx,esi
  758e50:	ff d2                                           	call   edx
  758e52:	8b 1b                                           	mov    ebx,DWORD PTR [ebx]
  758e54:	3b df                                           	cmp    ebx,edi
  758e56:	75 92                                           	jne    0x758dea
  758e58:	8b 07                                           	mov    eax,DWORD PTR [edi]
  758e5a:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  758e5c:	3b cf                                           	cmp    ecx,edi
  758e5e:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  758e62:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  758e66:	0f 84 e8 00 00 00                               	je     0x758f54
  758e6c:	eb 4d                                           	jmp    0x758ebb
  758e6e:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  758e76:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  758e7a:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  758e82:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  758e86:	e9 55 fe ff ff                                  	jmp    0x758ce0
  758e8b:	3b c7                                           	cmp    eax,edi
  758e8d:	0f 84 81 fe ff ff                               	je     0x758d14
  758e93:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  758e97:	8b 93 e0 00 00 00                               	mov    edx,DWORD PTR [ebx+0xe0]
  758e9d:	56                                              	push   esi
  758e9e:	8d 8b e0 00 00 00                               	lea    ecx,[ebx+0xe0]
  758ea4:	51                                              	push   ecx
  758ea5:	52                                              	push   edx
  758ea6:	50                                              	push   eax
  758ea7:	8b cf                                           	mov    ecx,edi
  758ea9:	e8 d2 85 ff ff                                  	call   0x751480
  758eae:	e9 27 ff ff ff                                  	jmp    0x758dda
  758eb3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  758eb7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  758ebb:	8b 58 08                                        	mov    ebx,DWORD PTR [eax+0x8]
  758ebe:	85 db                                           	test   ebx,ebx
  758ec0:	74 0c                                           	je     0x758ece
  758ec2:	8d 43 04                                        	lea    eax,[ebx+0x4]
  758ec5:	ba 01 00 00 00                                  	mov    edx,0x1
  758eca:	f0 0f c1 10                                     	lock xadd DWORD PTR [eax],edx
  758ece:	8b 71 08                                        	mov    esi,DWORD PTR [ecx+0x8]
  758ed1:	85 f6                                           	test   esi,esi
  758ed3:	74 0c                                           	je     0x758ee1
  758ed5:	8d 46 04                                        	lea    eax,[esi+0x4]
  758ed8:	b9 01 00 00 00                                  	mov    ecx,0x1
  758edd:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  758ee1:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  758ee3:	8b 42 78                                        	mov    eax,DWORD PTR [edx+0x78]
  758ee6:	56                                              	push   esi
  758ee7:	8b cb                                           	mov    ecx,ebx
  758ee9:	ff d0                                           	call   eax
  758eeb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  758eed:	8b 82 80 00 00 00                               	mov    eax,DWORD PTR [edx+0x80]
  758ef3:	53                                              	push   ebx
  758ef4:	8b ce                                           	mov    ecx,esi
  758ef6:	ff d0                                           	call   eax
  758ef8:	8d 46 04                                        	lea    eax,[esi+0x4]
  758efb:	8b c8                                           	mov    ecx,eax
  758efd:	83 ca ff                                        	or     edx,0xffffffff
  758f00:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  758f04:	4a                                              	dec    edx
  758f05:	75 11                                           	jne    0x758f18
  758f07:	b9 01 00 00 00                                  	mov    ecx,0x1
  758f0c:	87 08                                           	xchg   DWORD PTR [eax],ecx
  758f0e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  758f10:	8b 02                                           	mov    eax,DWORD PTR [edx]
  758f12:	6a 01                                           	push   0x1
  758f14:	8b ce                                           	mov    ecx,esi
  758f16:	ff d0                                           	call   eax
  758f18:	8d 43 04                                        	lea    eax,[ebx+0x4]
  758f1b:	8b c8                                           	mov    ecx,eax
  758f1d:	83 ca ff                                        	or     edx,0xffffffff
  758f20:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  758f24:	4a                                              	dec    edx
  758f25:	75 11                                           	jne    0x758f38
  758f27:	b9 01 00 00 00                                  	mov    ecx,0x1
  758f2c:	87 08                                           	xchg   DWORD PTR [eax],ecx
  758f2e:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  758f30:	8b 02                                           	mov    eax,DWORD PTR [edx]
  758f32:	6a 01                                           	push   0x1
  758f34:	8b cb                                           	mov    ecx,ebx
  758f36:	ff d0                                           	call   eax
  758f38:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  758f3c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  758f40:	8b 00                                           	mov    eax,DWORD PTR [eax]
  758f42:	3b c7                                           	cmp    eax,edi
  758f44:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  758f46:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  758f4a:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  758f4e:	0f 85 5f ff ff ff                               	jne    0x758eb3
  758f54:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  758f58:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  758f5c:	8b ce                                           	mov    ecx,esi
  758f5e:	e8 ed 74 ff ff                                  	call   0x750450
  758f63:	8b be f0 00 00 00                               	mov    edi,DWORD PTR [esi+0xf0]
  758f69:	85 ff                                           	test   edi,edi
  758f6b:	7c 37                                           	jl     0x758fa4
  758f6d:	3b 7d 0c                                        	cmp    edi,DWORD PTR [ebp+0xc]
  758f70:	7c 1d                                           	jl     0x758f8f
  758f72:	8b 83 e0 00 00 00                               	mov    eax,DWORD PTR [ebx+0xe0]
  758f78:	8d 8b e0 00 00 00                               	lea    ecx,[ebx+0xe0]
  758f7e:	33 d2                                           	xor    edx,edx
  758f80:	3b c1                                           	cmp    eax,ecx
  758f82:	74 09                                           	je     0x758f8d
  758f84:	8b 00                                           	mov    eax,DWORD PTR [eax]
  758f86:	83 c2 01                                        	add    edx,0x1
  758f89:	3b c1                                           	cmp    eax,ecx
  758f8b:	75 f7                                           	jne    0x758f84
  758f8d:	03 fa                                           	add    edi,edx
  758f8f:	3b be f0 00 00 00                               	cmp    edi,DWORD PTR [esi+0xf0]
  758f95:	74 0d                                           	je     0x758fa4
  758f97:	8b ce                                           	mov    ecx,esi
  758f99:	89 be f0 00 00 00                               	mov    DWORD PTR [esi+0xf0],edi
  758f9f:	e8 dc e3 ff ff                                  	call   0x757380
  758fa4:	85 db                                           	test   ebx,ebx
  758fa6:	74 09                                           	je     0x758fb1
  758fa8:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  758faa:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  758fad:	8b cb                                           	mov    ecx,ebx
  758faf:	ff d0                                           	call   eax
  758fb1:	85 f6                                           	test   esi,esi
  758fb3:	74 09                                           	je     0x758fbe
  758fb5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  758fb7:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  758fba:	8b ce                                           	mov    ecx,esi
  758fbc:	ff d0                                           	call   eax
  758fbe:	5f                                              	pop    edi
  758fbf:	5e                                              	pop    esi
  758fc0:	5b                                              	pop    ebx
  758fc1:	8b e5                                           	mov    esp,ebp
  758fc3:	5d                                              	pop    ebp
  758fc4:	c3                                              	ret
  758fc5:	cc                                              	int3
  758fc6:	cc                                              	int3
  758fc7:	cc                                              	int3
  758fc8:	cc                                              	int3
  758fc9:	cc                                              	int3
  758fca:	cc                                              	int3
  758fcb:	cc                                              	int3
  758fcc:	cc                                              	int3
  758fcd:	cc                                              	int3
  758fce:	cc                                              	int3
  758fcf:	cc                                              	int3
