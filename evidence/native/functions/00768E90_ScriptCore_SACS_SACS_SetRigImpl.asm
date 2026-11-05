# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00768e90 (ScriptCore.SACS::SACS_SetRigImpl)
Paired Ghidra pseudocode: 00768E90_ScriptCore_SACS_SACS_SetRigImpl.c
Window: [0x00768e90, 0x007691a0) (784 bytes; stop exclusive)
Next defined Ghidra entry: 0x007691a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00768e90: 55 8b ec 83 e4 f0 81 ec e4 00 00 00 53 56 57 e8
00768ea0: cc e6 1c 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 cd
00768eb0: f0 1c 00 8b d8 33 f6 3b de 89 5c 24 10 74 4d 8d
00768ec0: 7b 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 84
00768ed0: d4 1d 01 52 8b cb e8 85 b3 1c 00 3b c6 89 44 24
00768ee0: 14 75 35 8b c7 83 c9 ff f0 0f c1 08 49 75 11 ba
00768ef0: 01 00 00 00 87 17 8b 03 8b 10 6a 01 8b cb ff d2
00768f00: b8 f8 ff ff ff 5f 5e 5b 8b e5 5d c3 b8 f7 ff ff
00768f10: ff 5f 5e 5b 8b e5 5d c3 a1 14 a1 1e 01 50 8b cb
00768f20: 89 74 24 1c 89 74 24 20 89 74 24 24 c7 44 24 28
00768f30: 58 80 00 01 e8 27 b3 1c 00 8b f8 85 ff 89 7c 24
00768f40: 28 0f 84 64 01 00 00 8d 4c 24 2c 51 8b cf e8 3d
00768f50: 89 1e 00 8d 4c 24 2c e8 e4 7f 1e 00 84 c0 0f 84
00768f60: 2a 01 00 00 8d 54 24 0c 52 8d 4c 24 30 c7 44 24
00768f70: 10 00 00 00 00 e8 56 74 1e 00 83 7c 24 0c 00 8b
00768f80: f8 89 bc 24 98 00 00 00 0f 84 ef 00 00 00 8d 4c
00768f90: 24 2c e8 59 74 1e 00 8b 4c 24 0c 8a d8 8b 01 8b
00768fa0: 50 08 6a 03 88 9c 24 94 00 00 00 ff d2 85 c0 74
00768fb0: 0d 3b 78 1c c6 84 24 91 00 00 00 01 74 08 c6 84
00768fc0: 24 91 00 00 00 00 84 db 74 0b 8b 4c 24 0c e8 1d
00768fd0: 58 27 00 eb 07 8b 44 24 0c 8b 40 04 85 ff 89 84
00768fe0: 24 94 00 00 00 0f 84 8e 00 00 00 8b 0d 58 a1 1e
00768ff0: 01 51 8b cf e8 67 b2 1c 00 8b f8 85 ff 74 7a 8d
00769000: 54 24 40 52 8b cf e8 d5 d0 1e 00 3b 74 24 20 0f
00769010: 28 00 0f 29 84 24 a0 00 00 00 0f 28 40 10 0f 29
00769020: 84 24 b0 00 00 00 0f 28 40 20 0f 29 84 24 c0 00
00769030: 00 00 0f 28 40 30 0f 29 84 24 d0 00 00 00 89 bc
00769040: 24 9c 00 00 00 73 1c 8b ce 83 c6 50 85 c9 89 74
00769050: 24 1c 74 25 8d 84 24 90 00 00 00 50 e8 2f e5 ff
00769060: ff eb 16 8d 8c 24 90 00 00 00 51 56 8d 4c 24 20
00769070: e8 cb fa ff ff 8b 74 24 1c 8b 5c 24 10 8d 4c 24
00769080: 2c e8 ba 7e 1e 00 84 c0 0f 85 d6 fe ff ff 8b 7c
00769090: 24 18 3b fe 74 11 8b 4f 0c 6a 00 e8 10 05 1f 00
007690a0: 83 c7 50 3b fe 75 ef 8b 7c 24 28 8d 94 24 e0 00
007690b0: 00 00 52 8d 4d 10 e8 25 30 00 00 8b 4c 24 14 6a
007690c0: 01 8d 84 24 e4 00 00 00 50 e8 32 5a 1d 00 85 ff
007690d0: 8b 4c 24 18 0f 84 8b 00 00 00 2b f1 b8 67 66 66
007690e0: 66 f7 ee c1 fa 05 8b c2 c1 e8 1f 03 c2 74 76 8d
007690f0: 71 30 8b f8 8a 56 d0 88 54 24 40 8a 4e d1 88 4c
00769100: 24 41 8b 46 d4 89 44 24 44 8b 4e d8 89 4c 24 48
00769110: 8b 4e dc 89 4c 24 4c 0f 28 46 e0 84 d2 8b 54 24
00769120: 41 52 0f 29 44 24 54 0f 28 46 f0 8d 54 24 54 0f
00769130: 29 44 24 64 0f 28 06 52 0f 29 44 24 78 0f 28 46
00769140: 10 50 0f 29 84 24 8c 00 00 00 53 74 07 e8 be 0d
00769150: 1f 00 eb 05 e8 37 0d 1f 00 83 c6 50 83 ef 01 75
00769160: 93 8b 4c 24 18 85 c9 74 09 51 e8 71 b3 d7 ff 83
00769170: c4 04 8d 43 04 8b c8 83 ca ff f0 0f c1 11 4a 75
00769180: 11 b9 01 00 00 00 87 08 8b 13 8b 02 6a 01 8b cb
00769190: ff d0 5f 5e 33 c0 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00768e90 <.text+0x367e90>:
  768e90:	55                                              	push   ebp
  768e91:	8b ec                                           	mov    ebp,esp
  768e93:	83 e4 f0                                        	and    esp,0xfffffff0
  768e96:	81 ec e4 00 00 00                               	sub    esp,0xe4
  768e9c:	53                                              	push   ebx
  768e9d:	56                                              	push   esi
  768e9e:	57                                              	push   edi
  768e9f:	e8 cc e6 1c 00                                  	call   0x937570
  768ea4:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  768ea7:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  768eaa:	51                                              	push   ecx
  768eab:	52                                              	push   edx
  768eac:	8b c8                                           	mov    ecx,eax
  768eae:	e8 cd f0 1c 00                                  	call   0x937f80
  768eb3:	8b d8                                           	mov    ebx,eax
  768eb5:	33 f6                                           	xor    esi,esi
  768eb7:	3b de                                           	cmp    ebx,esi
  768eb9:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
  768ebd:	74 4d                                           	je     0x768f0c
  768ebf:	8d 7b 04                                        	lea    edi,[ebx+0x4]
  768ec2:	8b c7                                           	mov    eax,edi
  768ec4:	b9 01 00 00 00                                  	mov    ecx,0x1
  768ec9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  768ecd:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  768ed3:	52                                              	push   edx
  768ed4:	8b cb                                           	mov    ecx,ebx
  768ed6:	e8 85 b3 1c 00                                  	call   0x934260
  768edb:	3b c6                                           	cmp    eax,esi
  768edd:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  768ee1:	75 35                                           	jne    0x768f18
  768ee3:	8b c7                                           	mov    eax,edi
  768ee5:	83 c9 ff                                        	or     ecx,0xffffffff
  768ee8:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  768eec:	49                                              	dec    ecx
  768eed:	75 11                                           	jne    0x768f00
  768eef:	ba 01 00 00 00                                  	mov    edx,0x1
  768ef4:	87 17                                           	xchg   DWORD PTR [edi],edx
  768ef6:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  768ef8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  768efa:	6a 01                                           	push   0x1
  768efc:	8b cb                                           	mov    ecx,ebx
  768efe:	ff d2                                           	call   edx
  768f00:	b8 f8 ff ff ff                                  	mov    eax,0xfffffff8
  768f05:	5f                                              	pop    edi
  768f06:	5e                                              	pop    esi
  768f07:	5b                                              	pop    ebx
  768f08:	8b e5                                           	mov    esp,ebp
  768f0a:	5d                                              	pop    ebp
  768f0b:	c3                                              	ret
  768f0c:	b8 f7 ff ff ff                                  	mov    eax,0xfffffff7
  768f11:	5f                                              	pop    edi
  768f12:	5e                                              	pop    esi
  768f13:	5b                                              	pop    ebx
  768f14:	8b e5                                           	mov    esp,ebp
  768f16:	5d                                              	pop    ebp
  768f17:	c3                                              	ret
  768f18:	a1 14 a1 1e 01                                  	mov    eax,ds:0x11ea114
  768f1d:	50                                              	push   eax
  768f1e:	8b cb                                           	mov    ecx,ebx
  768f20:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  768f24:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  768f28:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  768f2c:	c7 44 24 28 58 80 00 01                         	mov    DWORD PTR [esp+0x28],0x1008058
  768f34:	e8 27 b3 1c 00                                  	call   0x934260
  768f39:	8b f8                                           	mov    edi,eax
  768f3b:	85 ff                                           	test   edi,edi
  768f3d:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  768f41:	0f 84 64 01 00 00                               	je     0x7690ab
  768f47:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  768f4b:	51                                              	push   ecx
  768f4c:	8b cf                                           	mov    ecx,edi
  768f4e:	e8 3d 89 1e 00                                  	call   0x951890
  768f53:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  768f57:	e8 e4 7f 1e 00                                  	call   0x950f40
  768f5c:	84 c0                                           	test   al,al
  768f5e:	0f 84 2a 01 00 00                               	je     0x76908e
  768f64:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  768f68:	52                                              	push   edx
  768f69:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  768f6d:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  768f75:	e8 56 74 1e 00                                  	call   0x9503d0
  768f7a:	83 7c 24 0c 00                                  	cmp    DWORD PTR [esp+0xc],0x0
  768f7f:	8b f8                                           	mov    edi,eax
  768f81:	89 bc 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],edi
  768f88:	0f 84 ef 00 00 00                               	je     0x76907d
  768f8e:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  768f92:	e8 59 74 1e 00                                  	call   0x9503f0
  768f97:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  768f9b:	8a d8                                           	mov    bl,al
  768f9d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  768f9f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  768fa2:	6a 03                                           	push   0x3
  768fa4:	88 9c 24 94 00 00 00                            	mov    BYTE PTR [esp+0x94],bl
  768fab:	ff d2                                           	call   edx
  768fad:	85 c0                                           	test   eax,eax
  768faf:	74 0d                                           	je     0x768fbe
  768fb1:	3b 78 1c                                        	cmp    edi,DWORD PTR [eax+0x1c]
  768fb4:	c6 84 24 91 00 00 00 01                         	mov    BYTE PTR [esp+0x91],0x1
  768fbc:	74 08                                           	je     0x768fc6
  768fbe:	c6 84 24 91 00 00 00 00                         	mov    BYTE PTR [esp+0x91],0x0
  768fc6:	84 db                                           	test   bl,bl
  768fc8:	74 0b                                           	je     0x768fd5
  768fca:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  768fce:	e8 1d 58 27 00                                  	call   0x9de7f0
  768fd3:	eb 07                                           	jmp    0x768fdc
  768fd5:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  768fd9:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  768fdc:	85 ff                                           	test   edi,edi
  768fde:	89 84 24 94 00 00 00                            	mov    DWORD PTR [esp+0x94],eax
  768fe5:	0f 84 8e 00 00 00                               	je     0x769079
  768feb:	8b 0d 58 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea158
  768ff1:	51                                              	push   ecx
  768ff2:	8b cf                                           	mov    ecx,edi
  768ff4:	e8 67 b2 1c 00                                  	call   0x934260
  768ff9:	8b f8                                           	mov    edi,eax
  768ffb:	85 ff                                           	test   edi,edi
  768ffd:	74 7a                                           	je     0x769079
  768fff:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  769003:	52                                              	push   edx
  769004:	8b cf                                           	mov    ecx,edi
  769006:	e8 d5 d0 1e 00                                  	call   0x9560e0
  76900b:	3b 74 24 20                                     	cmp    esi,DWORD PTR [esp+0x20]
  76900f:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  769012:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
  76901a:	0f 28 40 10                                     	movaps xmm0,XMMWORD PTR [eax+0x10]
  76901e:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
  769026:	0f 28 40 20                                     	movaps xmm0,XMMWORD PTR [eax+0x20]
  76902a:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  769032:	0f 28 40 30                                     	movaps xmm0,XMMWORD PTR [eax+0x30]
  769036:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
  76903e:	89 bc 24 9c 00 00 00                            	mov    DWORD PTR [esp+0x9c],edi
  769045:	73 1c                                           	jae    0x769063
  769047:	8b ce                                           	mov    ecx,esi
  769049:	83 c6 50                                        	add    esi,0x50
  76904c:	85 c9                                           	test   ecx,ecx
  76904e:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  769052:	74 25                                           	je     0x769079
  769054:	8d 84 24 90 00 00 00                            	lea    eax,[esp+0x90]
  76905b:	50                                              	push   eax
  76905c:	e8 2f e5 ff ff                                  	call   0x767590
  769061:	eb 16                                           	jmp    0x769079
  769063:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
  76906a:	51                                              	push   ecx
  76906b:	56                                              	push   esi
  76906c:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  769070:	e8 cb fa ff ff                                  	call   0x768b40
  769075:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  769079:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  76907d:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  769081:	e8 ba 7e 1e 00                                  	call   0x950f40
  769086:	84 c0                                           	test   al,al
  769088:	0f 85 d6 fe ff ff                               	jne    0x768f64
  76908e:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  769092:	3b fe                                           	cmp    edi,esi
  769094:	74 11                                           	je     0x7690a7
  769096:	8b 4f 0c                                        	mov    ecx,DWORD PTR [edi+0xc]
  769099:	6a 00                                           	push   0x0
  76909b:	e8 10 05 1f 00                                  	call   0x9595b0
  7690a0:	83 c7 50                                        	add    edi,0x50
  7690a3:	3b fe                                           	cmp    edi,esi
  7690a5:	75 ef                                           	jne    0x769096
  7690a7:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
  7690ab:	8d 94 24 e0 00 00 00                            	lea    edx,[esp+0xe0]
  7690b2:	52                                              	push   edx
  7690b3:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
  7690b6:	e8 25 30 00 00                                  	call   0x76c0e0
  7690bb:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7690bf:	6a 01                                           	push   0x1
  7690c1:	8d 84 24 e4 00 00 00                            	lea    eax,[esp+0xe4]
  7690c8:	50                                              	push   eax
  7690c9:	e8 32 5a 1d 00                                  	call   0x93eb00
  7690ce:	85 ff                                           	test   edi,edi
  7690d0:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7690d4:	0f 84 8b 00 00 00                               	je     0x769165
  7690da:	2b f1                                           	sub    esi,ecx
  7690dc:	b8 67 66 66 66                                  	mov    eax,0x66666667
  7690e1:	f7 ee                                           	imul   esi
  7690e3:	c1 fa 05                                        	sar    edx,0x5
  7690e6:	8b c2                                           	mov    eax,edx
  7690e8:	c1 e8 1f                                        	shr    eax,0x1f
  7690eb:	03 c2                                           	add    eax,edx
  7690ed:	74 76                                           	je     0x769165
  7690ef:	8d 71 30                                        	lea    esi,[ecx+0x30]
  7690f2:	8b f8                                           	mov    edi,eax
  7690f4:	8a 56 d0                                        	mov    dl,BYTE PTR [esi-0x30]
  7690f7:	88 54 24 40                                     	mov    BYTE PTR [esp+0x40],dl
  7690fb:	8a 4e d1                                        	mov    cl,BYTE PTR [esi-0x2f]
  7690fe:	88 4c 24 41                                     	mov    BYTE PTR [esp+0x41],cl
  769102:	8b 46 d4                                        	mov    eax,DWORD PTR [esi-0x2c]
  769105:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  769109:	8b 4e d8                                        	mov    ecx,DWORD PTR [esi-0x28]
  76910c:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
  769110:	8b 4e dc                                        	mov    ecx,DWORD PTR [esi-0x24]
  769113:	89 4c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ecx
  769117:	0f 28 46 e0                                     	movaps xmm0,XMMWORD PTR [esi-0x20]
  76911b:	84 d2                                           	test   dl,dl
  76911d:	8b 54 24 41                                     	mov    edx,DWORD PTR [esp+0x41]
  769121:	52                                              	push   edx
  769122:	0f 29 44 24 54                                  	movaps XMMWORD PTR [esp+0x54],xmm0
  769127:	0f 28 46 f0                                     	movaps xmm0,XMMWORD PTR [esi-0x10]
  76912b:	8d 54 24 54                                     	lea    edx,[esp+0x54]
  76912f:	0f 29 44 24 64                                  	movaps XMMWORD PTR [esp+0x64],xmm0
  769134:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  769137:	52                                              	push   edx
  769138:	0f 29 44 24 78                                  	movaps XMMWORD PTR [esp+0x78],xmm0
  76913d:	0f 28 46 10                                     	movaps xmm0,XMMWORD PTR [esi+0x10]
  769141:	50                                              	push   eax
  769142:	0f 29 84 24 8c 00 00 00                         	movaps XMMWORD PTR [esp+0x8c],xmm0
  76914a:	53                                              	push   ebx
  76914b:	74 07                                           	je     0x769154
  76914d:	e8 be 0d 1f 00                                  	call   0x959f10
  769152:	eb 05                                           	jmp    0x769159
  769154:	e8 37 0d 1f 00                                  	call   0x959e90
  769159:	83 c6 50                                        	add    esi,0x50
  76915c:	83 ef 01                                        	sub    edi,0x1
  76915f:	75 93                                           	jne    0x7690f4
  769161:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  769165:	85 c9                                           	test   ecx,ecx
  769167:	74 09                                           	je     0x769172
  769169:	51                                              	push   ecx
  76916a:	e8 71 b3 d7 ff                                  	call   0x4e44e0
  76916f:	83 c4 04                                        	add    esp,0x4
  769172:	8d 43 04                                        	lea    eax,[ebx+0x4]
  769175:	8b c8                                           	mov    ecx,eax
  769177:	83 ca ff                                        	or     edx,0xffffffff
  76917a:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76917e:	4a                                              	dec    edx
  76917f:	75 11                                           	jne    0x769192
  769181:	b9 01 00 00 00                                  	mov    ecx,0x1
  769186:	87 08                                           	xchg   DWORD PTR [eax],ecx
  769188:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  76918a:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76918c:	6a 01                                           	push   0x1
  76918e:	8b cb                                           	mov    ecx,ebx
  769190:	ff d0                                           	call   eax
  769192:	5f                                              	pop    edi
  769193:	5e                                              	pop    esi
  769194:	33 c0                                           	xor    eax,eax
  769196:	5b                                              	pop    ebx
  769197:	8b e5                                           	mov    esp,ebp
  769199:	5d                                              	pop    ebp
  76919a:	c3                                              	ret
  76919b:	cc                                              	int3
  76919c:	cc                                              	int3
  76919d:	cc                                              	int3
  76919e:	cc                                              	int3
  76919f:	cc                                              	int3
