# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576c10 (World_GetLotLocationImpl)
Paired Ghidra pseudocode: 10576C10_World_GetLotLocationImpl.c
Window: [0x10576c10, 0x10576d30) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576c10: 55 8b ec 83 e4 f0 83 ec 34 8b 0d c4 00 c7 10 f3
10576c20: 0f 10 05 84 e1 aa 10 53 33 db 3b cb 56 57 8b 7d
10576c30: 14 89 5c 24 1c f3 0f 11 44 24 24 f3 0f 11 44 24
10576c40: 28 89 5c 24 2c 0f 84 85 00 00 00 d9 45 10 83 ec
10576c50: 08 d9 5c 24 04 d9 45 08 d9 1c 24 e8 10 64 cc ff
10576c60: 8b f0 85 f6 74 6a f3 0f 10 4d 10 f3 0f 10 45 08
10576c70: 8b 46 4c 8b 5e 48 8d 4c 24 24 f3 0f 11 4c 24 38
10576c80: f3 0f 10 4d 0c 51 8d 54 24 34 f3 0f 11 44 24 40
10576c90: f3 0f 11 4c 24 38 f3 0f 11 44 24 34 0f 28 44 24
10576ca0: 34 52 56 89 44 24 28 0f 29 44 24 3c e8 2f c4 b2
10576cb0: ff 8b 45 18 8b b6 98 02 00 00 83 c4 0c 6a 00 50
10576cc0: 8d 4c 24 2c 51 8b ce e8 04 ab b9 ff 66 89 47 0a
10576cd0: d9 44 24 24 db 54 24 14 db 44 24 14 de e9 d9 5c
10576ce0: 24 10 81 7c 24 10 01 00 00 80 8b 44 24 14 83 d0
10576cf0: ff 89 07 d9 44 24 28 db 54 24 10 db 44 24 10 de
10576d00: e9 d9 5c 24 14 81 7c 24 14 01 00 00 80 8b 44 24
10576d10: 10 83 d0 ff 8a 54 24 2c 89 47 04 88 57 08 8b 54
10576d20: 24 1c 5f 5e 8b c3 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10576c10 <.text+0x575c10>:
10576c10:	55                                              	push   ebp
10576c11:	8b ec                                           	mov    ebp,esp
10576c13:	83 e4 f0                                        	and    esp,0xfffffff0
10576c16:	83 ec 34                                        	sub    esp,0x34
10576c19:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10576c1f:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
10576c27:	53                                              	push   ebx
10576c28:	33 db                                           	xor    ebx,ebx
10576c2a:	3b cb                                           	cmp    ecx,ebx
10576c2c:	56                                              	push   esi
10576c2d:	57                                              	push   edi
10576c2e:	8b 7d 14                                        	mov    edi,DWORD PTR [ebp+0x14]
10576c31:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
10576c35:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
10576c3b:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
10576c41:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
10576c45:	0f 84 85 00 00 00                               	je     0x10576cd0
10576c4b:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
10576c4e:	83 ec 08                                        	sub    esp,0x8
10576c51:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10576c55:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
10576c58:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10576c5b:	e8 10 64 cc ff                                  	call   0x1023d070
10576c60:	8b f0                                           	mov    esi,eax
10576c62:	85 f6                                           	test   esi,esi
10576c64:	74 6a                                           	je     0x10576cd0
10576c66:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10576c6b:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
10576c70:	8b 46 4c                                        	mov    eax,DWORD PTR [esi+0x4c]
10576c73:	8b 5e 48                                        	mov    ebx,DWORD PTR [esi+0x48]
10576c76:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10576c7a:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
10576c80:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
10576c85:	51                                              	push   ecx
10576c86:	8d 54 24 34                                     	lea    edx,[esp+0x34]
10576c8a:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
10576c90:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
10576c96:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
10576c9c:	0f 28 44 24 34                                  	movaps xmm0,XMMWORD PTR [esp+0x34]
10576ca1:	52                                              	push   edx
10576ca2:	56                                              	push   esi
10576ca3:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
10576ca7:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
10576cac:	e8 2f c4 b2 ff                                  	call   0x100a30e0
10576cb1:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
10576cb4:	8b b6 98 02 00 00                               	mov    esi,DWORD PTR [esi+0x298]
10576cba:	83 c4 0c                                        	add    esp,0xc
10576cbd:	6a 00                                           	push   0x0
10576cbf:	50                                              	push   eax
10576cc0:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10576cc4:	51                                              	push   ecx
10576cc5:	8b ce                                           	mov    ecx,esi
10576cc7:	e8 04 ab b9 ff                                  	call   0x101117d0
10576ccc:	66 89 47 0a                                     	mov    WORD PTR [edi+0xa],ax
10576cd0:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
10576cd4:	db 54 24 14                                     	fist   DWORD PTR [esp+0x14]
10576cd8:	db 44 24 14                                     	fild   DWORD PTR [esp+0x14]
10576cdc:	de e9                                           	fsubp  st(1),st
10576cde:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
10576ce2:	81 7c 24 10 01 00 00 80                         	cmp    DWORD PTR [esp+0x10],0x80000001
10576cea:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10576cee:	83 d0 ff                                        	adc    eax,0xffffffff
10576cf1:	89 07                                           	mov    DWORD PTR [edi],eax
10576cf3:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
10576cf7:	db 54 24 10                                     	fist   DWORD PTR [esp+0x10]
10576cfb:	db 44 24 10                                     	fild   DWORD PTR [esp+0x10]
10576cff:	de e9                                           	fsubp  st(1),st
10576d01:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
10576d05:	81 7c 24 14 01 00 00 80                         	cmp    DWORD PTR [esp+0x14],0x80000001
10576d0d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10576d11:	83 d0 ff                                        	adc    eax,0xffffffff
10576d14:	8a 54 24 2c                                     	mov    dl,BYTE PTR [esp+0x2c]
10576d18:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
10576d1b:	88 57 08                                        	mov    BYTE PTR [edi+0x8],dl
10576d1e:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10576d22:	5f                                              	pop    edi
10576d23:	5e                                              	pop    esi
10576d24:	8b c3                                           	mov    eax,ebx
10576d26:	5b                                              	pop    ebx
10576d27:	8b e5                                           	mov    esp,ebp
10576d29:	5d                                              	pop    ebp
10576d2a:	c3                                              	ret
10576d2b:	cc                                              	int3
10576d2c:	cc                                              	int3
10576d2d:	cc                                              	int3
10576d2e:	cc                                              	int3
10576d2f:	cc                                              	int3
