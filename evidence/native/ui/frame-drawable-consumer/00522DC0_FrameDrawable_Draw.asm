Original TS3W PC 1.67; identity: evidence/reference.json.
Current saved Ghidra function: FrameDrawable_Draw.
Paired actual Ghidra C: 00522DC0_FrameDrawable_Draw.c
Owned intervals below are half-open and come from actual function metadata.
Original bytes/instructions are unchanged; no body/signature repair or runtime observation.

CURRENT GHIDRA INFORMATION
[Context] Operating on: TS3W.exe

Function Information:
Name: FrameDrawable_Draw
Entry Point: 00522dc0
Body: [[00522dc0, 0052325c] [00523260, 0052330c] [00523310, 005233c5] [005233d0, 005237cd]]
Parameter Count: 3
Return Type: undefined
Signature: undefined __thiscall FrameDrawable_Draw(void * this, float * param_1, uint * param_2)

ORIGINAL OWNED BYTES AND INDEPENDENT PE DISASSEMBLY

Owned interval [00522DC0,0052325D); 1181 bytes; original PE file offset 00122DC0.
00522DC0: 83 ec 68 53 55 56 57 8b f9 8b 4c 24 7c 6a 00 6a
00522DD0: 00 89 7c 24 1c e8 66 be fe ff 8b f0 8b 06 8b 50
00522DE0: 04 6a ff 8b ce ff d2 8b ac 24 84 00 00 00 8b 45
00522DF0: 00 50 8b cf e8 57 fe ff ff f3 0f 10 77 4c f3 0f
00522E00: 10 57 54 f3 0f 10 47 58 f3 0f 10 4f 50 8b bc 24
00522E10: 80 00 00 00 f3 0f 10 1f f3 0f 11 44 24 54 f3 0f
00522E20: 10 47 08 f3 0f 11 54 24 50 f3 0f 11 44 24 24 f3
00522E30: 0f 5c c3 8b d8 f3 0f 58 d6 0f 2f d0 89 5c 24 10
00522E40: f3 0f 11 74 24 48 f3 0f 11 4c 24 4c f3 0f 11 5c
00522E50: 24 20 f3 0f 11 44 24 7c 76 54 d9 44 24 7c 83 ec
00522E60: 08 d8 0d b4 b5 f9 00 dd 1c 24 e8 61 c9 a5 00 d9
00522E70: 94 24 8c 00 00 00 83 c4 08 d9 44 24 48 8d 84 24
00522E80: 84 00 00 00 df f1 dd d8 77 04 8d 44 24 48 f3 0f
00522E90: 10 30 f3 0f 10 44 24 7c f3 0f 10 4c 24 4c f3 0f
00522EA0: 5c c6 f3 0f 11 74 24 48 f3 0f 11 44 24 50 f3 0f
00522EB0: 10 67 0c f3 0f 10 57 04 f3 0f 10 5c 24 54 0f 28
00522EC0: c4 f3 0f 5c c2 f3 0f 58 d9 0f 2f d8 f3 0f 11 64
00522ED0: 24 1c f3 0f 11 54 24 18 f3 0f 11 44 24 7c 76 60
00522EE0: d9 44 24 7c 83 ec 08 d8 0d b4 b5 f9 00 dd 1c 24
00522EF0: e8 db c8 a5 00 d9 94 24 8c 00 00 00 83 c4 08 d9
00522F00: 44 24 4c 8d 84 24 84 00 00 00 df f1 dd d8 77 04
00522F10: 8d 44 24 4c f3 0f 10 08 f3 0f 10 44 24 7c f3 0f
00522F20: 10 74 24 48 f3 0f 10 54 24 18 f3 0f 10 64 24 1c
00522F30: f3 0f 5c c1 f3 0f 11 4c 24 4c f3 0f 11 44 24 54
00522F40: f3 0f 10 5c 24 20 f3 0f 10 6c 24 24 f3 0f 10 05
00522F50: 18 b2 fa 00 f3 0f 10 3d f8 98 f9 00 f3 0f 11 5c
00522F60: 24 28 f3 0f 11 54 24 2c f3 0f 11 6c 24 30 f3 0f
00522F70: 11 64 24 34 83 3b 09 75 2e f3 0f 5c d8 f3 0f 5c
00522F80: d0 0f 28 c4 f3 0f 5c c7 f3 0f 5c ef 0f 28 e0 f3
00522F90: 0f 11 5c 24 28 f3 0f 11 54 24 2c f3 0f 11 6c 24
00522FA0: 30 f3 0f 11 64 24 34 f3 0f 10 05 f0 98 f9 00 0f
00522FB0: 28 f8 f3 0f 5c fe 0f 28 f0 f3 0f 5c f1 0f 28 c8
00522FC0: f3 0f 5c 4c 24 50 f3 0f 5c 44 24 54 f3 0f 5c df
00522FD0: f3 0f 5c d6 f3 0f 58 cd f3 0f 58 c4 f3 0f 11 5c
00522FE0: 24 38 f3 0f 11 54 24 3c f3 0f 11 4c 24 40 f3 0f
00522FF0: 11 44 24 44 83 3b 0a f3 0f 11 5c 24 58 f3 0f 11
00523000: 54 24 5c f3 0f 11 4c 24 60 f3 0f 11 44 24 64 75
00523010: 3e 0f 28 e3 f3 0f 10 1d 18 b2 fa 00 f3 0f 5c d3
00523020: f3 0f 11 54 24 5c 0f 28 d1 f3 0f 10 0d f8 98 f9
00523030: 00 f3 0f 5c e3 f3 0f 5c d1 f3 0f 5c c1 f3 0f 11
00523040: 64 24 58 f3 0f 11 54 24 60 f3 0f 11 44 24 64 8b
00523050: 45 08 85 c0 74 35 8b 16 50 8b 42 04 8b ce ff d0
00523060: d9 44 24 64 8b 16 8b 42 38 83 ec 10 d9 5c 24 0c
00523070: 8b ce d9 44 24 70 d9 5c 24 08 d9 44 24 6c d9 5c
00523080: 24 04 d9 44 24 68 d9 1c 24 ff d0 8b 7b 04 d9 05
00523090: 14 b2 fa 00 51 8b cf d9 1c 24 81 e1 00 00 00 ff
005230A0: 51 57 e8 39 c1 fe ff d9 05 00 e5 f9 00 83 c4 08
005230B0: 8b d7 d9 1c 24 81 e2 00 00 00 ff 52 57 8b d8 e8
005230C0: 1c c1 fe ff d9 05 14 b2 fa 00 89 84 24 90 00 00
005230D0: 00 d9 5c 24 08 83 c4 08 8b c7 0d ff ff ff 00 50
005230E0: 57 e8 fa c0 fe ff d9 05 00 e5 f9 00 83 c4 08 8b
005230F0: cf d9 1c 24 81 c9 ff ff ff 00 51 57 89 84 24 88
00523100: 00 00 00 e8 d8 c0 fe ff 8b 54 24 1c 8b e8 8b 02
00523110: 83 c4 0c 83 f8 0a 0f 87 a8 06 00 00 ff 24 85 d0
00523120: 37 52 00 8b 06 8b 50 04 57 8b ce ff d2 d9 44 24
00523130: 3c 8b 06 8b 50 38 83 ec 10 d9 5c 24 0c 8b ce d9
00523140: 44 24 40 d9 5c 24 08 d9 44 24 3c d9 5c 24 04 d9
00523150: 44 24 38 d9 1c 24 ff d2 d9 44 24 34 8b 06 8b 50
00523160: 38 83 ec 10 d9 5c 24 0c 8b ce d9 44 24 40 d9 5c
00523170: 24 08 d9 44 24 54 d9 5c 24 04 d9 44 24 38 d9 1c
00523180: 24 ff d2 d9 44 24 44 8b 06 8b 50 38 83 ec 10 d9
00523190: 5c 24 0c 8b ce d9 44 24 48 d9 5c 24 08 d9 44 24
005231A0: 4c d9 5c 24 04 d9 44 24 38 d9 1c 24 ff d2 d9 44
005231B0: 24 44 8b 06 8b 50 38 83 ec 10 d9 5c 24 0c 8b ce
005231C0: d9 44 24 40 d9 5c 24 08 d9 44 24 4c d9 5c 24 04
005231D0: d9 44 24 50 d9 1c 24 ff d2 5f 5e 5d 5b 83 c4 68
005231E0: c2 0c 00 83 f8 04 f3 0f 10 05 f8 98 f9 00 f3 0f
005231F0: 11 84 24 84 00 00 00 75 11 f3 0f 10 05 9c 2b fa
00523200: 00 f3 0f 11 84 24 84 00 00 00 8b 06 8b 50 04 57
00523210: 8b ce ff d2 f3 0f 10 9c 24 84 00 00 00 f3 0f 10
00523220: 44 24 28 f3 0f 10 4c 24 30 0f 2f c8 0f 28 d3 f3
00523230: 0f 59 54 24 4c f3 0f 11 94 24 80 00 00 00 f3 0f
00523240: 11 44 24 10 0f 82 8f 00 00 00 0f 28 da f3 0f 59
00523250: 1d 88 fd 03 01 f3 0f 11 5c 24 7c eb 0c

Independent original PE instructions:
  522dc0:	83 ec 68                                        	sub    esp,0x68
  522dc3:	53                                              	push   ebx
  522dc4:	55                                              	push   ebp
  522dc5:	56                                              	push   esi
  522dc6:	57                                              	push   edi
  522dc7:	8b f9                                           	mov    edi,ecx
  522dc9:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
  522dcd:	6a 00                                           	push   0x0
  522dcf:	6a 00                                           	push   0x0
  522dd1:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  522dd5:	e8 66 be fe ff                                  	call   0x50ec40
  522dda:	8b f0                                           	mov    esi,eax
  522ddc:	8b 06                                           	mov    eax,DWORD PTR [esi]
  522dde:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  522de1:	6a ff                                           	push   0xffffffff
  522de3:	8b ce                                           	mov    ecx,esi
  522de5:	ff d2                                           	call   edx
  522de7:	8b ac 24 84 00 00 00                            	mov    ebp,DWORD PTR [esp+0x84]
  522dee:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  522df1:	50                                              	push   eax
  522df2:	8b cf                                           	mov    ecx,edi
  522df4:	e8 57 fe ff ff                                  	call   0x522c50
  522df9:	f3 0f 10 77 4c                                  	movss  xmm6,DWORD PTR [edi+0x4c]
  522dfe:	f3 0f 10 57 54                                  	movss  xmm2,DWORD PTR [edi+0x54]
  522e03:	f3 0f 10 47 58                                  	movss  xmm0,DWORD PTR [edi+0x58]
  522e08:	f3 0f 10 4f 50                                  	movss  xmm1,DWORD PTR [edi+0x50]
  522e0d:	8b bc 24 80 00 00 00                            	mov    edi,DWORD PTR [esp+0x80]
  522e14:	f3 0f 10 1f                                     	movss  xmm3,DWORD PTR [edi]
  522e18:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
  522e1e:	f3 0f 10 47 08                                  	movss  xmm0,DWORD PTR [edi+0x8]
  522e23:	f3 0f 11 54 24 50                               	movss  DWORD PTR [esp+0x50],xmm2
  522e29:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  522e2f:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  522e33:	8b d8                                           	mov    ebx,eax
  522e35:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  522e39:	0f 2f d0                                        	comiss xmm2,xmm0
  522e3c:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
  522e40:	f3 0f 11 74 24 48                               	movss  DWORD PTR [esp+0x48],xmm6
  522e46:	f3 0f 11 4c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm1
  522e4c:	f3 0f 11 5c 24 20                               	movss  DWORD PTR [esp+0x20],xmm3
  522e52:	f3 0f 11 44 24 7c                               	movss  DWORD PTR [esp+0x7c],xmm0
  522e58:	76 54                                           	jbe    0x522eae
  522e5a:	d9 44 24 7c                                     	fld    DWORD PTR [esp+0x7c]
  522e5e:	83 ec 08                                        	sub    esp,0x8
  522e61:	d8 0d b4 b5 f9 00                               	fmul   DWORD PTR ds:0xf9b5b4
  522e67:	dd 1c 24                                        	fstp   QWORD PTR [esp]
  522e6a:	e8 61 c9 a5 00                                  	call   0xf7f7d0
  522e6f:	d9 94 24 8c 00 00 00                            	fst    DWORD PTR [esp+0x8c]
  522e76:	83 c4 08                                        	add    esp,0x8
  522e79:	d9 44 24 48                                     	fld    DWORD PTR [esp+0x48]
  522e7d:	8d 84 24 84 00 00 00                            	lea    eax,[esp+0x84]
  522e84:	df f1                                           	fcomip st,st(1)
  522e86:	dd d8                                           	fstp   st(0)
  522e88:	77 04                                           	ja     0x522e8e
  522e8a:	8d 44 24 48                                     	lea    eax,[esp+0x48]
  522e8e:	f3 0f 10 30                                     	movss  xmm6,DWORD PTR [eax]
  522e92:	f3 0f 10 44 24 7c                               	movss  xmm0,DWORD PTR [esp+0x7c]
  522e98:	f3 0f 10 4c 24 4c                               	movss  xmm1,DWORD PTR [esp+0x4c]
  522e9e:	f3 0f 5c c6                                     	subss  xmm0,xmm6
  522ea2:	f3 0f 11 74 24 48                               	movss  DWORD PTR [esp+0x48],xmm6
  522ea8:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
  522eae:	f3 0f 10 67 0c                                  	movss  xmm4,DWORD PTR [edi+0xc]
  522eb3:	f3 0f 10 57 04                                  	movss  xmm2,DWORD PTR [edi+0x4]
  522eb8:	f3 0f 10 5c 24 54                               	movss  xmm3,DWORD PTR [esp+0x54]
  522ebe:	0f 28 c4                                        	movaps xmm0,xmm4
  522ec1:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  522ec5:	f3 0f 58 d9                                     	addss  xmm3,xmm1
  522ec9:	0f 2f d8                                        	comiss xmm3,xmm0
  522ecc:	f3 0f 11 64 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm4
  522ed2:	f3 0f 11 54 24 18                               	movss  DWORD PTR [esp+0x18],xmm2
  522ed8:	f3 0f 11 44 24 7c                               	movss  DWORD PTR [esp+0x7c],xmm0
  522ede:	76 60                                           	jbe    0x522f40
  522ee0:	d9 44 24 7c                                     	fld    DWORD PTR [esp+0x7c]
  522ee4:	83 ec 08                                        	sub    esp,0x8
  522ee7:	d8 0d b4 b5 f9 00                               	fmul   DWORD PTR ds:0xf9b5b4
  522eed:	dd 1c 24                                        	fstp   QWORD PTR [esp]
  522ef0:	e8 db c8 a5 00                                  	call   0xf7f7d0
  522ef5:	d9 94 24 8c 00 00 00                            	fst    DWORD PTR [esp+0x8c]
  522efc:	83 c4 08                                        	add    esp,0x8
  522eff:	d9 44 24 4c                                     	fld    DWORD PTR [esp+0x4c]
  522f03:	8d 84 24 84 00 00 00                            	lea    eax,[esp+0x84]
  522f0a:	df f1                                           	fcomip st,st(1)
  522f0c:	dd d8                                           	fstp   st(0)
  522f0e:	77 04                                           	ja     0x522f14
  522f10:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
  522f14:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [eax]
  522f18:	f3 0f 10 44 24 7c                               	movss  xmm0,DWORD PTR [esp+0x7c]
  522f1e:	f3 0f 10 74 24 48                               	movss  xmm6,DWORD PTR [esp+0x48]
  522f24:	f3 0f 10 54 24 18                               	movss  xmm2,DWORD PTR [esp+0x18]
  522f2a:	f3 0f 10 64 24 1c                               	movss  xmm4,DWORD PTR [esp+0x1c]
  522f30:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  522f34:	f3 0f 11 4c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm1
  522f3a:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
  522f40:	f3 0f 10 5c 24 20                               	movss  xmm3,DWORD PTR [esp+0x20]
  522f46:	f3 0f 10 6c 24 24                               	movss  xmm5,DWORD PTR [esp+0x24]
  522f4c:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  522f54:	f3 0f 10 3d f8 98 f9 00                         	movss  xmm7,DWORD PTR ds:0xf998f8
  522f5c:	f3 0f 11 5c 24 28                               	movss  DWORD PTR [esp+0x28],xmm3
  522f62:	f3 0f 11 54 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm2
  522f68:	f3 0f 11 6c 24 30                               	movss  DWORD PTR [esp+0x30],xmm5
  522f6e:	f3 0f 11 64 24 34                               	movss  DWORD PTR [esp+0x34],xmm4
  522f74:	83 3b 09                                        	cmp    DWORD PTR [ebx],0x9
  522f77:	75 2e                                           	jne    0x522fa7
  522f79:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  522f7d:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  522f81:	0f 28 c4                                        	movaps xmm0,xmm4
  522f84:	f3 0f 5c c7                                     	subss  xmm0,xmm7
  522f88:	f3 0f 5c ef                                     	subss  xmm5,xmm7
  522f8c:	0f 28 e0                                        	movaps xmm4,xmm0
  522f8f:	f3 0f 11 5c 24 28                               	movss  DWORD PTR [esp+0x28],xmm3
  522f95:	f3 0f 11 54 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm2
  522f9b:	f3 0f 11 6c 24 30                               	movss  DWORD PTR [esp+0x30],xmm5
  522fa1:	f3 0f 11 64 24 34                               	movss  DWORD PTR [esp+0x34],xmm4
  522fa7:	f3 0f 10 05 f0 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f0
  522faf:	0f 28 f8                                        	movaps xmm7,xmm0
  522fb2:	f3 0f 5c fe                                     	subss  xmm7,xmm6
  522fb6:	0f 28 f0                                        	movaps xmm6,xmm0
  522fb9:	f3 0f 5c f1                                     	subss  xmm6,xmm1
  522fbd:	0f 28 c8                                        	movaps xmm1,xmm0
  522fc0:	f3 0f 5c 4c 24 50                               	subss  xmm1,DWORD PTR [esp+0x50]
  522fc6:	f3 0f 5c 44 24 54                               	subss  xmm0,DWORD PTR [esp+0x54]
  522fcc:	f3 0f 5c df                                     	subss  xmm3,xmm7
  522fd0:	f3 0f 5c d6                                     	subss  xmm2,xmm6
  522fd4:	f3 0f 58 cd                                     	addss  xmm1,xmm5
  522fd8:	f3 0f 58 c4                                     	addss  xmm0,xmm4
  522fdc:	f3 0f 11 5c 24 38                               	movss  DWORD PTR [esp+0x38],xmm3
  522fe2:	f3 0f 11 54 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm2
  522fe8:	f3 0f 11 4c 24 40                               	movss  DWORD PTR [esp+0x40],xmm1
  522fee:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
  522ff4:	83 3b 0a                                        	cmp    DWORD PTR [ebx],0xa
  522ff7:	f3 0f 11 5c 24 58                               	movss  DWORD PTR [esp+0x58],xmm3
  522ffd:	f3 0f 11 54 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm2
  523003:	f3 0f 11 4c 24 60                               	movss  DWORD PTR [esp+0x60],xmm1
  523009:	f3 0f 11 44 24 64                               	movss  DWORD PTR [esp+0x64],xmm0
  52300f:	75 3e                                           	jne    0x52304f
  523011:	0f 28 e3                                        	movaps xmm4,xmm3
  523014:	f3 0f 10 1d 18 b2 fa 00                         	movss  xmm3,DWORD PTR ds:0xfab218
  52301c:	f3 0f 5c d3                                     	subss  xmm2,xmm3
  523020:	f3 0f 11 54 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm2
  523026:	0f 28 d1                                        	movaps xmm2,xmm1
  523029:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  523031:	f3 0f 5c e3                                     	subss  xmm4,xmm3
  523035:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  523039:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  52303d:	f3 0f 11 64 24 58                               	movss  DWORD PTR [esp+0x58],xmm4
  523043:	f3 0f 11 54 24 60                               	movss  DWORD PTR [esp+0x60],xmm2
  523049:	f3 0f 11 44 24 64                               	movss  DWORD PTR [esp+0x64],xmm0
  52304f:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  523052:	85 c0                                           	test   eax,eax
  523054:	74 35                                           	je     0x52308b
  523056:	8b 16                                           	mov    edx,DWORD PTR [esi]
  523058:	50                                              	push   eax
  523059:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  52305c:	8b ce                                           	mov    ecx,esi
  52305e:	ff d0                                           	call   eax
  523060:	d9 44 24 64                                     	fld    DWORD PTR [esp+0x64]
  523064:	8b 16                                           	mov    edx,DWORD PTR [esi]
  523066:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
  523069:	83 ec 10                                        	sub    esp,0x10
  52306c:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  523070:	8b ce                                           	mov    ecx,esi
  523072:	d9 44 24 70                                     	fld    DWORD PTR [esp+0x70]
  523076:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  52307a:	d9 44 24 6c                                     	fld    DWORD PTR [esp+0x6c]
  52307e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  523082:	d9 44 24 68                                     	fld    DWORD PTR [esp+0x68]
  523086:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  523089:	ff d0                                           	call   eax
  52308b:	8b 7b 04                                        	mov    edi,DWORD PTR [ebx+0x4]
  52308e:	d9 05 14 b2 fa 00                               	fld    DWORD PTR ds:0xfab214
  523094:	51                                              	push   ecx
  523095:	8b cf                                           	mov    ecx,edi
  523097:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  52309a:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  5230a0:	51                                              	push   ecx
  5230a1:	57                                              	push   edi
  5230a2:	e8 39 c1 fe ff                                  	call   0x50f1e0
  5230a7:	d9 05 00 e5 f9 00                               	fld    DWORD PTR ds:0xf9e500
  5230ad:	83 c4 08                                        	add    esp,0x8
  5230b0:	8b d7                                           	mov    edx,edi
  5230b2:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5230b5:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  5230bb:	52                                              	push   edx
  5230bc:	57                                              	push   edi
  5230bd:	8b d8                                           	mov    ebx,eax
  5230bf:	e8 1c c1 fe ff                                  	call   0x50f1e0
  5230c4:	d9 05 14 b2 fa 00                               	fld    DWORD PTR ds:0xfab214
  5230ca:	89 84 24 90 00 00 00                            	mov    DWORD PTR [esp+0x90],eax
  5230d1:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  5230d5:	83 c4 08                                        	add    esp,0x8
  5230d8:	8b c7                                           	mov    eax,edi
  5230da:	0d ff ff ff 00                                  	or     eax,0xffffff
  5230df:	50                                              	push   eax
  5230e0:	57                                              	push   edi
  5230e1:	e8 fa c0 fe ff                                  	call   0x50f1e0
  5230e6:	d9 05 00 e5 f9 00                               	fld    DWORD PTR ds:0xf9e500
  5230ec:	83 c4 08                                        	add    esp,0x8
  5230ef:	8b cf                                           	mov    ecx,edi
  5230f1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5230f4:	81 c9 ff ff ff 00                               	or     ecx,0xffffff
  5230fa:	51                                              	push   ecx
  5230fb:	57                                              	push   edi
  5230fc:	89 84 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],eax
  523103:	e8 d8 c0 fe ff                                  	call   0x50f1e0
  523108:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  52310c:	8b e8                                           	mov    ebp,eax
  52310e:	8b 02                                           	mov    eax,DWORD PTR [edx]
  523110:	83 c4 0c                                        	add    esp,0xc
  523113:	83 f8 0a                                        	cmp    eax,0xa
  523116:	0f 87 a8 06 00 00                               	ja     0x5237c4
  52311c:	ff 24 85 d0 37 52 00                            	jmp    DWORD PTR [eax*4+0x5237d0]
  523123:	8b 06                                           	mov    eax,DWORD PTR [esi]
  523125:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  523128:	57                                              	push   edi
  523129:	8b ce                                           	mov    ecx,esi
  52312b:	ff d2                                           	call   edx
  52312d:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
  523131:	8b 06                                           	mov    eax,DWORD PTR [esi]
  523133:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  523136:	83 ec 10                                        	sub    esp,0x10
  523139:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  52313d:	8b ce                                           	mov    ecx,esi
  52313f:	d9 44 24 40                                     	fld    DWORD PTR [esp+0x40]
  523143:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  523147:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
  52314b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  52314f:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  523153:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  523156:	ff d2                                           	call   edx
  523158:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  52315c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  52315e:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  523161:	83 ec 10                                        	sub    esp,0x10
  523164:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  523168:	8b ce                                           	mov    ecx,esi
  52316a:	d9 44 24 40                                     	fld    DWORD PTR [esp+0x40]
  52316e:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  523172:	d9 44 24 54                                     	fld    DWORD PTR [esp+0x54]
  523176:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  52317a:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  52317e:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  523181:	ff d2                                           	call   edx
  523183:	d9 44 24 44                                     	fld    DWORD PTR [esp+0x44]
  523187:	8b 06                                           	mov    eax,DWORD PTR [esi]
  523189:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  52318c:	83 ec 10                                        	sub    esp,0x10
  52318f:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  523193:	8b ce                                           	mov    ecx,esi
  523195:	d9 44 24 48                                     	fld    DWORD PTR [esp+0x48]
  523199:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  52319d:	d9 44 24 4c                                     	fld    DWORD PTR [esp+0x4c]
  5231a1:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5231a5:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  5231a9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5231ac:	ff d2                                           	call   edx
  5231ae:	d9 44 24 44                                     	fld    DWORD PTR [esp+0x44]
  5231b2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5231b4:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  5231b7:	83 ec 10                                        	sub    esp,0x10
  5231ba:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  5231be:	8b ce                                           	mov    ecx,esi
  5231c0:	d9 44 24 40                                     	fld    DWORD PTR [esp+0x40]
  5231c4:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  5231c8:	d9 44 24 4c                                     	fld    DWORD PTR [esp+0x4c]
  5231cc:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5231d0:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
  5231d4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5231d7:	ff d2                                           	call   edx
  5231d9:	5f                                              	pop    edi
  5231da:	5e                                              	pop    esi
  5231db:	5d                                              	pop    ebp
  5231dc:	5b                                              	pop    ebx
  5231dd:	83 c4 68                                        	add    esp,0x68
  5231e0:	c2 0c 00                                        	ret    0xc
  5231e3:	83 f8 04                                        	cmp    eax,0x4
  5231e6:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  5231ee:	f3 0f 11 84 24 84 00 00 00                      	movss  DWORD PTR [esp+0x84],xmm0
  5231f7:	75 11                                           	jne    0x52320a
  5231f9:	f3 0f 10 05 9c 2b fa 00                         	movss  xmm0,DWORD PTR ds:0xfa2b9c
  523201:	f3 0f 11 84 24 84 00 00 00                      	movss  DWORD PTR [esp+0x84],xmm0
  52320a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  52320c:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  52320f:	57                                              	push   edi
  523210:	8b ce                                           	mov    ecx,esi
  523212:	ff d2                                           	call   edx
  523214:	f3 0f 10 9c 24 84 00 00 00                      	movss  xmm3,DWORD PTR [esp+0x84]
  52321d:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  523223:	f3 0f 10 4c 24 30                               	movss  xmm1,DWORD PTR [esp+0x30]
  523229:	0f 2f c8                                        	comiss xmm1,xmm0
  52322c:	0f 28 d3                                        	movaps xmm2,xmm3
  52322f:	f3 0f 59 54 24 4c                               	mulss  xmm2,DWORD PTR [esp+0x4c]
  523235:	f3 0f 11 94 24 80 00 00 00                      	movss  DWORD PTR [esp+0x80],xmm2
  52323e:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  523244:	0f 82 8f 00 00 00                               	jb     0x5232d9
  52324a:	0f 28 da                                        	movaps xmm3,xmm2
  52324d:	f3 0f 59 1d 88 fd 03 01                         	mulss  xmm3,DWORD PTR ds:0x103fd88
  523255:	f3 0f 11 5c 24 7c                               	movss  DWORD PTR [esp+0x7c],xmm3
  52325b:	eb 0c                                           	jmp    0x523269

Owned interval [00523260,0052330D); 173 bytes; original PE file offset 00123260.
00523260: f3 0f 10 94 24 80 00 00 00 f3 0f 58 c2 f3 0f 11
00523270: 44 24 14 f3 0f 58 c2 0f 2f c1 76 06 f3 0f 11 4c
00523280: 24 14 d9 44 24 3c 8b 06 8b 50 38 83 ec 10 d9 5c
00523290: 24 0c 8b ce d9 44 24 24 d9 5c 24 08 d9 44 24 3c
005232A0: d9 5c 24 04 d9 44 24 20 d9 1c 24 ff d2 f3 0f 10
005232B0: 44 24 7c f3 0f 58 44 24 10 f3 0f 10 4c 24 30 0f
005232C0: 2f c8 f3 0f 11 44 24 10 73 96 f3 0f 10 44 24 28
005232D0: f3 0f 10 9c 24 84 00 00 00 0f 2f c8 0f 28 d3 f3
005232E0: 0f 59 54 24 54 f3 0f 11 94 24 80 00 00 00 f3 0f
005232F0: 11 44 24 10 0f 82 89 00 00 00 0f 28 da f3 0f 59
00523300: 1d 88 fd 03 01 f3 0f 11 5c 24 7c eb 0c

Independent original PE instructions:
  523260:	f3 0f 10 94 24 80 00 00 00                      	movss  xmm2,DWORD PTR [esp+0x80]
  523269:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  52326d:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  523273:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  523277:	0f 2f c1                                        	comiss xmm0,xmm1
  52327a:	76 06                                           	jbe    0x523282
  52327c:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  523282:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
  523286:	8b 06                                           	mov    eax,DWORD PTR [esi]
  523288:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  52328b:	83 ec 10                                        	sub    esp,0x10
  52328e:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  523292:	8b ce                                           	mov    ecx,esi
  523294:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  523298:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  52329c:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
  5232a0:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5232a4:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  5232a8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5232ab:	ff d2                                           	call   edx
  5232ad:	f3 0f 10 44 24 7c                               	movss  xmm0,DWORD PTR [esp+0x7c]
  5232b3:	f3 0f 58 44 24 10                               	addss  xmm0,DWORD PTR [esp+0x10]
  5232b9:	f3 0f 10 4c 24 30                               	movss  xmm1,DWORD PTR [esp+0x30]
  5232bf:	0f 2f c8                                        	comiss xmm1,xmm0
  5232c2:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5232c8:	73 96                                           	jae    0x523260
  5232ca:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  5232d0:	f3 0f 10 9c 24 84 00 00 00                      	movss  xmm3,DWORD PTR [esp+0x84]
  5232d9:	0f 2f c8                                        	comiss xmm1,xmm0
  5232dc:	0f 28 d3                                        	movaps xmm2,xmm3
  5232df:	f3 0f 59 54 24 54                               	mulss  xmm2,DWORD PTR [esp+0x54]
  5232e5:	f3 0f 11 94 24 80 00 00 00                      	movss  DWORD PTR [esp+0x80],xmm2
  5232ee:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5232f4:	0f 82 89 00 00 00                               	jb     0x523383
  5232fa:	0f 28 da                                        	movaps xmm3,xmm2
  5232fd:	f3 0f 59 1d 88 fd 03 01                         	mulss  xmm3,DWORD PTR ds:0x103fd88
  523305:	f3 0f 11 5c 24 7c                               	movss  DWORD PTR [esp+0x7c],xmm3
  52330b:	eb 0c                                           	jmp    0x523319

Owned interval [00523310,005233C6); 182 bytes; original PE file offset 00123310.
00523310: f3 0f 10 94 24 80 00 00 00 f3 0f 58 c2 f3 0f 11
00523320: 44 24 14 f3 0f 58 c2 0f 2f c1 76 06 f3 0f 11 4c
00523330: 24 14 d9 44 24 34 8b 06 8b 50 38 83 ec 10 d9 5c
00523340: 24 0c 8b ce d9 44 24 24 d9 5c 24 08 d9 44 24 54
00523350: d9 5c 24 04 d9 44 24 20 d9 1c 24 ff d2 f3 0f 10
00523360: 44 24 7c f3 0f 58 44 24 10 f3 0f 10 4c 24 30 0f
00523370: 2f c8 f3 0f 11 44 24 10 73 96 f3 0f 10 9c 24 84
00523380: 00 00 00 f3 0f 10 4c 24 44 0f 28 d3 f3 0f 59 54
00523390: 24 48 0f 28 c2 f3 0f 58 44 24 3c 0f 2f c8 f3 0f
005233A0: 11 94 24 80 00 00 00 f3 0f 11 44 24 10 0f 82 90
005233B0: 00 00 00 0f 28 da f3 0f 59 1d 88 fd 03 01 f3 0f
005233C0: 11 5c 24 7c eb 13

Independent original PE instructions:
  523310:	f3 0f 10 94 24 80 00 00 00                      	movss  xmm2,DWORD PTR [esp+0x80]
  523319:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  52331d:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  523323:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  523327:	0f 2f c1                                        	comiss xmm0,xmm1
  52332a:	76 06                                           	jbe    0x523332
  52332c:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  523332:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  523336:	8b 06                                           	mov    eax,DWORD PTR [esi]
  523338:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  52333b:	83 ec 10                                        	sub    esp,0x10
  52333e:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  523342:	8b ce                                           	mov    ecx,esi
  523344:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  523348:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  52334c:	d9 44 24 54                                     	fld    DWORD PTR [esp+0x54]
  523350:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  523354:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  523358:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  52335b:	ff d2                                           	call   edx
  52335d:	f3 0f 10 44 24 7c                               	movss  xmm0,DWORD PTR [esp+0x7c]
  523363:	f3 0f 58 44 24 10                               	addss  xmm0,DWORD PTR [esp+0x10]
  523369:	f3 0f 10 4c 24 30                               	movss  xmm1,DWORD PTR [esp+0x30]
  52336f:	0f 2f c8                                        	comiss xmm1,xmm0
  523372:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  523378:	73 96                                           	jae    0x523310
  52337a:	f3 0f 10 9c 24 84 00 00 00                      	movss  xmm3,DWORD PTR [esp+0x84]
  523383:	f3 0f 10 4c 24 44                               	movss  xmm1,DWORD PTR [esp+0x44]
  523389:	0f 28 d3                                        	movaps xmm2,xmm3
  52338c:	f3 0f 59 54 24 48                               	mulss  xmm2,DWORD PTR [esp+0x48]
  523392:	0f 28 c2                                        	movaps xmm0,xmm2
  523395:	f3 0f 58 44 24 3c                               	addss  xmm0,DWORD PTR [esp+0x3c]
  52339b:	0f 2f c8                                        	comiss xmm1,xmm0
  52339e:	f3 0f 11 94 24 80 00 00 00                      	movss  DWORD PTR [esp+0x80],xmm2
  5233a7:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5233ad:	0f 82 90 00 00 00                               	jb     0x523443
  5233b3:	0f 28 da                                        	movaps xmm3,xmm2
  5233b6:	f3 0f 59 1d 88 fd 03 01                         	mulss  xmm3,DWORD PTR ds:0x103fd88
  5233be:	f3 0f 11 5c 24 7c                               	movss  DWORD PTR [esp+0x7c],xmm3
  5233c4:	eb 13                                           	jmp    0x5233d9

Owned interval [005233D0,005237CE); 1022 bytes; original PE file offset 001233D0.
005233D0: f3 0f 10 94 24 80 00 00 00 f3 0f 58 c2 f3 0f 11
005233E0: 44 24 14 f3 0f 58 c2 0f 2f c1 76 06 f3 0f 11 4c
005233F0: 24 14 d9 44 24 14 8b 06 8b 50 38 83 ec 10 d9 5c
00523400: 24 0c 8b ce d9 44 24 48 d9 5c 24 08 d9 44 24 20
00523410: d9 5c 24 04 d9 44 24 38 d9 1c 24 ff d2 f3 0f 10
00523420: 44 24 7c f3 0f 58 44 24 10 f3 0f 10 4c 24 44 0f
00523430: 2f c8 f3 0f 11 44 24 10 73 96 f3 0f 10 9c 24 84
00523440: 00 00 00 f3 0f 59 5c 24 50 0f 28 c3 f3 0f 58 44
00523450: 24 3c 0f 2f c8 f3 0f 11 9c 24 80 00 00 00 f3 0f
00523460: 11 84 24 84 00 00 00 0f 82 57 03 00 00 0f 28 d3
00523470: f3 0f 59 15 88 fd 03 01 f3 0f 11 54 24 7c eb 09
00523480: f3 0f 10 9c 24 80 00 00 00 f3 0f 58 c3 f3 0f 11
00523490: 44 24 14 f3 0f 58 c3 0f 2f c1 76 06 f3 0f 11 4c
005234A0: 24 14 d9 44 24 14 8b 06 8b 50 38 83 ec 10 d9 5c
005234B0: 24 0c 8b ce d9 44 24 40 d9 5c 24 08 d9 84 24 94
005234C0: 00 00 00 d9 5c 24 04 d9 44 24 50 d9 1c 24 ff d2
005234D0: f3 0f 10 44 24 7c f3 0f 58 84 24 84 00 00 00 f3
005234E0: 0f 10 4c 24 44 0f 2f c8 f3 0f 11 84 24 84 00 00
005234F0: 00 73 8d 5f 5e 5d 5b 83 c4 68 c2 0c 00 8b 84 24
00523500: 84 00 00 00 89 44 24 68 89 44 24 6c 8b 44 24 7c
00523510: 89 44 24 70 89 44 24 74 8b 06 8b 50 04 6a ff 8b
00523520: ce 89 5c 24 5c 89 5c 24 60 89 6c 24 64 89 6c 24
00523530: 68 ff d2 8d 44 24 68 50 8d 4c 24 5c 51 8d 54 24
00523540: 40 52 8d 44 24 34 50 56 e8 a3 dd fe ff 83 c4 14
00523550: 5f 5e 5d 5b 83 c4 68 c2 0c 00 8b 44 24 7c 8b 16
00523560: 89 44 24 58 89 44 24 5c 8b 84 24 84 00 00 00 89
00523570: 44 24 60 89 44 24 64 8b 42 04 6a ff 8b ce 89 6c
00523580: 24 6c 89 6c 24 70 89 5c 24 74 89 5c 24 78 ff d0
00523590: 8d 4c 24 68 51 8d 54 24 5c 52 8d 44 24 40 50 8d
005235A0: 4c 24 34 51 56 e8 46 dd fe ff 83 c4 14 5f 5e 5d
005235B0: 5b 83 c4 68 c2 0c 00 8b 84 24 84 00 00 00 8b 16
005235C0: 89 44 24 68 89 44 24 6c 8b 44 24 7c 89 44 24 70
005235D0: 89 44 24 74 8b 42 04 6a ff 8b ce 89 5c 24 5c 89
005235E0: 5c 24 60 89 6c 24 64 89 6c 24 68 ff d0 8d 4c 24
005235F0: 68 51 8d 54 24 5c 52 8d 44 24 40 50 8d 4c 24 34
00523600: 51 56 e8 e9 dc fe ff 8b 44 24 28 8b 48 5c 8b 16
00523610: 8b 52 04 83 c4 14 51 8b ce ff d2 d9 e8 51 d9 1c
00523620: 24 8d 44 24 3c 50 8b ce e8 c3 f6 ff ff 5f 5e 5d
00523630: 5b 83 c4 68 c2 0c 00 8b 44 24 7c 8b 16 89 44 24
00523640: 58 89 44 24 5c 8b 84 24 84 00 00 00 89 44 24 60
00523650: 89 44 24 64 8b 42 04 6a ff 8b ce 89 6c 24 6c 89
00523660: 6c 24 70 89 5c 24 74 89 5c 24 78 ff d0 8d 4c 24
00523670: 68 51 8d 54 24 5c 52 8d 44 24 40 50 8d 4c 24 34
00523680: 51 56 e8 69 dc fe ff 8b 44 24 28 8b 48 5c 8b 16
00523690: 8b 52 04 83 c4 14 51 8b ce ff d2 d9 e8 8b 84 24
005236A0: 80 00 00 00 51 d9 1c 24 50 8b ce e8 40 f6 ff ff
005236B0: 5f 5e 5d 5b 83 c4 68 c2 0c 00 f3 0f 10 05 b4 b5
005236C0: f9 00 f3 0f 10 4c 24 38 f3 0f 58 4c 24 28 8b 16
005236D0: 8b 42 04 f3 0f 59 c8 f3 0f 11 4c 24 68 f3 0f 10
005236E0: 4c 24 40 f3 0f 58 4c 24 30 f3 0f 59 c8 f3 0f 11
005236F0: 4c 24 70 f3 0f 10 4c 24 2c f3 0f 58 4c 24 3c f3
00523700: 0f 59 c8 f3 0f 11 4c 24 6c f3 0f 10 4c 24 44 f3
00523710: 0f 58 4c 24 34 f3 0f 59 c8 6a ff 8b ce f3 0f 11
00523720: 4c 24 78 ff d0 8b 4c 24 10 83 39 08 89 5c 24 58
00523730: 89 5c 24 5c 89 6c 24 60 89 6c 24 64 89 6c 24 48
00523740: 89 6c 24 4c 89 5c 24 50 89 5c 24 54 75 40 8d 54
00523750: 24 48 52 8b c2 50 8d 4c 24 70 51 8d 54 24 34 52
00523760: 56 e8 8a db fe ff 8d 44 24 6c 50 8b c8 51 8d 54
00523770: 24 54 52 8d 84 24 88 00 00 00 50 56 e8 6f db fe
00523780: ff 83 c4 28 5f 5e 5d 5b 83 c4 68 c2 0c 00 8d 4c
00523790: 24 58 51 8b d1 52 8d 44 24 70 50 8d 4c 24 34 51
005237A0: 56 e8 4a db fe ff 8d 54 24 5c 52 8b c2 50 8d 4c
005237B0: 24 54 51 8d 94 24 88 00 00 00 52 56 e8 2f db fe
005237C0: ff 83 c4 28 5f 5e 5d 5b 83 c4 68 c2 0c 00

Independent original PE instructions:
  5233d0:	f3 0f 10 94 24 80 00 00 00                      	movss  xmm2,DWORD PTR [esp+0x80]
  5233d9:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  5233dd:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  5233e3:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  5233e7:	0f 2f c1                                        	comiss xmm0,xmm1
  5233ea:	76 06                                           	jbe    0x5233f2
  5233ec:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5233f2:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  5233f6:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5233f8:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  5233fb:	83 ec 10                                        	sub    esp,0x10
  5233fe:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  523402:	8b ce                                           	mov    ecx,esi
  523404:	d9 44 24 48                                     	fld    DWORD PTR [esp+0x48]
  523408:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  52340c:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  523410:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  523414:	d9 44 24 38                                     	fld    DWORD PTR [esp+0x38]
  523418:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  52341b:	ff d2                                           	call   edx
  52341d:	f3 0f 10 44 24 7c                               	movss  xmm0,DWORD PTR [esp+0x7c]
  523423:	f3 0f 58 44 24 10                               	addss  xmm0,DWORD PTR [esp+0x10]
  523429:	f3 0f 10 4c 24 44                               	movss  xmm1,DWORD PTR [esp+0x44]
  52342f:	0f 2f c8                                        	comiss xmm1,xmm0
  523432:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  523438:	73 96                                           	jae    0x5233d0
  52343a:	f3 0f 10 9c 24 84 00 00 00                      	movss  xmm3,DWORD PTR [esp+0x84]
  523443:	f3 0f 59 5c 24 50                               	mulss  xmm3,DWORD PTR [esp+0x50]
  523449:	0f 28 c3                                        	movaps xmm0,xmm3
  52344c:	f3 0f 58 44 24 3c                               	addss  xmm0,DWORD PTR [esp+0x3c]
  523452:	0f 2f c8                                        	comiss xmm1,xmm0
  523455:	f3 0f 11 9c 24 80 00 00 00                      	movss  DWORD PTR [esp+0x80],xmm3
  52345e:	f3 0f 11 84 24 84 00 00 00                      	movss  DWORD PTR [esp+0x84],xmm0
  523467:	0f 82 57 03 00 00                               	jb     0x5237c4
  52346d:	0f 28 d3                                        	movaps xmm2,xmm3
  523470:	f3 0f 59 15 88 fd 03 01                         	mulss  xmm2,DWORD PTR ds:0x103fd88
  523478:	f3 0f 11 54 24 7c                               	movss  DWORD PTR [esp+0x7c],xmm2
  52347e:	eb 09                                           	jmp    0x523489
  523480:	f3 0f 10 9c 24 80 00 00 00                      	movss  xmm3,DWORD PTR [esp+0x80]
  523489:	f3 0f 58 c3                                     	addss  xmm0,xmm3
  52348d:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  523493:	f3 0f 58 c3                                     	addss  xmm0,xmm3
  523497:	0f 2f c1                                        	comiss xmm0,xmm1
  52349a:	76 06                                           	jbe    0x5234a2
  52349c:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5234a2:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  5234a6:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5234a8:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  5234ab:	83 ec 10                                        	sub    esp,0x10
  5234ae:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  5234b2:	8b ce                                           	mov    ecx,esi
  5234b4:	d9 44 24 40                                     	fld    DWORD PTR [esp+0x40]
  5234b8:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  5234bc:	d9 84 24 94 00 00 00                            	fld    DWORD PTR [esp+0x94]
  5234c3:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5234c7:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
  5234cb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5234ce:	ff d2                                           	call   edx
  5234d0:	f3 0f 10 44 24 7c                               	movss  xmm0,DWORD PTR [esp+0x7c]
  5234d6:	f3 0f 58 84 24 84 00 00 00                      	addss  xmm0,DWORD PTR [esp+0x84]
  5234df:	f3 0f 10 4c 24 44                               	movss  xmm1,DWORD PTR [esp+0x44]
  5234e5:	0f 2f c8                                        	comiss xmm1,xmm0
  5234e8:	f3 0f 11 84 24 84 00 00 00                      	movss  DWORD PTR [esp+0x84],xmm0
  5234f1:	73 8d                                           	jae    0x523480
  5234f3:	5f                                              	pop    edi
  5234f4:	5e                                              	pop    esi
  5234f5:	5d                                              	pop    ebp
  5234f6:	5b                                              	pop    ebx
  5234f7:	83 c4 68                                        	add    esp,0x68
  5234fa:	c2 0c 00                                        	ret    0xc
  5234fd:	8b 84 24 84 00 00 00                            	mov    eax,DWORD PTR [esp+0x84]
  523504:	89 44 24 68                                     	mov    DWORD PTR [esp+0x68],eax
  523508:	89 44 24 6c                                     	mov    DWORD PTR [esp+0x6c],eax
  52350c:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
  523510:	89 44 24 70                                     	mov    DWORD PTR [esp+0x70],eax
  523514:	89 44 24 74                                     	mov    DWORD PTR [esp+0x74],eax
  523518:	8b 06                                           	mov    eax,DWORD PTR [esi]
  52351a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  52351d:	6a ff                                           	push   0xffffffff
  52351f:	8b ce                                           	mov    ecx,esi
  523521:	89 5c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ebx
  523525:	89 5c 24 60                                     	mov    DWORD PTR [esp+0x60],ebx
  523529:	89 6c 24 64                                     	mov    DWORD PTR [esp+0x64],ebp
  52352d:	89 6c 24 68                                     	mov    DWORD PTR [esp+0x68],ebp
  523531:	ff d2                                           	call   edx
  523533:	8d 44 24 68                                     	lea    eax,[esp+0x68]
  523537:	50                                              	push   eax
  523538:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  52353c:	51                                              	push   ecx
  52353d:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  523541:	52                                              	push   edx
  523542:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  523546:	50                                              	push   eax
  523547:	56                                              	push   esi
  523548:	e8 a3 dd fe ff                                  	call   0x5112f0
  52354d:	83 c4 14                                        	add    esp,0x14
  523550:	5f                                              	pop    edi
  523551:	5e                                              	pop    esi
  523552:	5d                                              	pop    ebp
  523553:	5b                                              	pop    ebx
  523554:	83 c4 68                                        	add    esp,0x68
  523557:	c2 0c 00                                        	ret    0xc
  52355a:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
  52355e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  523560:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
  523564:	89 44 24 5c                                     	mov    DWORD PTR [esp+0x5c],eax
  523568:	8b 84 24 84 00 00 00                            	mov    eax,DWORD PTR [esp+0x84]
  52356f:	89 44 24 60                                     	mov    DWORD PTR [esp+0x60],eax
  523573:	89 44 24 64                                     	mov    DWORD PTR [esp+0x64],eax
  523577:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  52357a:	6a ff                                           	push   0xffffffff
  52357c:	8b ce                                           	mov    ecx,esi
  52357e:	89 6c 24 6c                                     	mov    DWORD PTR [esp+0x6c],ebp
  523582:	89 6c 24 70                                     	mov    DWORD PTR [esp+0x70],ebp
  523586:	89 5c 24 74                                     	mov    DWORD PTR [esp+0x74],ebx
  52358a:	89 5c 24 78                                     	mov    DWORD PTR [esp+0x78],ebx
  52358e:	ff d0                                           	call   eax
  523590:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  523594:	51                                              	push   ecx
  523595:	8d 54 24 5c                                     	lea    edx,[esp+0x5c]
  523599:	52                                              	push   edx
  52359a:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  52359e:	50                                              	push   eax
  52359f:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  5235a3:	51                                              	push   ecx
  5235a4:	56                                              	push   esi
  5235a5:	e8 46 dd fe ff                                  	call   0x5112f0
  5235aa:	83 c4 14                                        	add    esp,0x14
  5235ad:	5f                                              	pop    edi
  5235ae:	5e                                              	pop    esi
  5235af:	5d                                              	pop    ebp
  5235b0:	5b                                              	pop    ebx
  5235b1:	83 c4 68                                        	add    esp,0x68
  5235b4:	c2 0c 00                                        	ret    0xc
  5235b7:	8b 84 24 84 00 00 00                            	mov    eax,DWORD PTR [esp+0x84]
  5235be:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5235c0:	89 44 24 68                                     	mov    DWORD PTR [esp+0x68],eax
  5235c4:	89 44 24 6c                                     	mov    DWORD PTR [esp+0x6c],eax
  5235c8:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
  5235cc:	89 44 24 70                                     	mov    DWORD PTR [esp+0x70],eax
  5235d0:	89 44 24 74                                     	mov    DWORD PTR [esp+0x74],eax
  5235d4:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5235d7:	6a ff                                           	push   0xffffffff
  5235d9:	8b ce                                           	mov    ecx,esi
  5235db:	89 5c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ebx
  5235df:	89 5c 24 60                                     	mov    DWORD PTR [esp+0x60],ebx
  5235e3:	89 6c 24 64                                     	mov    DWORD PTR [esp+0x64],ebp
  5235e7:	89 6c 24 68                                     	mov    DWORD PTR [esp+0x68],ebp
  5235eb:	ff d0                                           	call   eax
  5235ed:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  5235f1:	51                                              	push   ecx
  5235f2:	8d 54 24 5c                                     	lea    edx,[esp+0x5c]
  5235f6:	52                                              	push   edx
  5235f7:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  5235fb:	50                                              	push   eax
  5235fc:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  523600:	51                                              	push   ecx
  523601:	56                                              	push   esi
  523602:	e8 e9 dc fe ff                                  	call   0x5112f0
  523607:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  52360b:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
  52360e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  523610:	8b 52 04                                        	mov    edx,DWORD PTR [edx+0x4]
  523613:	83 c4 14                                        	add    esp,0x14
  523616:	51                                              	push   ecx
  523617:	8b ce                                           	mov    ecx,esi
  523619:	ff d2                                           	call   edx
  52361b:	d9 e8                                           	fld1
  52361d:	51                                              	push   ecx
  52361e:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  523621:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  523625:	50                                              	push   eax
  523626:	8b ce                                           	mov    ecx,esi
  523628:	e8 c3 f6 ff ff                                  	call   0x522cf0
  52362d:	5f                                              	pop    edi
  52362e:	5e                                              	pop    esi
  52362f:	5d                                              	pop    ebp
  523630:	5b                                              	pop    ebx
  523631:	83 c4 68                                        	add    esp,0x68
  523634:	c2 0c 00                                        	ret    0xc
  523637:	8b 44 24 7c                                     	mov    eax,DWORD PTR [esp+0x7c]
  52363b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  52363d:	89 44 24 58                                     	mov    DWORD PTR [esp+0x58],eax
  523641:	89 44 24 5c                                     	mov    DWORD PTR [esp+0x5c],eax
  523645:	8b 84 24 84 00 00 00                            	mov    eax,DWORD PTR [esp+0x84]
  52364c:	89 44 24 60                                     	mov    DWORD PTR [esp+0x60],eax
  523650:	89 44 24 64                                     	mov    DWORD PTR [esp+0x64],eax
  523654:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  523657:	6a ff                                           	push   0xffffffff
  523659:	8b ce                                           	mov    ecx,esi
  52365b:	89 6c 24 6c                                     	mov    DWORD PTR [esp+0x6c],ebp
  52365f:	89 6c 24 70                                     	mov    DWORD PTR [esp+0x70],ebp
  523663:	89 5c 24 74                                     	mov    DWORD PTR [esp+0x74],ebx
  523667:	89 5c 24 78                                     	mov    DWORD PTR [esp+0x78],ebx
  52366b:	ff d0                                           	call   eax
  52366d:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  523671:	51                                              	push   ecx
  523672:	8d 54 24 5c                                     	lea    edx,[esp+0x5c]
  523676:	52                                              	push   edx
  523677:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  52367b:	50                                              	push   eax
  52367c:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  523680:	51                                              	push   ecx
  523681:	56                                              	push   esi
  523682:	e8 69 dc fe ff                                  	call   0x5112f0
  523687:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  52368b:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
  52368e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  523690:	8b 52 04                                        	mov    edx,DWORD PTR [edx+0x4]
  523693:	83 c4 14                                        	add    esp,0x14
  523696:	51                                              	push   ecx
  523697:	8b ce                                           	mov    ecx,esi
  523699:	ff d2                                           	call   edx
  52369b:	d9 e8                                           	fld1
  52369d:	8b 84 24 80 00 00 00                            	mov    eax,DWORD PTR [esp+0x80]
  5236a4:	51                                              	push   ecx
  5236a5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5236a8:	50                                              	push   eax
  5236a9:	8b ce                                           	mov    ecx,esi
  5236ab:	e8 40 f6 ff ff                                  	call   0x522cf0
  5236b0:	5f                                              	pop    edi
  5236b1:	5e                                              	pop    esi
  5236b2:	5d                                              	pop    ebp
  5236b3:	5b                                              	pop    ebx
  5236b4:	83 c4 68                                        	add    esp,0x68
  5236b7:	c2 0c 00                                        	ret    0xc
  5236ba:	f3 0f 10 05 b4 b5 f9 00                         	movss  xmm0,DWORD PTR ds:0xf9b5b4
  5236c2:	f3 0f 10 4c 24 38                               	movss  xmm1,DWORD PTR [esp+0x38]
  5236c8:	f3 0f 58 4c 24 28                               	addss  xmm1,DWORD PTR [esp+0x28]
  5236ce:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5236d0:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5236d3:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5236d7:	f3 0f 11 4c 24 68                               	movss  DWORD PTR [esp+0x68],xmm1
  5236dd:	f3 0f 10 4c 24 40                               	movss  xmm1,DWORD PTR [esp+0x40]
  5236e3:	f3 0f 58 4c 24 30                               	addss  xmm1,DWORD PTR [esp+0x30]
  5236e9:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  5236ed:	f3 0f 11 4c 24 70                               	movss  DWORD PTR [esp+0x70],xmm1
  5236f3:	f3 0f 10 4c 24 2c                               	movss  xmm1,DWORD PTR [esp+0x2c]
  5236f9:	f3 0f 58 4c 24 3c                               	addss  xmm1,DWORD PTR [esp+0x3c]
  5236ff:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  523703:	f3 0f 11 4c 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm1
  523709:	f3 0f 10 4c 24 44                               	movss  xmm1,DWORD PTR [esp+0x44]
  52370f:	f3 0f 58 4c 24 34                               	addss  xmm1,DWORD PTR [esp+0x34]
  523715:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  523719:	6a ff                                           	push   0xffffffff
  52371b:	8b ce                                           	mov    ecx,esi
  52371d:	f3 0f 11 4c 24 78                               	movss  DWORD PTR [esp+0x78],xmm1
  523723:	ff d0                                           	call   eax
  523725:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  523729:	83 39 08                                        	cmp    DWORD PTR [ecx],0x8
  52372c:	89 5c 24 58                                     	mov    DWORD PTR [esp+0x58],ebx
  523730:	89 5c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ebx
  523734:	89 6c 24 60                                     	mov    DWORD PTR [esp+0x60],ebp
  523738:	89 6c 24 64                                     	mov    DWORD PTR [esp+0x64],ebp
  52373c:	89 6c 24 48                                     	mov    DWORD PTR [esp+0x48],ebp
  523740:	89 6c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebp
  523744:	89 5c 24 50                                     	mov    DWORD PTR [esp+0x50],ebx
  523748:	89 5c 24 54                                     	mov    DWORD PTR [esp+0x54],ebx
  52374c:	75 40                                           	jne    0x52378e
  52374e:	8d 54 24 48                                     	lea    edx,[esp+0x48]
  523752:	52                                              	push   edx
  523753:	8b c2                                           	mov    eax,edx
  523755:	50                                              	push   eax
  523756:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  52375a:	51                                              	push   ecx
  52375b:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  52375f:	52                                              	push   edx
  523760:	56                                              	push   esi
  523761:	e8 8a db fe ff                                  	call   0x5112f0
  523766:	8d 44 24 6c                                     	lea    eax,[esp+0x6c]
  52376a:	50                                              	push   eax
  52376b:	8b c8                                           	mov    ecx,eax
  52376d:	51                                              	push   ecx
  52376e:	8d 54 24 54                                     	lea    edx,[esp+0x54]
  523772:	52                                              	push   edx
  523773:	8d 84 24 88 00 00 00                            	lea    eax,[esp+0x88]
  52377a:	50                                              	push   eax
  52377b:	56                                              	push   esi
  52377c:	e8 6f db fe ff                                  	call   0x5112f0
  523781:	83 c4 28                                        	add    esp,0x28
  523784:	5f                                              	pop    edi
  523785:	5e                                              	pop    esi
  523786:	5d                                              	pop    ebp
  523787:	5b                                              	pop    ebx
  523788:	83 c4 68                                        	add    esp,0x68
  52378b:	c2 0c 00                                        	ret    0xc
  52378e:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
  523792:	51                                              	push   ecx
  523793:	8b d1                                           	mov    edx,ecx
  523795:	52                                              	push   edx
  523796:	8d 44 24 70                                     	lea    eax,[esp+0x70]
  52379a:	50                                              	push   eax
  52379b:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  52379f:	51                                              	push   ecx
  5237a0:	56                                              	push   esi
  5237a1:	e8 4a db fe ff                                  	call   0x5112f0
  5237a6:	8d 54 24 5c                                     	lea    edx,[esp+0x5c]
  5237aa:	52                                              	push   edx
  5237ab:	8b c2                                           	mov    eax,edx
  5237ad:	50                                              	push   eax
  5237ae:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  5237b2:	51                                              	push   ecx
  5237b3:	8d 94 24 88 00 00 00                            	lea    edx,[esp+0x88]
  5237ba:	52                                              	push   edx
  5237bb:	56                                              	push   esi
  5237bc:	e8 2f db fe ff                                  	call   0x5112f0
  5237c1:	83 c4 28                                        	add    esp,0x28
  5237c4:	5f                                              	pop    edi
  5237c5:	5e                                              	pop    esi
  5237c6:	5d                                              	pop    ebp
  5237c7:	5b                                              	pop    ebx
  5237c8:	83 c4 68                                        	add    esp,0x68
  5237cb:	c2 0c 00                                        	ret    0xc

Gap intervals [0052325D,00523260),[0052330D,00523310),[005233C6,005233D0) are not added.
Following eleven-DWORD style table [005237D0,005237FC) is data, not owned instructions.

CURRENT SAVED GHIDRA LISTING (as returned)
[Context] Operating on: TS3W.exe

Disassembly of function: FrameDrawable_Draw
Entry Point: 00522dc0

00522dc0: SUB ESP, 0x68
00522dc3: PUSH EBX
00522dc4: PUSH EBP
00522dc5: PUSH ESI
00522dc6: PUSH EDI
00522dc7: MOV EDI, ECX
00522dc9: MOV ECX, dword ptr [ESP + 0x7c] ; Physical stack+4 is DrawContext; rectangle and packed fourword context are stack+8 and+C. Existing C loses one physical argument.
00522dcd: PUSH 0x0
00522dcf: PUSH 0x0
00522dd1: MOV dword ptr [ESP + 0x1c], EDI
00522dd5: CALL 0x0050ec40 ; Select renderer0 with bytecontrol0; returned builder is used by subsequent virtual calls. Reuse verified50EC40 contract.
00522dda: MOV ESI, EAX
00522ddc: MOV EAX, dword ptr [ESI]
00522dde: MOV EDX, dword ptr [EAX + 0x4]
00522de1: PUSH -0x1
00522de3: MOV ECX, ESI
00522de5: CALL EDX
00522de7: MOV EBP, dword ptr [ESP + 0x84]
00522dee: MOV EAX, dword ptr [EBP] ; Read packed selector input from third physical argument context[0]; not managed storage ordinal.
00522df1: PUSH EAX
00522df2: MOV ECX, EDI
00522df4: CALL 0x00522c50
00522df9: MOVSS XMM6, dword ptr [EDI + 0x4c] ; Read receiver Float32 extents+4C,+54,+58,+50; exact property mapping remains a separate descriptor proof.
00522dfe: MOVSS XMM2, dword ptr [EDI + 0x54]
00522e03: MOVSS XMM0, dword ptr [EDI + 0x58]
00522e08: MOVSS XMM1, dword ptr [EDI + 0x50]
00522e0d: MOV EDI, dword ptr [ESP + 0x80]
00522e14: MOVSS XMM3, dword ptr [EDI]
00522e18: MOVSS dword ptr [ESP + 0x54], XMM0
00522e1e: MOVSS XMM0, dword ptr [EDI + 0x8]
00522e23: MOVSS dword ptr [ESP + 0x50], XMM2
00522e29: MOVSS dword ptr [ESP + 0x24], XMM0
00522e2f: SUBSS XMM0, XMM3
00522e33: MOV EBX, EAX
00522e35: ADDSS XMM2, XMM6
00522e39: COMISS XMM2, XMM0
00522e3c: MOV dword ptr [ESP + 0x10], EBX
00522e40: MOVSS dword ptr [ESP + 0x48], XMM6
00522e46: MOVSS dword ptr [ESP + 0x4c], XMM1
00522e4c: MOVSS dword ptr [ESP + 0x20], XMM3
00522e52: MOVSS dword ptr [ESP + 0x7c], XMM0
00522e58: JBE 0x00522eae ; Skip horizontal adjustment for COMISS <= or unordered flags if execution continues; no finite/nonnegative validation here.
00522e5a: FLD float ptr [ESP + 0x7c]
00522e5e: SUB ESP, 0x8
00522e61: FMUL float ptr [0x00f9b5b4]
00522e67: FSTP double ptr [ESP]
00522e6a: CALL 0x00f7f7d0 ; Imported MSVCR80 floor receives Double of available-span*F32(0.5); no proportional rescale.
00522e6f: FST float ptr [ESP + 0x8c]
00522e76: ADD ESP, 0x8
00522e79: FLD float ptr [ESP + 0x48]
00522e7d: LEA EAX, [ESP + 0x84]
00522e84: FCOMIP ST0, ST1 ; Compare original firstextent against retained x87 floor result; select narrowedF32 floor only on ordered above.
00522e86: FSTP ST0
00522e88: JA 0x00522e8e
00522e8a: LEA EAX, [ESP + 0x48]
00522e8e: MOVSS XMM6, dword ptr [EAX]
00522e92: MOVSS XMM0, dword ptr [ESP + 0x7c]
00522e98: MOVSS XMM1, dword ptr [ESP + 0x4c]
00522e9e: SUBSS XMM0, XMM6 ; New opposite extent is Float32 available-span minus selected firstextent.
00522ea2: MOVSS dword ptr [ESP + 0x48], XMM6
00522ea8: MOVSS dword ptr [ESP + 0x50], XMM0
00522eae: MOVSS XMM4, dword ptr [EDI + 0xc]
00522eb3: MOVSS XMM2, dword ptr [EDI + 0x4]
00522eb8: MOVSS XMM3, dword ptr [ESP + 0x54]
00522ebe: MOVAPS XMM0, XMM4
00522ec1: SUBSS XMM0, XMM2
00522ec5: ADDSS XMM3, XMM1
00522ec9: COMISS XMM3, XMM0
00522ecc: MOVSS dword ptr [ESP + 0x1c], XMM4
00522ed2: MOVSS dword ptr [ESP + 0x18], XMM2
00522ed8: MOVSS dword ptr [ESP + 0x7c], XMM0
00522ede: JBE 0x00522f40 ; Vertical extents use the same overflow/clamp sequence; unordered flags skip it if execution continues.
00522ee0: FLD float ptr [ESP + 0x7c]
00522ee4: SUB ESP, 0x8
00522ee7: FMUL float ptr [0x00f9b5b4]
00522eed: FSTP double ptr [ESP]
00522ef0: CALL 0x00f7f7d0
00522ef5: FST float ptr [ESP + 0x8c]
00522efc: ADD ESP, 0x8
00522eff: FLD float ptr [ESP + 0x4c]
00522f03: LEA EAX, [ESP + 0x84]
00522f0a: FCOMIP ST0, ST1
00522f0c: FSTP ST0
00522f0e: JA 0x00522f14
00522f10: LEA EAX, [ESP + 0x4c]
00522f14: MOVSS XMM1, dword ptr [EAX]
00522f18: MOVSS XMM0, dword ptr [ESP + 0x7c]
00522f1e: MOVSS XMM6, dword ptr [ESP + 0x48]
00522f24: MOVSS XMM2, dword ptr [ESP + 0x18]
00522f2a: MOVSS XMM4, dword ptr [ESP + 0x1c]
00522f30: SUBSS XMM0, XMM1
00522f34: MOVSS dword ptr [ESP + 0x4c], XMM1
00522f3a: MOVSS dword ptr [ESP + 0x54], XMM0
00522f40: MOVSS XMM3, dword ptr [ESP + 0x20]
00522f46: MOVSS XMM5, dword ptr [ESP + 0x24]
00522f4c: MOVSS XMM0, dword ptr [0x00fab218]
00522f54: MOVSS XMM7, dword ptr [0x00f998f8]
00522f5c: MOVSS dword ptr [ESP + 0x28], XMM3
00522f62: MOVSS dword ptr [ESP + 0x2c], XMM2
00522f68: MOVSS dword ptr [ESP + 0x30], XMM5
00522f6e: MOVSS dword ptr [ESP + 0x34], XMM4
00522f74: CMP dword ptr [EBX], 0x9 ; Style9 shrinks outer rectangle by one before inner bounds; raw constants-1.0/+1.0 govern signs.
00522f77: JNZ 0x00522fa7
00522f79: SUBSS XMM3, XMM0
00522f7d: SUBSS XMM2, XMM0
00522f81: MOVAPS XMM0, XMM4
00522f84: SUBSS XMM0, XMM7
00522f88: SUBSS XMM5, XMM7
00522f8c: MOVAPS XMM4, XMM0
00522f8f: MOVSS dword ptr [ESP + 0x28], XMM3
00522f95: MOVSS dword ptr [ESP + 0x2c], XMM2
00522f9b: MOVSS dword ptr [ESP + 0x30], XMM5
00522fa1: MOVSS dword ptr [ESP + 0x34], XMM4
00522fa7: MOVSS XMM0, dword ptr [0x00f998f0]
00522faf: MOVAPS XMM7, XMM0
00522fb2: SUBSS XMM7, XMM6
00522fb6: MOVAPS XMM6, XMM0
00522fb9: SUBSS XMM6, XMM1
00522fbd: MOVAPS XMM1, XMM0
00522fc0: SUBSS XMM1, dword ptr [ESP + 0x50]
00522fc6: SUBSS XMM0, dword ptr [ESP + 0x54]
00522fcc: SUBSS XMM3, XMM7
00522fd0: SUBSS XMM2, XMM6
00522fd4: ADDSS XMM1, XMM5
00522fd8: ADDSS XMM0, XMM4
00522fdc: MOVSS dword ptr [ESP + 0x38], XMM3
00522fe2: MOVSS dword ptr [ESP + 0x3c], XMM2
00522fe8: MOVSS dword ptr [ESP + 0x40], XMM1
00522fee: MOVSS dword ptr [ESP + 0x44], XMM0
00522ff4: CMP dword ptr [EBX], 0xa ; Style10 shrinks the later inner outline rectangle by one; distinct from style9 outer adjustment.
00522ff7: MOVSS dword ptr [ESP + 0x58], XMM3
00522ffd: MOVSS dword ptr [ESP + 0x5c], XMM2
00523003: MOVSS dword ptr [ESP + 0x60], XMM1
00523009: MOVSS dword ptr [ESP + 0x64], XMM0
0052300f: JNZ 0x0052304f
00523011: MOVAPS XMM4, XMM3
00523014: MOVSS XMM3, dword ptr [0x00fab218]
0052301c: SUBSS XMM2, XMM3
00523020: MOVSS dword ptr [ESP + 0x5c], XMM2
00523026: MOVAPS XMM2, XMM1
00523029: MOVSS XMM1, dword ptr [0x00f998f8]
00523031: SUBSS XMM4, XMM3
00523035: SUBSS XMM2, XMM1
00523039: SUBSS XMM0, XMM1
0052303d: MOVSS dword ptr [ESP + 0x58], XMM4
00523043: MOVSS dword ptr [ESP + 0x60], XMM2
00523049: MOVSS dword ptr [ESP + 0x64], XMM0
0052304f: MOV EAX, dword ptr [EBP + 0x8]
00523052: TEST EAX, EAX
00523054: JZ 0x0052308b ; Nonzero contextword+8 emits optional fill BEFORE style dispatch; Hidden or invalid style still reaches earlier effects.
00523056: MOV EDX, dword ptr [ESI]
00523058: PUSH EAX
00523059: MOV EAX, dword ptr [EDX + 0x4]
0052305c: MOV ECX, ESI
0052305e: CALL EAX
00523060: FLD float ptr [ESP + 0x64]
00523064: MOV EDX, dword ptr [ESI]
00523066: MOV EAX, dword ptr [EDX + 0x38]
00523069: SUB ESP, 0x10
0052306c: FSTP float ptr [ESP + 0xc]
00523070: MOV ECX, ESI
00523072: FLD float ptr [ESP + 0x70]
00523076: FSTP float ptr [ESP + 0x8]
0052307a: FLD float ptr [ESP + 0x6c]
0052307e: FSTP float ptr [ESP + 0x4]
00523082: FLD float ptr [ESP + 0x68]
00523086: FSTP float ptr [ESP]
00523089: CALL EAX
0052308b: MOV EDI, dword ptr [EBX + 0x4] ; Color is selected-row DWORD+4; style presence was selected using firstDWORD only.
0052308e: FLD float ptr [0x00fab214]
00523094: PUSH ECX
00523095: MOV ECX, EDI
00523097: FSTP float ptr [ESP]
0052309a: AND ECX, 0xff000000
005230a0: PUSH ECX
005230a1: PUSH EDI
005230a2: CALL 0x0050f1e0 ; First of four50F1E0 color-helper calls: originalcolor,alpha-onlyword,F32(0.2); helper arithmetic separately unexpanded.
005230a7: FLD float ptr [0x00f9e500]
005230ad: ADD ESP, 0x8
005230b0: MOV EDX, EDI
005230b2: FSTP float ptr [ESP]
005230b5: AND EDX, 0xff000000
005230bb: PUSH EDX
005230bc: PUSH EDI
005230bd: MOV EBX, EAX
005230bf: CALL 0x0050f1e0
005230c4: FLD float ptr [0x00fab214]
005230ca: MOV dword ptr [ESP + 0x90], EAX
005230d1: FSTP float ptr [ESP + 0x8]
005230d5: ADD ESP, 0x8
005230d8: MOV EAX, EDI
005230da: OR EAX, 0xffffff
005230df: PUSH EAX
005230e0: PUSH EDI
005230e1: CALL 0x0050f1e0
005230e6: FLD float ptr [0x00f9e500]
005230ec: ADD ESP, 0x8
005230ef: MOV ECX, EDI
005230f1: FSTP float ptr [ESP]
005230f4: OR ECX, 0xffffff
005230fa: PUSH ECX
005230fb: PUSH EDI
005230fc: MOV dword ptr [ESP + 0x88], EAX
00523103: CALL 0x0050f1e0
00523108: MOV EDX, dword ptr [ESP + 0x1c]
0052310c: MOV EBP, EAX
0052310e: MOV EAX, dword ptr [EDX]
00523110: ADD ESP, 0xc
00523113: CMP EAX, 0xa
00523116: JA 0x005237c4 ; Unsigned style>10 returns through shared epilogue only after prior selection/fill/color-helper effects.
0052311c: JMP dword ptr [EAX*0x4 + 0x5237d0] ; 11DWORD table5237D0:0/2solid,1epilogue,3/4patterned,5inset,6outset,7/8twoband,9/10outline.
00523123: MOV EAX, dword ptr [ESI]
00523125: MOV EDX, dword ptr [EAX + 0x4]
00523128: PUSH EDI
00523129: MOV ECX, ESI
0052312b: CALL EDX
0052312d: FLD float ptr [ESP + 0x3c]
00523131: MOV EAX, dword ptr [ESI]
00523133: MOV EDX, dword ptr [EAX + 0x38]
00523136: SUB ESP, 0x10
00523139: FSTP float ptr [ESP + 0xc]
0052313d: MOV ECX, ESI
0052313f: FLD float ptr [ESP + 0x40]
00523143: FSTP float ptr [ESP + 0x8]
00523147: FLD float ptr [ESP + 0x3c]
0052314b: FSTP float ptr [ESP + 0x4]
0052314f: FLD float ptr [ESP + 0x38]
00523153: FSTP float ptr [ESP]
00523156: CALL EDX
00523158: FLD float ptr [ESP + 0x34]
0052315c: MOV EAX, dword ptr [ESI]
0052315e: MOV EDX, dword ptr [EAX + 0x38]
00523161: SUB ESP, 0x10
00523164: FSTP float ptr [ESP + 0xc]
00523168: MOV ECX, ESI
0052316a: FLD float ptr [ESP + 0x40]
0052316e: FSTP float ptr [ESP + 0x8]
00523172: FLD float ptr [ESP + 0x54]
00523176: FSTP float ptr [ESP + 0x4]
0052317a: FLD float ptr [ESP + 0x38]
0052317e: FSTP float ptr [ESP]
00523181: CALL EDX
00523183: FLD float ptr [ESP + 0x44]
00523187: MOV EAX, dword ptr [ESI]
00523189: MOV EDX, dword ptr [EAX + 0x38]
0052318c: SUB ESP, 0x10
0052318f: FSTP float ptr [ESP + 0xc]
00523193: MOV ECX, ESI
00523195: FLD float ptr [ESP + 0x48]
00523199: FSTP float ptr [ESP + 0x8]
0052319d: FLD float ptr [ESP + 0x4c]
005231a1: FSTP float ptr [ESP + 0x4]
005231a5: FLD float ptr [ESP + 0x38]
005231a9: FSTP float ptr [ESP]
005231ac: CALL EDX
005231ae: FLD float ptr [ESP + 0x44]
005231b2: MOV EAX, dword ptr [ESI]
005231b4: MOV EDX, dword ptr [EAX + 0x38]
005231b7: SUB ESP, 0x10
005231ba: FSTP float ptr [ESP + 0xc]
005231be: MOV ECX, ESI
005231c0: FLD float ptr [ESP + 0x40]
005231c4: FSTP float ptr [ESP + 0x8]
005231c8: FLD float ptr [ESP + 0x4c]
005231cc: FSTP float ptr [ESP + 0x4]
005231d0: FLD float ptr [ESP + 0x50]
005231d4: FSTP float ptr [ESP]
005231d7: CALL EDX
005231d9: POP EDI
005231da: POP ESI
005231db: POP EBP
005231dc: POP EBX
005231dd: ADD ESP, 0x68
005231e0: RET 0xc
005231e3: CMP EAX, 0x4
005231e6: MOVSS XMM0, dword ptr [0x00f998f8]
005231ee: MOVSS dword ptr [ESP + 0x84], XMM0
005231f7: JNZ 0x0052320a ; Style4 uses F32factor3; style3 retains factor1. Loop progress is not locally validated.
005231f9: MOVSS XMM0, dword ptr [0x00fa2b9c]
00523201: MOVSS dword ptr [ESP + 0x84], XMM0
0052320a: MOV EAX, dword ptr [ESI]
0052320c: MOV EDX, dword ptr [EAX + 0x4]
0052320f: PUSH EDI
00523210: MOV ECX, ESI
00523212: CALL EDX
00523214: MOVSS XMM3, dword ptr [ESP + 0x84]
0052321d: MOVSS XMM0, dword ptr [ESP + 0x28]
00523223: MOVSS XMM1, dword ptr [ESP + 0x30]
00523229: COMISS XMM1, XMM0
0052322c: MOVAPS XMM2, XMM3
0052322f: MULSS XMM2, dword ptr [ESP + 0x4c]
00523235: MOVSS dword ptr [ESP + 0x80], XMM2
0052323e: MOVSS dword ptr [ESP + 0x10], XMM0
00523244: JC 0x005232d9
0052324a: MOVAPS XMM3, XMM2
0052324d: MULSS XMM3, dword ptr [0x0103fd88]
00523255: MOVSS dword ptr [ESP + 0x7c], XMM3
0052325b: JMP 0x00523269
00523260: MOVSS XMM2, dword ptr [ESP + 0x80]
00523269: ADDSS XMM0, XMM2
0052326d: MOVSS dword ptr [ESP + 0x14], XMM0
00523273: ADDSS XMM0, XMM2
00523277: COMISS XMM0, XMM1
0052327a: JBE 0x00523282
0052327c: MOVSS dword ptr [ESP + 0x14], XMM1
00523282: FLD float ptr [ESP + 0x3c]
00523286: MOV EAX, dword ptr [ESI]
00523288: MOV EDX, dword ptr [EAX + 0x38]
0052328b: SUB ESP, 0x10
0052328e: FSTP float ptr [ESP + 0xc]
00523292: MOV ECX, ESI
00523294: FLD float ptr [ESP + 0x24]
00523298: FSTP float ptr [ESP + 0x8]
0052329c: FLD float ptr [ESP + 0x3c]
005232a0: FSTP float ptr [ESP + 0x4]
005232a4: FLD float ptr [ESP + 0x20]
005232a8: FSTP float ptr [ESP]
005232ab: CALL EDX
005232ad: MOVSS XMM0, dword ptr [ESP + 0x7c]
005232b3: ADDSS XMM0, dword ptr [ESP + 0x10]
005232b9: MOVSS XMM1, dword ptr [ESP + 0x30]
005232bf: COMISS XMM1, XMM0
005232c2: MOVSS dword ptr [ESP + 0x10], XMM0
005232c8: JNC 0x00523260
005232ca: MOVSS XMM0, dword ptr [ESP + 0x28]
005232d0: MOVSS XMM3, dword ptr [ESP + 0x84]
005232d9: COMISS XMM1, XMM0
005232dc: MOVAPS XMM2, XMM3
005232df: MULSS XMM2, dword ptr [ESP + 0x54]
005232e5: MOVSS dword ptr [ESP + 0x80], XMM2
005232ee: MOVSS dword ptr [ESP + 0x10], XMM0
005232f4: JC 0x00523383
005232fa: MOVAPS XMM3, XMM2
005232fd: MULSS XMM3, dword ptr [0x0103fd88]
00523305: MOVSS dword ptr [ESP + 0x7c], XMM3
0052330b: JMP 0x00523319
00523310: MOVSS XMM2, dword ptr [ESP + 0x80]
00523319: ADDSS XMM0, XMM2
0052331d: MOVSS dword ptr [ESP + 0x14], XMM0
00523323: ADDSS XMM0, XMM2
00523327: COMISS XMM0, XMM1
0052332a: JBE 0x00523332
0052332c: MOVSS dword ptr [ESP + 0x14], XMM1
00523332: FLD float ptr [ESP + 0x34]
00523336: MOV EAX, dword ptr [ESI]
00523338: MOV EDX, dword ptr [EAX + 0x38]
0052333b: SUB ESP, 0x10
0052333e: FSTP float ptr [ESP + 0xc]
00523342: MOV ECX, ESI
00523344: FLD float ptr [ESP + 0x24]
00523348: FSTP float ptr [ESP + 0x8]
0052334c: FLD float ptr [ESP + 0x54]
00523350: FSTP float ptr [ESP + 0x4]
00523354: FLD float ptr [ESP + 0x20]
00523358: FSTP float ptr [ESP]
0052335b: CALL EDX
0052335d: MOVSS XMM0, dword ptr [ESP + 0x7c]
00523363: ADDSS XMM0, dword ptr [ESP + 0x10]
00523369: MOVSS XMM1, dword ptr [ESP + 0x30]
0052336f: COMISS XMM1, XMM0
00523372: MOVSS dword ptr [ESP + 0x10], XMM0
00523378: JNC 0x00523310
0052337a: MOVSS XMM3, dword ptr [ESP + 0x84]
00523383: MOVSS XMM1, dword ptr [ESP + 0x44]
00523389: MOVAPS XMM2, XMM3
0052338c: MULSS XMM2, dword ptr [ESP + 0x48]
00523392: MOVAPS XMM0, XMM2
00523395: ADDSS XMM0, dword ptr [ESP + 0x3c]
0052339b: COMISS XMM1, XMM0
0052339e: MOVSS dword ptr [ESP + 0x80], XMM2
005233a7: MOVSS dword ptr [ESP + 0x10], XMM0
005233ad: JC 0x00523443
005233b3: MOVAPS XMM3, XMM2
005233b6: MULSS XMM3, dword ptr [0x0103fd88]
005233be: MOVSS dword ptr [ESP + 0x7c], XMM3
005233c4: JMP 0x005233d9
005233d0: MOVSS XMM2, dword ptr [ESP + 0x80]
005233d9: ADDSS XMM0, XMM2
005233dd: MOVSS dword ptr [ESP + 0x14], XMM0
005233e3: ADDSS XMM0, XMM2
005233e7: COMISS XMM0, XMM1
005233ea: JBE 0x005233f2
005233ec: MOVSS dword ptr [ESP + 0x14], XMM1
005233f2: FLD float ptr [ESP + 0x14]
005233f6: MOV EAX, dword ptr [ESI]
005233f8: MOV EDX, dword ptr [EAX + 0x38]
005233fb: SUB ESP, 0x10
005233fe: FSTP float ptr [ESP + 0xc]
00523402: MOV ECX, ESI
00523404: FLD float ptr [ESP + 0x48]
00523408: FSTP float ptr [ESP + 0x8]
0052340c: FLD float ptr [ESP + 0x20]
00523410: FSTP float ptr [ESP + 0x4]
00523414: FLD float ptr [ESP + 0x38]
00523418: FSTP float ptr [ESP]
0052341b: CALL EDX
0052341d: MOVSS XMM0, dword ptr [ESP + 0x7c]
00523423: ADDSS XMM0, dword ptr [ESP + 0x10]
00523429: MOVSS XMM1, dword ptr [ESP + 0x44]
0052342f: COMISS XMM1, XMM0
00523432: MOVSS dword ptr [ESP + 0x10], XMM0
00523438: JNC 0x005233d0
0052343a: MOVSS XMM3, dword ptr [ESP + 0x84]
00523443: MULSS XMM3, dword ptr [ESP + 0x50]
00523449: MOVAPS XMM0, XMM3
0052344c: ADDSS XMM0, dword ptr [ESP + 0x3c]
00523452: COMISS XMM1, XMM0
00523455: MOVSS dword ptr [ESP + 0x80], XMM3
0052345e: MOVSS dword ptr [ESP + 0x84], XMM0
00523467: JC 0x005237c4
0052346d: MOVAPS XMM2, XMM3
00523470: MULSS XMM2, dword ptr [0x0103fd88]
00523478: MOVSS dword ptr [ESP + 0x7c], XMM2
0052347e: JMP 0x00523489
00523480: MOVSS XMM3, dword ptr [ESP + 0x80]
00523489: ADDSS XMM0, XMM3
0052348d: MOVSS dword ptr [ESP + 0x14], XMM0
00523493: ADDSS XMM0, XMM3
00523497: COMISS XMM0, XMM1
0052349a: JBE 0x005234a2
0052349c: MOVSS dword ptr [ESP + 0x14], XMM1
005234a2: FLD float ptr [ESP + 0x14]
005234a6: MOV EAX, dword ptr [ESI]
005234a8: MOV EDX, dword ptr [EAX + 0x38]
005234ab: SUB ESP, 0x10
005234ae: FSTP float ptr [ESP + 0xc]
005234b2: MOV ECX, ESI
005234b4: FLD float ptr [ESP + 0x40]
005234b8: FSTP float ptr [ESP + 0x8]
005234bc: FLD float ptr [ESP + 0x94]
005234c3: FSTP float ptr [ESP + 0x4]
005234c7: FLD float ptr [ESP + 0x50]
005234cb: FSTP float ptr [ESP]
005234ce: CALL EDX
005234d0: MOVSS XMM0, dword ptr [ESP + 0x7c]
005234d6: ADDSS XMM0, dword ptr [ESP + 0x84]
005234df: MOVSS XMM1, dword ptr [ESP + 0x44]
005234e5: COMISS XMM1, XMM0
005234e8: MOVSS dword ptr [ESP + 0x84], XMM0
005234f1: JNC 0x00523480
005234f3: POP EDI
005234f4: POP ESI
005234f5: POP EBP
005234f6: POP EBX
005234f7: ADD ESP, 0x68
005234fa: RET 0xc
005234fd: MOV EAX, dword ptr [ESP + 0x84]
00523504: MOV dword ptr [ESP + 0x68], EAX
00523508: MOV dword ptr [ESP + 0x6c], EAX
0052350c: MOV EAX, dword ptr [ESP + 0x7c]
00523510: MOV dword ptr [ESP + 0x70], EAX
00523514: MOV dword ptr [ESP + 0x74], EAX
00523518: MOV EAX, dword ptr [ESI]
0052351a: MOV EDX, dword ptr [EAX + 0x4]
0052351d: PUSH -0x1
0052351f: MOV ECX, ESI
00523521: MOV dword ptr [ESP + 0x5c], EBX
00523525: MOV dword ptr [ESP + 0x60], EBX
00523529: MOV dword ptr [ESP + 0x64], EBP
0052352d: MOV dword ptr [ESP + 0x68], EBP
00523531: CALL EDX
00523533: LEA EAX, [ESP + 0x68]
00523537: PUSH EAX
00523538: LEA ECX, [ESP + 0x5c]
0052353c: PUSH ECX
0052353d: LEA EDX, [ESP + 0x40]
00523541: PUSH EDX
00523542: LEA EAX, [ESP + 0x34]
00523546: PUSH EAX
00523547: PUSH ESI
00523548: CALL 0x005112f0
0052354d: ADD ESP, 0x14
00523550: POP EDI
00523551: POP ESI
00523552: POP EBP
00523553: POP EBX
00523554: ADD ESP, 0x68
00523557: RET 0xc
0052355a: MOV EAX, dword ptr [ESP + 0x7c]
0052355e: MOV EDX, dword ptr [ESI]
00523560: MOV dword ptr [ESP + 0x58], EAX
00523564: MOV dword ptr [ESP + 0x5c], EAX
00523568: MOV EAX, dword ptr [ESP + 0x84]
0052356f: MOV dword ptr [ESP + 0x60], EAX
00523573: MOV dword ptr [ESP + 0x64], EAX
00523577: MOV EAX, dword ptr [EDX + 0x4]
0052357a: PUSH -0x1
0052357c: MOV ECX, ESI
0052357e: MOV dword ptr [ESP + 0x6c], EBP
00523582: MOV dword ptr [ESP + 0x70], EBP
00523586: MOV dword ptr [ESP + 0x74], EBX
0052358a: MOV dword ptr [ESP + 0x78], EBX
0052358e: CALL EAX
00523590: LEA ECX, [ESP + 0x68]
00523594: PUSH ECX
00523595: LEA EDX, [ESP + 0x5c]
00523599: PUSH EDX
0052359a: LEA EAX, [ESP + 0x40]
0052359e: PUSH EAX
0052359f: LEA ECX, [ESP + 0x34]
005235a3: PUSH ECX
005235a4: PUSH ESI
005235a5: CALL 0x005112f0
005235aa: ADD ESP, 0x14
005235ad: POP EDI
005235ae: POP ESI
005235af: POP EBP
005235b0: POP EBX
005235b1: ADD ESP, 0x68
005235b4: RET 0xc
005235b7: MOV EAX, dword ptr [ESP + 0x84]
005235be: MOV EDX, dword ptr [ESI]
005235c0: MOV dword ptr [ESP + 0x68], EAX
005235c4: MOV dword ptr [ESP + 0x6c], EAX
005235c8: MOV EAX, dword ptr [ESP + 0x7c]
005235cc: MOV dword ptr [ESP + 0x70], EAX
005235d0: MOV dword ptr [ESP + 0x74], EAX
005235d4: MOV EAX, dword ptr [EDX + 0x4]
005235d7: PUSH -0x1
005235d9: MOV ECX, ESI
005235db: MOV dword ptr [ESP + 0x5c], EBX
005235df: MOV dword ptr [ESP + 0x60], EBX
005235e3: MOV dword ptr [ESP + 0x64], EBP
005235e7: MOV dword ptr [ESP + 0x68], EBP
005235eb: CALL EAX
005235ed: LEA ECX, [ESP + 0x68]
005235f1: PUSH ECX
005235f2: LEA EDX, [ESP + 0x5c]
005235f6: PUSH EDX
005235f7: LEA EAX, [ESP + 0x40]
005235fb: PUSH EAX
005235fc: LEA ECX, [ESP + 0x34]
00523600: PUSH ECX
00523601: PUSH ESI
00523602: CALL 0x005112f0
00523607: MOV EAX, dword ptr [ESP + 0x28]
0052360b: MOV ECX, dword ptr [EAX + 0x5c] ; Outline reads receiver+5C via saved complete receiver; decompiler piVar1[0x17] must not imply selectedrow+5C.
0052360e: MOV EDX, dword ptr [ESI]
00523610: MOV EDX, dword ptr [EDX + 0x4]
00523613: ADD ESP, 0x14
00523616: PUSH ECX
00523617: MOV ECX, ESI
00523619: CALL EDX
0052361b: FLD1
0052361d: PUSH ECX
0052361e: FSTP float ptr [ESP]
00523621: LEA EAX, [ESP + 0x3c]
00523625: PUSH EAX
00523626: MOV ECX, ESI
00523628: CALL 0x00522cf0 ; Outline helper522CF0 receives computed inner rectangle and Float32 width1.0; builder backend remains separate.
0052362d: POP EDI
0052362e: POP ESI
0052362f: POP EBP
00523630: POP EBX
00523631: ADD ESP, 0x68
00523634: RET 0xc
00523637: MOV EAX, dword ptr [ESP + 0x7c]
0052363b: MOV EDX, dword ptr [ESI]
0052363d: MOV dword ptr [ESP + 0x58], EAX
00523641: MOV dword ptr [ESP + 0x5c], EAX
00523645: MOV EAX, dword ptr [ESP + 0x84]
0052364c: MOV dword ptr [ESP + 0x60], EAX
00523650: MOV dword ptr [ESP + 0x64], EAX
00523654: MOV EAX, dword ptr [EDX + 0x4]
00523657: PUSH -0x1
00523659: MOV ECX, ESI
0052365b: MOV dword ptr [ESP + 0x6c], EBP
0052365f: MOV dword ptr [ESP + 0x70], EBP
00523663: MOV dword ptr [ESP + 0x74], EBX
00523667: MOV dword ptr [ESP + 0x78], EBX
0052366b: CALL EAX
0052366d: LEA ECX, [ESP + 0x68]
00523671: PUSH ECX
00523672: LEA EDX, [ESP + 0x5c]
00523676: PUSH EDX
00523677: LEA EAX, [ESP + 0x40]
0052367b: PUSH EAX
0052367c: LEA ECX, [ESP + 0x34]
00523680: PUSH ECX
00523681: PUSH ESI
00523682: CALL 0x005112f0
00523687: MOV EAX, dword ptr [ESP + 0x28]
0052368b: MOV ECX, dword ptr [EAX + 0x5c] ; Other outline style also reads complete receiver+5C before one-unit outline helper.
0052368e: MOV EDX, dword ptr [ESI]
00523690: MOV EDX, dword ptr [EDX + 0x4]
00523693: ADD ESP, 0x14
00523696: PUSH ECX
00523697: MOV ECX, ESI
00523699: CALL EDX
0052369b: FLD1
0052369d: MOV EAX, dword ptr [ESP + 0x80]
005236a4: PUSH ECX
005236a5: FSTP float ptr [ESP]
005236a8: PUSH EAX
005236a9: MOV ECX, ESI
005236ab: CALL 0x00522cf0
005236b0: POP EDI
005236b1: POP ESI
005236b2: POP EBP
005236b3: POP EBX
005236b4: ADD ESP, 0x68
005236b7: RET 0xc
005236ba: MOVSS XMM0, dword ptr [0x00f9b5b4]
005236c2: MOVSS XMM1, dword ptr [ESP + 0x38]
005236c8: ADDSS XMM1, dword ptr [ESP + 0x28]
005236ce: MOV EDX, dword ptr [ESI]
005236d0: MOV EAX, dword ptr [EDX + 0x4]
005236d3: MULSS XMM1, XMM0
005236d7: MOVSS dword ptr [ESP + 0x68], XMM1
005236dd: MOVSS XMM1, dword ptr [ESP + 0x40]
005236e3: ADDSS XMM1, dword ptr [ESP + 0x30]
005236e9: MULSS XMM1, XMM0
005236ed: MOVSS dword ptr [ESP + 0x70], XMM1
005236f3: MOVSS XMM1, dword ptr [ESP + 0x2c]
005236f9: ADDSS XMM1, dword ptr [ESP + 0x3c]
005236ff: MULSS XMM1, XMM0
00523703: MOVSS dword ptr [ESP + 0x6c], XMM1
00523709: MOVSS XMM1, dword ptr [ESP + 0x44]
0052370f: ADDSS XMM1, dword ptr [ESP + 0x34]
00523715: MULSS XMM1, XMM0
00523719: PUSH -0x1
0052371b: MOV ECX, ESI
0052371d: MOVSS dword ptr [ESP + 0x78], XMM1
00523723: CALL EAX
00523725: MOV ECX, dword ptr [ESP + 0x10]
00523729: CMP dword ptr [ECX], 0x8 ; Style8 chooses alternate ordering of paired color arrays for the two helper5112F0 calls.
0052372c: MOV dword ptr [ESP + 0x58], EBX
00523730: MOV dword ptr [ESP + 0x5c], EBX
00523734: MOV dword ptr [ESP + 0x60], EBP
00523738: MOV dword ptr [ESP + 0x64], EBP
0052373c: MOV dword ptr [ESP + 0x48], EBP
00523740: MOV dword ptr [ESP + 0x4c], EBP
00523744: MOV dword ptr [ESP + 0x50], EBX
00523748: MOV dword ptr [ESP + 0x54], EBX
0052374c: JNZ 0x0052378e
0052374e: LEA EDX, [ESP + 0x48]
00523752: PUSH EDX
00523753: MOV EAX, EDX
00523755: PUSH EAX
00523756: LEA ECX, [ESP + 0x70]
0052375a: PUSH ECX
0052375b: LEA EDX, [ESP + 0x34]
0052375f: PUSH EDX
00523760: PUSH ESI
00523761: CALL 0x005112f0
00523766: LEA EAX, [ESP + 0x6c]
0052376a: PUSH EAX
0052376b: MOV ECX, EAX
0052376d: PUSH ECX
0052376e: LEA EDX, [ESP + 0x54]
00523772: PUSH EDX
00523773: LEA EAX, [ESP + 0x88]
0052377a: PUSH EAX
0052377b: PUSH ESI
0052377c: CALL 0x005112f0
00523781: ADD ESP, 0x28
00523784: POP EDI
00523785: POP ESI
00523786: POP EBP
00523787: POP EBX
00523788: ADD ESP, 0x68
0052378b: RET 0xc
0052378e: LEA ECX, [ESP + 0x58]
00523792: PUSH ECX
00523793: MOV EDX, ECX
00523795: PUSH EDX
00523796: LEA EAX, [ESP + 0x70]
0052379a: PUSH EAX
0052379b: LEA ECX, [ESP + 0x34]
0052379f: PUSH ECX
005237a0: PUSH ESI
005237a1: CALL 0x005112f0
005237a6: LEA EDX, [ESP + 0x5c]
005237aa: PUSH EDX
005237ab: MOV EAX, EDX
005237ad: PUSH EAX
005237ae: LEA ECX, [ESP + 0x54]
005237b2: PUSH ECX
005237b3: LEA EDX, [ESP + 0x88]
005237ba: PUSH EDX
005237bb: PUSH ESI
005237bc: CALL 0x005112f0
005237c1: ADD ESP, 0x28
005237c4: POP EDI
005237c5: POP ESI
005237c6: POP EBP
005237c7: POP EBX
005237c8: ADD ESP, 0x68
005237cb: RET 0xc ; One of eight RET0C exits: consume three physical stackarguments; no stable EAX semantic return proved.

Total instructions: 689