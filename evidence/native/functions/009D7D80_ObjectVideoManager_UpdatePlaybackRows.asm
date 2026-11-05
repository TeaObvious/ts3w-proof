# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x009d7d80 ObjectVideoManager_UpdatePlaybackRows
# Complete current Ghidra body [009d7d80, 009d80a4] inclusive: 235 instructions/805 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and stored-vs-inferred ABI limits: 009D7D80_ObjectVideoManager_UpdatePlaybackRows.c
# Actual RET8 despite stored one-argument fastcall metadata; FCOMIP/COMISS carry/unordered and TEST-clears-carry behavior govern.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009d7d80 <.text+0x5d6d80>:
  9d7d80:	83 ec 44                                        	sub    esp,0x44
  9d7d83:	57                                              	push   edi
  9d7d84:	8b f9                                           	mov    edi,ecx
  9d7d86:	e8 85 6b c3 ff                                  	call   0x60e910
  9d7d8b:	80 b8 8d 00 00 00 00                            	cmp    BYTE PTR [eax+0x8d],0x0
  9d7d92:	0f 85 06 03 00 00                               	jne    0x9d809e
  9d7d98:	53                                              	push   ebx
  9d7d99:	56                                              	push   esi
  9d7d9a:	8b b7 88 00 00 00                               	mov    esi,DWORD PTR [edi+0x88]
  9d7da0:	8d 9f 88 00 00 00                               	lea    ebx,[edi+0x88]
  9d7da6:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  9d7daa:	50                                              	push   eax
  9d7dab:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  9d7daf:	ff 15 bc 63 f9 00                               	call   DWORD PTR ds:0xf963bc
  9d7db5:	3b f3                                           	cmp    esi,ebx
  9d7db7:	0f 84 df 02 00 00                               	je     0x9d809c
  9d7dbd:	55                                              	push   ebp
  9d7dbe:	8b ff                                           	mov    edi,edi
  9d7dc0:	80 be a4 00 00 00 00                            	cmp    BYTE PTR [esi+0xa4],0x0
  9d7dc7:	0f 84 42 01 00 00                               	je     0x9d7f0f
  9d7dcd:	8b 4e 74                                        	mov    ecx,DWORD PTR [esi+0x74]
  9d7dd0:	8b 56 70                                        	mov    edx,DWORD PTR [esi+0x70]
  9d7dd3:	51                                              	push   ecx
  9d7dd4:	52                                              	push   edx
  9d7dd5:	8b cf                                           	mov    ecx,edi
  9d7dd7:	e8 84 ea ff ff                                  	call   0x9d6860
  9d7ddc:	d9 96 a8 00 00 00                               	fst    DWORD PTR [esi+0xa8]
  9d7de2:	d9 05 20 b2 fa 00                               	fld    DWORD PTR ds:0xfab220
  9d7de8:	df f1                                           	fcomip st,st(1)
  9d7dea:	dd d8                                           	fstp   st(0)
  9d7dec:	0f 86 cd 00 00 00                               	jbe    0x9d7ebf
  9d7df2:	8b 8e 90 00 00 00                               	mov    ecx,DWORD PTR [esi+0x90]
  9d7df8:	85 c9                                           	test   ecx,ecx
  9d7dfa:	8d 86 90 00 00 00                               	lea    eax,[esi+0x90]
  9d7e00:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  9d7e04:	74 22                                           	je     0x9d7e28
  9d7e06:	8b 57 28                                        	mov    edx,DWORD PTR [edi+0x28]
  9d7e09:	8b 5f 24                                        	mov    ebx,DWORD PTR [edi+0x24]
  9d7e0c:	8b 1c 93                                        	mov    ebx,DWORD PTR [ebx+edx*4]
  9d7e0f:	8d 4f 20                                        	lea    ecx,[edi+0x20]
  9d7e12:	50                                              	push   eax
  9d7e13:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  9d7e17:	50                                              	push   eax
  9d7e18:	e8 13 ee ff ff                                  	call   0x9d6c30
  9d7e1d:	39 18                                           	cmp    DWORD PTR [eax],ebx
  9d7e1f:	74 07                                           	je     0x9d7e28
  9d7e21:	8b 36                                           	mov    esi,DWORD PTR [esi]
  9d7e23:	e9 61 02 00 00                                  	jmp    0x9d8089
  9d7e28:	8a 9e a2 00 00 00                               	mov    bl,BYTE PTR [esi+0xa2]
  9d7e2e:	84 db                                           	test   bl,bl
  9d7e30:	0f 84 80 00 00 00                               	je     0x9d7eb6
  9d7e36:	8b 4e 60                                        	mov    ecx,DWORD PTR [esi+0x60]
  9d7e39:	d9 86 9c 00 00 00                               	fld    DWORD PTR [esi+0x9c]
  9d7e3f:	8b 46 68                                        	mov    eax,DWORD PTR [esi+0x68]
  9d7e42:	8b 56 64                                        	mov    edx,DWORD PTR [esi+0x64]
  9d7e45:	89 4c 24 44                                     	mov    DWORD PTR [esp+0x44],ecx
  9d7e49:	8b 4e 6c                                        	mov    ecx,DWORD PTR [esi+0x6c]
  9d7e4c:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
  9d7e50:	89 4c 24 50                                     	mov    DWORD PTR [esp+0x50],ecx
  9d7e54:	33 c0                                           	xor    eax,eax
  9d7e56:	33 c9                                           	xor    ecx,ecx
  9d7e58:	89 46 60                                        	mov    DWORD PTR [esi+0x60],eax
  9d7e5b:	8b 86 94 00 00 00                               	mov    eax,DWORD PTR [esi+0x94]
  9d7e61:	89 54 24 48                                     	mov    DWORD PTR [esp+0x48],edx
  9d7e65:	89 4e 64                                        	mov    DWORD PTR [esi+0x64],ecx
  9d7e68:	8b 8e 98 00 00 00                               	mov    ecx,DWORD PTR [esi+0x98]
  9d7e6e:	33 d2                                           	xor    edx,edx
  9d7e70:	89 56 68                                        	mov    DWORD PTR [esi+0x68],edx
  9d7e73:	0f b6 96 a1 00 00 00                            	movzx  edx,BYTE PTR [esi+0xa1]
  9d7e7a:	52                                              	push   edx
  9d7e7b:	8b 96 8c 00 00 00                               	mov    edx,DWORD PTR [esi+0x8c]
  9d7e81:	50                                              	push   eax
  9d7e82:	8b 86 88 00 00 00                               	mov    eax,DWORD PTR [esi+0x88]
  9d7e88:	51                                              	push   ecx
  9d7e89:	52                                              	push   edx
  9d7e8a:	8b 56 74                                        	mov    edx,DWORD PTR [esi+0x74]
  9d7e8d:	50                                              	push   eax
  9d7e8e:	8b 46 70                                        	mov    eax,DWORD PTR [esi+0x70]
  9d7e91:	51                                              	push   ecx
  9d7e92:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  9d7e96:	33 ed                                           	xor    ebp,ebp
  9d7e98:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  9d7e9b:	51                                              	push   ecx
  9d7e9c:	53                                              	push   ebx
  9d7e9d:	52                                              	push   edx
  9d7e9e:	50                                              	push   eax
  9d7e9f:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  9d7ea3:	51                                              	push   ecx
  9d7ea4:	8b cf                                           	mov    ecx,edi
  9d7ea6:	89 6e 6c                                        	mov    DWORD PTR [esi+0x6c],ebp
  9d7ea9:	e8 32 fb ff ff                                  	call   0x9d79e0
  9d7eae:	84 c0                                           	test   al,al
  9d7eb0:	0f 85 d7 01 00 00                               	jne    0x9d808d
  9d7eb6:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  9d7eba:	e9 bb 01 00 00                                  	jmp    0x9d807a
  9d7ebf:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  9d7ec3:	2b 86 b0 00 00 00                               	sub    eax,DWORD PTR [esi+0xb0]
  9d7ec9:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  9d7ecd:	1b 8e b4 00 00 00                               	sbb    ecx,DWORD PTR [esi+0xb4]
  9d7ed3:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  9d7ed7:	0f 88 44 ff ff ff                               	js     0x9d7e21
  9d7edd:	7f 08                                           	jg     0x9d7ee7
  9d7edf:	85 c0                                           	test   eax,eax
  9d7ee1:	0f 82 3a ff ff ff                               	jb     0x9d7e21
  9d7ee7:	80 be a2 00 00 00 00                            	cmp    BYTE PTR [esi+0xa2],0x0
  9d7eee:	74 16                                           	je     0x9d7f06
  9d7ef0:	d9 87 98 00 00 00                               	fld    DWORD PTR [edi+0x98]
  9d7ef6:	51                                              	push   ecx
  9d7ef7:	8b ce                                           	mov    ecx,esi
  9d7ef9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  9d7efc:	e8 cf e5 ff ff                                  	call   0x9d64d0
  9d7f01:	e9 87 01 00 00                                  	jmp    0x9d808d
  9d7f06:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  9d7f0a:	e9 6b 01 00 00                                  	jmp    0x9d807a
  9d7f0f:	83 7e 78 00                                     	cmp    DWORD PTR [esi+0x78],0x0
  9d7f13:	0f 84 5d 01 00 00                               	je     0x9d8076
  9d7f19:	8b 4e 7c                                        	mov    ecx,DWORD PTR [esi+0x7c]
  9d7f1c:	85 c9                                           	test   ecx,ecx
  9d7f1e:	0f 84 52 01 00 00                               	je     0x9d8076
  9d7f24:	8b 86 84 00 00 00                               	mov    eax,DWORD PTR [esi+0x84]
  9d7f2a:	85 c0                                           	test   eax,eax
  9d7f2c:	0f 84 44 01 00 00                               	je     0x9d8076
  9d7f32:	80 be a0 00 00 00 00                            	cmp    BYTE PTR [esi+0xa0],0x0
  9d7f39:	75 1d                                           	jne    0x9d7f58
  9d7f3b:	80 79 78 00                                     	cmp    BYTE PTR [ecx+0x78],0x0
  9d7f3f:	74 17                                           	je     0x9d7f58
  9d7f41:	8b 4e 74                                        	mov    ecx,DWORD PTR [esi+0x74]
  9d7f44:	8b 56 70                                        	mov    edx,DWORD PTR [esi+0x70]
  9d7f47:	50                                              	push   eax
  9d7f48:	51                                              	push   ecx
  9d7f49:	52                                              	push   edx
  9d7f4a:	8b cf                                           	mov    ecx,edi
  9d7f4c:	e8 bf e7 ff ff                                  	call   0x9d6710
  9d7f51:	c6 86 a0 00 00 00 01                            	mov    BYTE PTR [esi+0xa0],0x1
  9d7f58:	8b 4e 78                                        	mov    ecx,DWORD PTR [esi+0x78]
  9d7f5b:	e8 10 47 54 00                                  	call   0xf1c670
  9d7f60:	84 c0                                           	test   al,al
  9d7f62:	74 20                                           	je     0x9d7f84
  9d7f64:	80 be a2 00 00 00 00                            	cmp    BYTE PTR [esi+0xa2],0x0
  9d7f6b:	75 0f                                           	jne    0x9d7f7c
  9d7f6d:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  9d7f71:	50                                              	push   eax
  9d7f72:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  9d7f76:	51                                              	push   ecx
  9d7f77:	e9 04 01 00 00                                  	jmp    0x9d8080
  9d7f7c:	56                                              	push   esi
  9d7f7d:	8b cf                                           	mov    ecx,edi
  9d7f7f:	e8 bc f8 ff ff                                  	call   0x9d7840
  9d7f84:	8b 4e 78                                        	mov    ecx,DWORD PTR [esi+0x78]
  9d7f87:	e8 c4 47 54 00                                  	call   0xf1c750
  9d7f8c:	85 c0                                           	test   eax,eax
  9d7f8e:	75 07                                           	jne    0x9d7f97
  9d7f90:	8b 36                                           	mov    esi,DWORD PTR [esi]
  9d7f92:	e9 f2 00 00 00                                  	jmp    0x9d8089
  9d7f97:	80 be a3 00 00 00 00                            	cmp    BYTE PTR [esi+0xa3],0x0
  9d7f9e:	74 09                                           	je     0x9d7fa9
  9d7fa0:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  9d7fa4:	e9 d1 00 00 00                                  	jmp    0x9d807a
  9d7fa9:	8b 4e 74                                        	mov    ecx,DWORD PTR [esi+0x74]
  9d7fac:	8b 56 70                                        	mov    edx,DWORD PTR [esi+0x70]
  9d7faf:	51                                              	push   ecx
  9d7fb0:	52                                              	push   edx
  9d7fb1:	8b cf                                           	mov    ecx,edi
  9d7fb3:	e8 a8 e8 ff ff                                  	call   0x9d6860
  9d7fb8:	d9 54 24 14                                     	fst    DWORD PTR [esp+0x14]
  9d7fbc:	d9 96 a8 00 00 00                               	fst    DWORD PTR [esi+0xa8]
  9d7fc2:	d9 ee                                           	fldz
  9d7fc4:	d9 c9                                           	fxch   st(1)
  9d7fc6:	df f1                                           	fcomip st,st(1)
  9d7fc8:	dd d8                                           	fstp   st(0)
  9d7fca:	0f 82 82 00 00 00                               	jb     0x9d8052
  9d7fd0:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  9d7fd6:	0f 2f 05 20 b2 fa 00                            	comiss xmm0,DWORD PTR ds:0xfab220
  9d7fdd:	72 4e                                           	jb     0x9d802d
  9d7fdf:	80 be a2 00 00 00 00                            	cmp    BYTE PTR [esi+0xa2],0x0
  9d7fe6:	74 39                                           	je     0x9d8021
  9d7fe8:	d9 87 98 00 00 00                               	fld    DWORD PTR [edi+0x98]
  9d7fee:	51                                              	push   ecx
  9d7fef:	8b ce                                           	mov    ecx,esi
  9d7ff1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  9d7ff4:	e8 d7 e4 ff ff                                  	call   0x9d64d0
  9d7ff9:	a1 9c a9 1e 01                                  	mov    eax,ds:0x11ea99c
  9d7ffe:	8b 4e 74                                        	mov    ecx,DWORD PTR [esi+0x74]
  9d8001:	8b 56 70                                        	mov    edx,DWORD PTR [esi+0x70]
  9d8004:	50                                              	push   eax
  9d8005:	51                                              	push   ecx
  9d8006:	52                                              	push   edx
  9d8007:	8b cf                                           	mov    ecx,edi
  9d8009:	c6 86 a4 00 00 00 01                            	mov    BYTE PTR [esi+0xa4],0x1
  9d8010:	e8 fb e6 ff ff                                  	call   0x9d6710
  9d8015:	6a 00                                           	push   0x0
  9d8017:	56                                              	push   esi
  9d8018:	8b cf                                           	mov    ecx,edi
  9d801a:	e8 c1 f0 ff ff                                  	call   0x9d70e0
  9d801f:	eb 6c                                           	jmp    0x9d808d
  9d8021:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  9d8025:	50                                              	push   eax
  9d8026:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  9d802a:	51                                              	push   ecx
  9d802b:	eb 53                                           	jmp    0x9d8080
  9d802d:	0f 2f 87 94 00 00 00                            	comiss xmm0,DWORD PTR [edi+0x94]
  9d8034:	76 1c                                           	jbe    0x9d8052
  9d8036:	80 be a5 00 00 00 00                            	cmp    BYTE PTR [esi+0xa5],0x0
  9d803d:	75 0f                                           	jne    0x9d804e
  9d803f:	8b 4e 78                                        	mov    ecx,DWORD PTR [esi+0x78]
  9d8042:	c6 86 a5 00 00 00 01                            	mov    BYTE PTR [esi+0xa5],0x1
  9d8049:	e8 92 0b 54 00                                  	call   0xf18be0
  9d804e:	8b 36                                           	mov    esi,DWORD PTR [esi]
  9d8050:	eb 37                                           	jmp    0x9d8089
  9d8052:	80 be a5 00 00 00 00                            	cmp    BYTE PTR [esi+0xa5],0x0
  9d8059:	74 0f                                           	je     0x9d806a
  9d805b:	8b 4e 78                                        	mov    ecx,DWORD PTR [esi+0x78]
  9d805e:	c6 86 a5 00 00 00 00                            	mov    BYTE PTR [esi+0xa5],0x0
  9d8065:	e8 06 48 54 00                                  	call   0xf1c870
  9d806a:	8b 4e 78                                        	mov    ecx,DWORD PTR [esi+0x78]
  9d806d:	e8 fe 63 54 00                                  	call   0xf1e470
  9d8072:	8b 36                                           	mov    esi,DWORD PTR [esi]
  9d8074:	eb 13                                           	jmp    0x9d8089
  9d8076:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  9d807a:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  9d807e:	52                                              	push   edx
  9d807f:	50                                              	push   eax
  9d8080:	8b cf                                           	mov    ecx,edi
  9d8082:	e8 e9 f4 ff ff                                  	call   0x9d7570
  9d8087:	8b 30                                           	mov    esi,DWORD PTR [eax]
  9d8089:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  9d808d:	8d 87 88 00 00 00                               	lea    eax,[edi+0x88]
  9d8093:	3b f0                                           	cmp    esi,eax
  9d8095:	0f 85 25 fd ff ff                               	jne    0x9d7dc0
  9d809b:	5d                                              	pop    ebp
  9d809c:	5e                                              	pop    esi
  9d809d:	5b                                              	pop    ebx
  9d809e:	5f                                              	pop    edi
  9d809f:	83 c4 44                                        	add    esp,0x44
  9d80a2:	c2 08 00                                        	ret    0x8
