# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779c70 (ScriptCore.UIManager::UIManager_PickPixelImpl)
Paired Ghidra pseudocode: 00779C70_ScriptCore_UIManager_UIManager_PickPixelImpl.c
Window: [0x00779c70, 0x00779ed0) (608 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779c70: 83 ec 60 53 56 e8 06 62 d3 ff 8b f0 e8 0f f7 fe
00779c80: ff 8d 4c 24 3c 8b d8 c7 44 24 10 00 00 00 00 e8
00779c90: 6c b7 cc ff 8d 44 24 2c 50 8d 4c 24 70 e8 3e 24
00779ca0: ff ff 8b 44 24 34 3d 02 00 7d 2f 74 12 3d 04 00
00779cb0: 7d 2f 74 0b 3d 06 00 7d 2f 0f 85 fb 01 00 00 8b
00779cc0: 16 8b 52 44 8d 44 24 2c 50 8b ce ff d2 85 c0 c7
00779cd0: 44 24 0c 00 00 00 00 0f 84 dd 01 00 00 8b 10 8b
00779ce0: 52 34 6a 00 6a 01 6a 06 6a 01 8d 4c 24 1c 51 8d
00779cf0: 4c 24 40 51 8b c8 ff d2 84 c0 0f 84 ba 01 00 00
00779d00: 6a 30 e8 59 a3 cc ff 83 c4 04 85 c0 74 0b 8b c8
00779d10: e8 db a9 cc ff 8b f0 eb 02 33 f6 8b 4c 24 0c 8b
00779d20: 01 8b 50 18 6a 0a 56 6a 32 ff d2 50 8d 4c 24 4c
00779d30: e8 ab c3 cc ff 84 c0 75 39 85 f6 74 0a 8b 06 8b
00779d40: 10 6a 01 8b ce ff d2 8b 4c 24 0c 8b 01 8b 50 20
00779d50: ff d2 8b 4c 24 0c 8b 01 8b 50 08 ff d2 8b 74 24
00779d60: 10 8d 4c 24 3c e8 d6 b6 cc ff 8b c6 5e 5b 83 c4
00779d70: 60 c3 8b 4c 24 0c 8b 01 8b 50 20 57 ff d2 8b 4c
00779d80: 24 10 8b 01 8b 50 08 ff d2 c7 44 24 10 00 00 00
00779d90: 00 8b 56 18 8b c2 85 c0 89 44 24 18 db 44 24 18
00779da0: 7d 06 d8 05 48 99 f9 00 d8 8c 24 80 00 00 00 8b
00779db0: 7e 1c d9 7c 24 0e 0f b7 44 24 0e 0d 00 0c 00 00
00779dc0: 89 44 24 18 8b c7 85 c0 d9 6c 24 18 df 7c 24 18
00779dd0: 8b 4c 24 18 89 44 24 18 d9 6c 24 0e db 44 24 18
00779de0: 7d 06 d8 05 48 99 f9 00 d8 8c 24 84 00 00 00 d9
00779df0: 7c 24 0e 0f b7 44 24 0e 0d 00 0c 00 00 3b ca 89
00779e00: 44 24 18 d9 6c 24 18 df 7c 24 18 8b 44 24 18 d9
00779e10: 6c 24 0e 72 05 8b ca 83 e9 01 3b c7 72 03 8d 47
00779e20: ff 8b 16 50 8b 42 30 51 8b ce ff d0 f3 0f 10 05
00779e30: 64 e5 fa 00 8b c8 c1 e9 10 0f b6 d1 8b c8 f3 0f
00779e40: 2a ca f3 0f 59 c8 c1 e9 08 0f b6 d1 f3 0f 11 4c
00779e50: 24 20 0f b6 c8 f3 0f 2a ca 8b 13 8b 92 90 00 00
00779e60: 00 f3 0f 59 c8 f3 0f 11 4c 24 24 f3 0f 2a c9 f3
00779e70: 0f 59 c8 c1 e8 18 f3 0f 11 4c 24 28 f3 0f 2a c8
00779e80: 6a 04 8d 44 24 18 f3 0f 59 c8 50 8b cb f3 0f 11
00779e90: 4c 24 34 ff d2 8b 03 8b 80 a8 00 00 00 6a 04 6a
00779ea0: 00 8d 4c 24 28 51 8d 54 24 20 52 8b cb ff d0 8b
00779eb0: 16 8b 02 6a 01 8b ce ff d0 5f 8b 74 24 10 8d 4c
00779ec0: 24 3c e8 79 b5 cc ff 8b c6 5e 5b 83 c4 60 c3 cc

LINEAR DISASSEMBLY
00779c70 <.text+0x378c70>:
  779c70:	83 ec 60                                        	sub    esp,0x60
  779c73:	53                                              	push   ebx
  779c74:	56                                              	push   esi
  779c75:	e8 06 62 d3 ff                                  	call   0x4afe80
  779c7a:	8b f0                                           	mov    esi,eax
  779c7c:	e8 0f f7 fe ff                                  	call   0x769390
  779c81:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  779c85:	8b d8                                           	mov    ebx,eax
  779c87:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  779c8f:	e8 6c b7 cc ff                                  	call   0x445400
  779c94:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  779c98:	50                                              	push   eax
  779c99:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  779c9d:	e8 3e 24 ff ff                                  	call   0x76c0e0
  779ca2:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  779ca6:	3d 02 00 7d 2f                                  	cmp    eax,0x2f7d0002
  779cab:	74 12                                           	je     0x779cbf
  779cad:	3d 04 00 7d 2f                                  	cmp    eax,0x2f7d0004
  779cb2:	74 0b                                           	je     0x779cbf
  779cb4:	3d 06 00 7d 2f                                  	cmp    eax,0x2f7d0006
  779cb9:	0f 85 fb 01 00 00                               	jne    0x779eba
  779cbf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  779cc1:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
  779cc4:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  779cc8:	50                                              	push   eax
  779cc9:	8b ce                                           	mov    ecx,esi
  779ccb:	ff d2                                           	call   edx
  779ccd:	85 c0                                           	test   eax,eax
  779ccf:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  779cd7:	0f 84 dd 01 00 00                               	je     0x779eba
  779cdd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779cdf:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
  779ce2:	6a 00                                           	push   0x0
  779ce4:	6a 01                                           	push   0x1
  779ce6:	6a 06                                           	push   0x6
  779ce8:	6a 01                                           	push   0x1
  779cea:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  779cee:	51                                              	push   ecx
  779cef:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  779cf3:	51                                              	push   ecx
  779cf4:	8b c8                                           	mov    ecx,eax
  779cf6:	ff d2                                           	call   edx
  779cf8:	84 c0                                           	test   al,al
  779cfa:	0f 84 ba 01 00 00                               	je     0x779eba
  779d00:	6a 30                                           	push   0x30
  779d02:	e8 59 a3 cc ff                                  	call   0x444060
  779d07:	83 c4 04                                        	add    esp,0x4
  779d0a:	85 c0                                           	test   eax,eax
  779d0c:	74 0b                                           	je     0x779d19
  779d0e:	8b c8                                           	mov    ecx,eax
  779d10:	e8 db a9 cc ff                                  	call   0x4446f0
  779d15:	8b f0                                           	mov    esi,eax
  779d17:	eb 02                                           	jmp    0x779d1b
  779d19:	33 f6                                           	xor    esi,esi
  779d1b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  779d1f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  779d21:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  779d24:	6a 0a                                           	push   0xa
  779d26:	56                                              	push   esi
  779d27:	6a 32                                           	push   0x32
  779d29:	ff d2                                           	call   edx
  779d2b:	50                                              	push   eax
  779d2c:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  779d30:	e8 ab c3 cc ff                                  	call   0x4460e0
  779d35:	84 c0                                           	test   al,al
  779d37:	75 39                                           	jne    0x779d72
  779d39:	85 f6                                           	test   esi,esi
  779d3b:	74 0a                                           	je     0x779d47
  779d3d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  779d3f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779d41:	6a 01                                           	push   0x1
  779d43:	8b ce                                           	mov    ecx,esi
  779d45:	ff d2                                           	call   edx
  779d47:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  779d4b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  779d4d:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  779d50:	ff d2                                           	call   edx
  779d52:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  779d56:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  779d58:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  779d5b:	ff d2                                           	call   edx
  779d5d:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  779d61:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  779d65:	e8 d6 b6 cc ff                                  	call   0x445440
  779d6a:	8b c6                                           	mov    eax,esi
  779d6c:	5e                                              	pop    esi
  779d6d:	5b                                              	pop    ebx
  779d6e:	83 c4 60                                        	add    esp,0x60
  779d71:	c3                                              	ret
  779d72:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  779d76:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  779d78:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  779d7b:	57                                              	push   edi
  779d7c:	ff d2                                           	call   edx
  779d7e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  779d82:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  779d84:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  779d87:	ff d2                                           	call   edx
  779d89:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  779d91:	8b 56 18                                        	mov    edx,DWORD PTR [esi+0x18]
  779d94:	8b c2                                           	mov    eax,edx
  779d96:	85 c0                                           	test   eax,eax
  779d98:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  779d9c:	db 44 24 18                                     	fild   DWORD PTR [esp+0x18]
  779da0:	7d 06                                           	jge    0x779da8
  779da2:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  779da8:	d8 8c 24 80 00 00 00                            	fmul   DWORD PTR [esp+0x80]
  779daf:	8b 7e 1c                                        	mov    edi,DWORD PTR [esi+0x1c]
  779db2:	d9 7c 24 0e                                     	fnstcw WORD PTR [esp+0xe]
  779db6:	0f b7 44 24 0e                                  	movzx  eax,WORD PTR [esp+0xe]
  779dbb:	0d 00 0c 00 00                                  	or     eax,0xc00
  779dc0:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  779dc4:	8b c7                                           	mov    eax,edi
  779dc6:	85 c0                                           	test   eax,eax
  779dc8:	d9 6c 24 18                                     	fldcw  WORD PTR [esp+0x18]
  779dcc:	df 7c 24 18                                     	fistp  QWORD PTR [esp+0x18]
  779dd0:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  779dd4:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  779dd8:	d9 6c 24 0e                                     	fldcw  WORD PTR [esp+0xe]
  779ddc:	db 44 24 18                                     	fild   DWORD PTR [esp+0x18]
  779de0:	7d 06                                           	jge    0x779de8
  779de2:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  779de8:	d8 8c 24 84 00 00 00                            	fmul   DWORD PTR [esp+0x84]
  779def:	d9 7c 24 0e                                     	fnstcw WORD PTR [esp+0xe]
  779df3:	0f b7 44 24 0e                                  	movzx  eax,WORD PTR [esp+0xe]
  779df8:	0d 00 0c 00 00                                  	or     eax,0xc00
  779dfd:	3b ca                                           	cmp    ecx,edx
  779dff:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  779e03:	d9 6c 24 18                                     	fldcw  WORD PTR [esp+0x18]
  779e07:	df 7c 24 18                                     	fistp  QWORD PTR [esp+0x18]
  779e0b:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  779e0f:	d9 6c 24 0e                                     	fldcw  WORD PTR [esp+0xe]
  779e13:	72 05                                           	jb     0x779e1a
  779e15:	8b ca                                           	mov    ecx,edx
  779e17:	83 e9 01                                        	sub    ecx,0x1
  779e1a:	3b c7                                           	cmp    eax,edi
  779e1c:	72 03                                           	jb     0x779e21
  779e1e:	8d 47 ff                                        	lea    eax,[edi-0x1]
  779e21:	8b 16                                           	mov    edx,DWORD PTR [esi]
  779e23:	50                                              	push   eax
  779e24:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  779e27:	51                                              	push   ecx
  779e28:	8b ce                                           	mov    ecx,esi
  779e2a:	ff d0                                           	call   eax
  779e2c:	f3 0f 10 05 64 e5 fa 00                         	movss  xmm0,DWORD PTR ds:0xfae564
  779e34:	8b c8                                           	mov    ecx,eax
  779e36:	c1 e9 10                                        	shr    ecx,0x10
  779e39:	0f b6 d1                                        	movzx  edx,cl
  779e3c:	8b c8                                           	mov    ecx,eax
  779e3e:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  779e42:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  779e46:	c1 e9 08                                        	shr    ecx,0x8
  779e49:	0f b6 d1                                        	movzx  edx,cl
  779e4c:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [esp+0x20],xmm1
  779e52:	0f b6 c8                                        	movzx  ecx,al
  779e55:	f3 0f 2a ca                                     	cvtsi2ss xmm1,edx
  779e59:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  779e5b:	8b 92 90 00 00 00                               	mov    edx,DWORD PTR [edx+0x90]
  779e61:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  779e65:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
  779e6b:	f3 0f 2a c9                                     	cvtsi2ss xmm1,ecx
  779e6f:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  779e73:	c1 e8 18                                        	shr    eax,0x18
  779e76:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [esp+0x28],xmm1
  779e7c:	f3 0f 2a c8                                     	cvtsi2ss xmm1,eax
  779e80:	6a 04                                           	push   0x4
  779e82:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  779e86:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  779e8a:	50                                              	push   eax
  779e8b:	8b cb                                           	mov    ecx,ebx
  779e8d:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  779e93:	ff d2                                           	call   edx
  779e95:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  779e97:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
  779e9d:	6a 04                                           	push   0x4
  779e9f:	6a 00                                           	push   0x0
  779ea1:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  779ea5:	51                                              	push   ecx
  779ea6:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  779eaa:	52                                              	push   edx
  779eab:	8b cb                                           	mov    ecx,ebx
  779ead:	ff d0                                           	call   eax
  779eaf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  779eb1:	8b 02                                           	mov    eax,DWORD PTR [edx]
  779eb3:	6a 01                                           	push   0x1
  779eb5:	8b ce                                           	mov    ecx,esi
  779eb7:	ff d0                                           	call   eax
  779eb9:	5f                                              	pop    edi
  779eba:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  779ebe:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  779ec2:	e8 79 b5 cc ff                                  	call   0x445440
  779ec7:	8b c6                                           	mov    eax,esi
  779ec9:	5e                                              	pop    esi
  779eca:	5b                                              	pop    ebx
  779ecb:	83 c4 60                                        	add    esp,0x60
  779ece:	c3                                              	ret
  779ecf:	cc                                              	int3
