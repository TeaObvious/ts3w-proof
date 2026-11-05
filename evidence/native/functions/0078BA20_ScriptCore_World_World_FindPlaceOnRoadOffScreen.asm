# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078ba20 (ScriptCore.World::World_FindPlaceOnRoadOffScreen)
Paired Ghidra pseudocode: 0078BA20_ScriptCore_World_World_FindPlaceOnRoadOffScreen.c
Window: [0x0078ba20, 0x0078bbc0) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078bbc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078ba20: 55 8b ec 83 e4 f0 83 ec 24 53 56 57 e8 3f bb 1a
0078ba30: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 40 c5 1a 00
0078ba40: 8b f0 85 f6 74 0c 8d 46 04 b9 01 00 00 00 f0 0f
0078ba50: c1 08 8b 45 10 85 c0 0f 84 31 01 00 00 8b 0d c4
0078ba60: db 1e 01 85 c9 89 4c 24 1c 0f 84 1f 01 00 00 f3
0078ba70: 0f 10 48 08 f3 0f 10 00 6a 00 6a 00 6a 00 f3 0f
0078ba80: 11 4c 24 34 f3 0f 10 48 04 6a 00 f3 0f 11 44 24
0078ba90: 3c f3 0f 11 4c 24 34 f3 0f 11 44 24 30 0f 28 44
0078baa0: 24 30 68 a8 18 01 01 6a 0c 0f 29 44 24 38 c7 44
0078bab0: 24 2c 00 00 00 00 e8 45 8a d5 ff 6a 00 6a 00 6a
0078bac0: 00 6a 00 68 a8 18 01 01 6a 10 8b d8 e8 2f 8a d5
0078bad0: ff d9 45 18 83 c4 30 8b f8 8b 45 14 57 53 8d 54
0078bae0: 24 1c 52 8b 54 24 28 51 d9 1c 24 50 8d 4c 24 34
0078baf0: 51 56 52 89 7c 24 38 e8 44 0f 4f 00 83 c4 20 84
0078bb00: c0 88 44 24 13 74 49 e8 84 d8 fd ff 8b 4d 1c 8b
0078bb10: f8 8b 44 24 14 8b 17 8b 92 a8 00 00 00 8d 04 40
0078bb20: 50 6a 00 53 51 8b cf ff d2 8b 4c 24 14 8b 07 8b
0078bb30: 80 a8 00 00 00 8d 14 8d 00 00 00 00 8b 4c 24 18
0078bb40: 52 8b 55 20 6a 00 51 52 8b cf ff d0 8b 7c 24 18
0078bb50: 53 e8 8a 89 d5 ff 57 e8 84 89 d5 ff 83 c4 08 85
0078bb60: f6 74 20 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a
0078bb70: 75 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b
0078bb80: ce ff d0 8a 44 24 13 5f 5e 5b 8b e5 5d c3 85 f6
0078bb90: 74 20 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75
0078bba0: 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce
0078bbb0: ff d0 5f 5e 32 c0 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0078ba20 <.text+0x38aa20>:
  78ba20:	55                                              	push   ebp
  78ba21:	8b ec                                           	mov    ebp,esp
  78ba23:	83 e4 f0                                        	and    esp,0xfffffff0
  78ba26:	83 ec 24                                        	sub    esp,0x24
  78ba29:	53                                              	push   ebx
  78ba2a:	56                                              	push   esi
  78ba2b:	57                                              	push   edi
  78ba2c:	e8 3f bb 1a 00                                  	call   0x937570
  78ba31:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78ba34:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78ba37:	51                                              	push   ecx
  78ba38:	52                                              	push   edx
  78ba39:	8b c8                                           	mov    ecx,eax
  78ba3b:	e8 40 c5 1a 00                                  	call   0x937f80
  78ba40:	8b f0                                           	mov    esi,eax
  78ba42:	85 f6                                           	test   esi,esi
  78ba44:	74 0c                                           	je     0x78ba52
  78ba46:	8d 46 04                                        	lea    eax,[esi+0x4]
  78ba49:	b9 01 00 00 00                                  	mov    ecx,0x1
  78ba4e:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78ba52:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  78ba55:	85 c0                                           	test   eax,eax
  78ba57:	0f 84 31 01 00 00                               	je     0x78bb8e
  78ba5d:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78ba63:	85 c9                                           	test   ecx,ecx
  78ba65:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  78ba69:	0f 84 1f 01 00 00                               	je     0x78bb8e
  78ba6f:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
  78ba74:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  78ba78:	6a 00                                           	push   0x0
  78ba7a:	6a 00                                           	push   0x0
  78ba7c:	6a 00                                           	push   0x0
  78ba7e:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  78ba84:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  78ba89:	6a 00                                           	push   0x0
  78ba8b:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  78ba91:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  78ba97:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  78ba9d:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  78baa2:	68 a8 18 01 01                                  	push   0x10118a8
  78baa7:	6a 0c                                           	push   0xc
  78baa9:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
  78baae:	c7 44 24 2c 00 00 00 00                         	mov    DWORD PTR [esp+0x2c],0x0
  78bab6:	e8 45 8a d5 ff                                  	call   0x4e4500
  78babb:	6a 00                                           	push   0x0
  78babd:	6a 00                                           	push   0x0
  78babf:	6a 00                                           	push   0x0
  78bac1:	6a 00                                           	push   0x0
  78bac3:	68 a8 18 01 01                                  	push   0x10118a8
  78bac8:	6a 10                                           	push   0x10
  78baca:	8b d8                                           	mov    ebx,eax
  78bacc:	e8 2f 8a d5 ff                                  	call   0x4e4500
  78bad1:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
  78bad4:	83 c4 30                                        	add    esp,0x30
  78bad7:	8b f8                                           	mov    edi,eax
  78bad9:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  78badc:	57                                              	push   edi
  78badd:	53                                              	push   ebx
  78bade:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  78bae2:	52                                              	push   edx
  78bae3:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  78bae7:	51                                              	push   ecx
  78bae8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78baeb:	50                                              	push   eax
  78baec:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  78baf0:	51                                              	push   ecx
  78baf1:	56                                              	push   esi
  78baf2:	52                                              	push   edx
  78baf3:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  78baf7:	e8 44 0f 4f 00                                  	call   0xc7ca40
  78bafc:	83 c4 20                                        	add    esp,0x20
  78baff:	84 c0                                           	test   al,al
  78bb01:	88 44 24 13                                     	mov    BYTE PTR [esp+0x13],al
  78bb05:	74 49                                           	je     0x78bb50
  78bb07:	e8 84 d8 fd ff                                  	call   0x769390
  78bb0c:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
  78bb0f:	8b f8                                           	mov    edi,eax
  78bb11:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  78bb15:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78bb17:	8b 92 a8 00 00 00                               	mov    edx,DWORD PTR [edx+0xa8]
  78bb1d:	8d 04 40                                        	lea    eax,[eax+eax*2]
  78bb20:	50                                              	push   eax
  78bb21:	6a 00                                           	push   0x0
  78bb23:	53                                              	push   ebx
  78bb24:	51                                              	push   ecx
  78bb25:	8b cf                                           	mov    ecx,edi
  78bb27:	ff d2                                           	call   edx
  78bb29:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  78bb2d:	8b 07                                           	mov    eax,DWORD PTR [edi]
  78bb2f:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
  78bb35:	8d 14 8d 00 00 00 00                            	lea    edx,[ecx*4+0x0]
  78bb3c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78bb40:	52                                              	push   edx
  78bb41:	8b 55 20                                        	mov    edx,DWORD PTR [ebp+0x20]
  78bb44:	6a 00                                           	push   0x0
  78bb46:	51                                              	push   ecx
  78bb47:	52                                              	push   edx
  78bb48:	8b cf                                           	mov    ecx,edi
  78bb4a:	ff d0                                           	call   eax
  78bb4c:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  78bb50:	53                                              	push   ebx
  78bb51:	e8 8a 89 d5 ff                                  	call   0x4e44e0
  78bb56:	57                                              	push   edi
  78bb57:	e8 84 89 d5 ff                                  	call   0x4e44e0
  78bb5c:	83 c4 08                                        	add    esp,0x8
  78bb5f:	85 f6                                           	test   esi,esi
  78bb61:	74 20                                           	je     0x78bb83
  78bb63:	8d 46 04                                        	lea    eax,[esi+0x4]
  78bb66:	8b c8                                           	mov    ecx,eax
  78bb68:	83 ca ff                                        	or     edx,0xffffffff
  78bb6b:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  78bb6f:	4a                                              	dec    edx
  78bb70:	75 11                                           	jne    0x78bb83
  78bb72:	b9 01 00 00 00                                  	mov    ecx,0x1
  78bb77:	87 08                                           	xchg   DWORD PTR [eax],ecx
  78bb79:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78bb7b:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78bb7d:	6a 01                                           	push   0x1
  78bb7f:	8b ce                                           	mov    ecx,esi
  78bb81:	ff d0                                           	call   eax
  78bb83:	8a 44 24 13                                     	mov    al,BYTE PTR [esp+0x13]
  78bb87:	5f                                              	pop    edi
  78bb88:	5e                                              	pop    esi
  78bb89:	5b                                              	pop    ebx
  78bb8a:	8b e5                                           	mov    esp,ebp
  78bb8c:	5d                                              	pop    ebp
  78bb8d:	c3                                              	ret
  78bb8e:	85 f6                                           	test   esi,esi
  78bb90:	74 20                                           	je     0x78bbb2
  78bb92:	8d 46 04                                        	lea    eax,[esi+0x4]
  78bb95:	8b c8                                           	mov    ecx,eax
  78bb97:	83 ca ff                                        	or     edx,0xffffffff
  78bb9a:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  78bb9e:	4a                                              	dec    edx
  78bb9f:	75 11                                           	jne    0x78bbb2
  78bba1:	b9 01 00 00 00                                  	mov    ecx,0x1
  78bba6:	87 08                                           	xchg   DWORD PTR [eax],ecx
  78bba8:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78bbaa:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78bbac:	6a 01                                           	push   0x1
  78bbae:	8b ce                                           	mov    ecx,esi
  78bbb0:	ff d0                                           	call   eax
  78bbb2:	5f                                              	pop    edi
  78bbb3:	5e                                              	pop    esi
  78bbb4:	32 c0                                           	xor    al,al
  78bbb6:	5b                                              	pop    ebx
  78bbb7:	8b e5                                           	mov    esp,ebp
  78bbb9:	5d                                              	pop    ebp
  78bbba:	c3                                              	ret
  78bbbb:	cc                                              	int3
  78bbbc:	cc                                              	int3
  78bbbd:	cc                                              	int3
  78bbbe:	cc                                              	int3
  78bbbf:	cc                                              	int3
