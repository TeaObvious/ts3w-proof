# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576d70 (World_GetLotLocationAtFloorImpl)
Paired Ghidra pseudocode: 10576D70_World_GetLotLocationAtFloorImpl.c
Window: [0x10576d70, 0x10576e90) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576d70: 55 8b ec 83 e4 f0 83 ec 34 8b 0d c4 00 c7 10 f3
10576d80: 0f 10 05 84 e1 aa 10 53 33 db 3b cb 56 57 8b 7d
10576d90: 14 89 5c 24 1c f3 0f 11 44 24 24 f3 0f 11 44 24
10576da0: 28 89 5c 24 2c 0f 84 87 00 00 00 d9 45 10 83 ec
10576db0: 08 d9 5c 24 04 d9 45 08 d9 1c 24 e8 b0 62 cc ff
10576dc0: 8b f0 85 f6 74 6c f3 0f 10 4d 10 f3 0f 10 45 08
10576dd0: 8b 46 4c 8b 5e 48 8d 4c 24 24 f3 0f 11 4c 24 38
10576de0: f3 0f 10 4d 0c 51 8d 54 24 34 f3 0f 11 44 24 40
10576df0: f3 0f 11 4c 24 38 f3 0f 11 44 24 34 0f 28 44 24
10576e00: 34 52 56 89 44 24 28 0f 29 44 24 3c e8 ef c3 b2
10576e10: ff 8b 8e 98 02 00 00 83 c4 0c 85 c9 74 14 8b 45
10576e20: 18 6a 00 50 8d 54 24 2c 52 e8 a2 a9 b9 ff 66 89
10576e30: 47 0a d9 44 24 24 db 54 24 14 db 44 24 14 de e9
10576e40: d9 5c 24 10 81 7c 24 10 01 00 00 80 8b 44 24 14
10576e50: 83 d0 ff 89 07 d9 44 24 28 db 54 24 10 db 44 24
10576e60: 10 de e9 d9 5c 24 14 81 7c 24 14 01 00 00 80 8b
10576e70: 44 24 10 83 d0 ff 8b 54 24 1c 89 47 04 8a 44 24
10576e80: 2c 88 47 08 5f 5e 8b c3 5b 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
10576d70 <.text+0x575d70>:
10576d70:	55                                              	push   ebp
10576d71:	8b ec                                           	mov    ebp,esp
10576d73:	83 e4 f0                                        	and    esp,0xfffffff0
10576d76:	83 ec 34                                        	sub    esp,0x34
10576d79:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10576d7f:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
10576d87:	53                                              	push   ebx
10576d88:	33 db                                           	xor    ebx,ebx
10576d8a:	3b cb                                           	cmp    ecx,ebx
10576d8c:	56                                              	push   esi
10576d8d:	57                                              	push   edi
10576d8e:	8b 7d 14                                        	mov    edi,DWORD PTR [ebp+0x14]
10576d91:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
10576d95:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
10576d9b:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
10576da1:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
10576da5:	0f 84 87 00 00 00                               	je     0x10576e32
10576dab:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
10576dae:	83 ec 08                                        	sub    esp,0x8
10576db1:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10576db5:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
10576db8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10576dbb:	e8 b0 62 cc ff                                  	call   0x1023d070
10576dc0:	8b f0                                           	mov    esi,eax
10576dc2:	85 f6                                           	test   esi,esi
10576dc4:	74 6c                                           	je     0x10576e32
10576dc6:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10576dcb:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
10576dd0:	8b 46 4c                                        	mov    eax,DWORD PTR [esi+0x4c]
10576dd3:	8b 5e 48                                        	mov    ebx,DWORD PTR [esi+0x48]
10576dd6:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10576dda:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
10576de0:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
10576de5:	51                                              	push   ecx
10576de6:	8d 54 24 34                                     	lea    edx,[esp+0x34]
10576dea:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
10576df0:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
10576df6:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
10576dfc:	0f 28 44 24 34                                  	movaps xmm0,XMMWORD PTR [esp+0x34]
10576e01:	52                                              	push   edx
10576e02:	56                                              	push   esi
10576e03:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
10576e07:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
10576e0c:	e8 ef c3 b2 ff                                  	call   0x100a3200
10576e11:	8b 8e 98 02 00 00                               	mov    ecx,DWORD PTR [esi+0x298]
10576e17:	83 c4 0c                                        	add    esp,0xc
10576e1a:	85 c9                                           	test   ecx,ecx
10576e1c:	74 14                                           	je     0x10576e32
10576e1e:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
10576e21:	6a 00                                           	push   0x0
10576e23:	50                                              	push   eax
10576e24:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
10576e28:	52                                              	push   edx
10576e29:	e8 a2 a9 b9 ff                                  	call   0x101117d0
10576e2e:	66 89 47 0a                                     	mov    WORD PTR [edi+0xa],ax
10576e32:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
10576e36:	db 54 24 14                                     	fist   DWORD PTR [esp+0x14]
10576e3a:	db 44 24 14                                     	fild   DWORD PTR [esp+0x14]
10576e3e:	de e9                                           	fsubp  st(1),st
10576e40:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
10576e44:	81 7c 24 10 01 00 00 80                         	cmp    DWORD PTR [esp+0x10],0x80000001
10576e4c:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10576e50:	83 d0 ff                                        	adc    eax,0xffffffff
10576e53:	89 07                                           	mov    DWORD PTR [edi],eax
10576e55:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
10576e59:	db 54 24 10                                     	fist   DWORD PTR [esp+0x10]
10576e5d:	db 44 24 10                                     	fild   DWORD PTR [esp+0x10]
10576e61:	de e9                                           	fsubp  st(1),st
10576e63:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
10576e67:	81 7c 24 14 01 00 00 80                         	cmp    DWORD PTR [esp+0x14],0x80000001
10576e6f:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10576e73:	83 d0 ff                                        	adc    eax,0xffffffff
10576e76:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10576e7a:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
10576e7d:	8a 44 24 2c                                     	mov    al,BYTE PTR [esp+0x2c]
10576e81:	88 47 08                                        	mov    BYTE PTR [edi+0x8],al
10576e84:	5f                                              	pop    edi
10576e85:	5e                                              	pop    esi
10576e86:	8b c3                                           	mov    eax,ebx
10576e88:	5b                                              	pop    ebx
10576e89:	8b e5                                           	mov    esp,ebp
10576e8b:	5d                                              	pop    ebp
10576e8c:	c3                                              	ret
10576e8d:	cc                                              	int3
10576e8e:	cc                                              	int3
10576e8f:	cc                                              	int3
