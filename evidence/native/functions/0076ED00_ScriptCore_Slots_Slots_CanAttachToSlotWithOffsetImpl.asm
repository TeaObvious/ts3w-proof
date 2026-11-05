# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ed00 (ScriptCore.Slots::Slots_CanAttachToSlotWithOffsetImpl)
Paired Ghidra pseudocode: 0076ED00_ScriptCore_Slots_Slots_CanAttachToSlotWithOffsetImpl.c
Window: [0x0076ed00, 0x0076f020) (800 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076f020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ed00: 55 8b ec 83 e4 f0 81 ec 38 01 00 00 8b 45 28 f3
0076ed10: 0f 10 48 08 f3 0f 11 4c 24 10 f3 0f 10 48 04 f3
0076ed20: 0f 11 4c 24 0c f3 0f 10 4d 2c 0f c6 c9 00 0f 29
0076ed30: 4c 24 28 d9 44 24 28 f3 0f 10 00 d9 fe f3 0f 11
0076ed40: 44 24 14 f3 0f 11 44 24 08 0f 28 44 24 08 0f 29
0076ed50: 84 24 88 00 00 00 0f 29 4c 24 28 f3 0f 10 0d f8
0076ed60: 98 f9 00 0f c6 c9 00 56 57 d9 5c 24 2c d9 44 24
0076ed70: 30 d9 ff f3 0f 10 44 24 2c 0f c6 c0 00 d9 5c 24
0076ed80: 2c f3 0f 10 74 24 2c 0f c6 f6 00 0f 5c ce 0f 28
0076ed90: f9 0f 28 8c 24 90 00 00 00 0f 28 df 0f 28 ef 0f
0076eda0: 28 d1 0f c6 d1 00 0f 28 e1 0f c6 e1 55 0f c6 c9
0076edb0: aa 0f 59 f9 0f 29 7c 24 10 0f 28 f8 0f 59 fa 0f
0076edc0: 29 7c 24 40 0f 28 f8 0f 59 c1 0f 29 44 24 60 0f
0076edd0: 57 c0 0f 29 44 24 50 0f 29 84 24 80 00 00 00 0f
0076ede0: 59 fc 0f 29 7c 24 30 0f 28 7c 24 10 0f 28 c7 0f
0076edf0: 59 c1 0f 58 c6 0f 29 84 24 a0 00 00 00 0f 28 c7
0076ee00: 0f 28 7c 24 60 0f 59 c4 0f 5c 44 24 40 0f 29 84
0076ee10: 24 c0 00 00 00 0f 28 44 24 10 0f 59 c2 0f 58 44
0076ee20: 24 30 0f 29 84 24 e0 00 00 00 0f 28 44 24 50 0f
0076ee30: 29 44 24 70 0f 59 ec 0f 28 c5 0f 59 c1 0f 58 44
0076ee40: 24 40 0f 29 84 24 d0 00 00 00 0f 28 c5 0f 59 c4
0076ee50: 0f 58 c6 0f 59 ea 0f 29 84 24 b0 00 00 00 0f 28
0076ee60: 44 24 50 0f 5c ef 0f 59 da 0f 29 ac 24 f0 00 00
0076ee70: 00 0f 29 44 24 60 0f 28 c3 0f 59 c1 0f 5c 44 24
0076ee80: 30 0f 29 44 24 30 0f 28 c3 0f 59 c4 0f 58 c7 0f
0076ee90: 29 44 24 50 f3 0f 10 44 24 60 f3 0f 11 44 24 1c
0076eea0: f3 0f 10 44 24 30 f3 0f 11 44 24 18 f3 0f 10 44
0076eeb0: 24 50 f3 0f 11 44 24 14 8b 45 24 0f 59 da 0f 58
0076eec0: de 0f 29 5c 24 40 f3 0f 10 44 24 40 f3 0f 11 44
0076eed0: 24 10 0f 28 44 24 10 0f 29 84 24 00 01 00 00 f3
0076eee0: 0f 10 44 24 70 f3 0f 11 44 24 1c f3 0f 10 84 24
0076eef0: d0 00 00 00 f3 0f 11 44 24 18 f3 0f 10 84 24 b0
0076ef00: 00 00 00 f3 0f 11 44 24 14 f3 0f 10 84 24 f0 00
0076ef10: 00 00 f3 0f 11 44 24 10 0f 28 44 24 10 0f 29 84
0076ef20: 24 10 01 00 00 f3 0f 10 84 24 80 00 00 00 f3 0f
0076ef30: 11 44 24 1c f3 0f 10 84 24 a0 00 00 00 f3 0f 11
0076ef40: 44 24 18 f3 0f 10 84 24 c0 00 00 00 f3 0f 11 44
0076ef50: 24 14 f3 0f 10 84 24 e0 00 00 00 f3 0f 11 44 24
0076ef60: 10 0f 28 44 24 10 0f 29 84 24 20 01 00 00 f3 0f
0076ef70: 10 05 f8 98 f9 00 f3 0f 11 44 24 1c f3 0f 10 40
0076ef80: 08 f3 0f 11 44 24 18 f3 0f 10 40 04 f3 0f 11 44
0076ef90: 24 14 f3 0f 10 00 f3 0f 11 44 24 10 0f 28 44 24
0076efa0: 10 0f 29 84 24 30 01 00 00 e8 c2 85 1c 00 8b 4d
0076efb0: 08 8b f8 8b 45 0c 50 51 8b cf e8 c1 8f 1c 00 8b
0076efc0: f0 85 f6 74 12 8b 15 58 a1 1e 01 52 8b ce e8 8d
0076efd0: 52 1c 00 85 c0 75 0b b8 e9 03 00 00 5f 5e 8b e5
0076efe0: 5d c3 8b 45 14 8b 4d 10 50 51 8b cf e8 8f 8f 1c
0076eff0: 00 85 c0 75 0b b8 ea 03 00 00 5f 5e 8b e5 5d c3
0076f000: 8b 4d 18 6a 00 8d 94 24 04 01 00 00 52 51 50 56
0076f010: e8 0b 46 3d 00 83 c4 14 5f 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
0076ed00 <.text+0x36dd00>:
  76ed00:	55                                              	push   ebp
  76ed01:	8b ec                                           	mov    ebp,esp
  76ed03:	83 e4 f0                                        	and    esp,0xfffffff0
  76ed06:	81 ec 38 01 00 00                               	sub    esp,0x138
  76ed0c:	8b 45 28                                        	mov    eax,DWORD PTR [ebp+0x28]
  76ed0f:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
  76ed14:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  76ed1a:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  76ed1f:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  76ed25:	f3 0f 10 4d 2c                                  	movss  xmm1,DWORD PTR [ebp+0x2c]
  76ed2a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  76ed2e:	0f 29 4c 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm1
  76ed33:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  76ed37:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  76ed3b:	d9 fe                                           	fsin
  76ed3d:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76ed43:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  76ed49:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
  76ed4e:	0f 29 84 24 88 00 00 00                         	movaps XMMWORD PTR [esp+0x88],xmm0
  76ed56:	0f 29 4c 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm1
  76ed5b:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  76ed63:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  76ed67:	56                                              	push   esi
  76ed68:	57                                              	push   edi
  76ed69:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
  76ed6d:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  76ed71:	d9 ff                                           	fcos
  76ed73:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
  76ed79:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  76ed7d:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
  76ed81:	f3 0f 10 74 24 2c                               	movss  xmm6,DWORD PTR [esp+0x2c]
  76ed87:	0f c6 f6 00                                     	shufps xmm6,xmm6,0x0
  76ed8b:	0f 5c ce                                        	subps  xmm1,xmm6
  76ed8e:	0f 28 f9                                        	movaps xmm7,xmm1
  76ed91:	0f 28 8c 24 90 00 00 00                         	movaps xmm1,XMMWORD PTR [esp+0x90]
  76ed99:	0f 28 df                                        	movaps xmm3,xmm7
  76ed9c:	0f 28 ef                                        	movaps xmm5,xmm7
  76ed9f:	0f 28 d1                                        	movaps xmm2,xmm1
  76eda2:	0f c6 d1 00                                     	shufps xmm2,xmm1,0x0
  76eda6:	0f 28 e1                                        	movaps xmm4,xmm1
  76eda9:	0f c6 e1 55                                     	shufps xmm4,xmm1,0x55
  76edad:	0f c6 c9 aa                                     	shufps xmm1,xmm1,0xaa
  76edb1:	0f 59 f9                                        	mulps  xmm7,xmm1
  76edb4:	0f 29 7c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm7
  76edb9:	0f 28 f8                                        	movaps xmm7,xmm0
  76edbc:	0f 59 fa                                        	mulps  xmm7,xmm2
  76edbf:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm7
  76edc4:	0f 28 f8                                        	movaps xmm7,xmm0
  76edc7:	0f 59 c1                                        	mulps  xmm0,xmm1
  76edca:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  76edcf:	0f 57 c0                                        	xorps  xmm0,xmm0
  76edd2:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  76edd7:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  76eddf:	0f 59 fc                                        	mulps  xmm7,xmm4
  76ede2:	0f 29 7c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm7
  76ede7:	0f 28 7c 24 10                                  	movaps xmm7,XMMWORD PTR [esp+0x10]
  76edec:	0f 28 c7                                        	movaps xmm0,xmm7
  76edef:	0f 59 c1                                        	mulps  xmm0,xmm1
  76edf2:	0f 58 c6                                        	addps  xmm0,xmm6
  76edf5:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
  76edfd:	0f 28 c7                                        	movaps xmm0,xmm7
  76ee00:	0f 28 7c 24 60                                  	movaps xmm7,XMMWORD PTR [esp+0x60]
  76ee05:	0f 59 c4                                        	mulps  xmm0,xmm4
  76ee08:	0f 5c 44 24 40                                  	subps  xmm0,XMMWORD PTR [esp+0x40]
  76ee0d:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  76ee15:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76ee1a:	0f 59 c2                                        	mulps  xmm0,xmm2
  76ee1d:	0f 58 44 24 30                                  	addps  xmm0,XMMWORD PTR [esp+0x30]
  76ee22:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  76ee2a:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  76ee2f:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  76ee34:	0f 59 ec                                        	mulps  xmm5,xmm4
  76ee37:	0f 28 c5                                        	movaps xmm0,xmm5
  76ee3a:	0f 59 c1                                        	mulps  xmm0,xmm1
  76ee3d:	0f 58 44 24 40                                  	addps  xmm0,XMMWORD PTR [esp+0x40]
  76ee42:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
  76ee4a:	0f 28 c5                                        	movaps xmm0,xmm5
  76ee4d:	0f 59 c4                                        	mulps  xmm0,xmm4
  76ee50:	0f 58 c6                                        	addps  xmm0,xmm6
  76ee53:	0f 59 ea                                        	mulps  xmm5,xmm2
  76ee56:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
  76ee5e:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  76ee63:	0f 5c ef                                        	subps  xmm5,xmm7
  76ee66:	0f 59 da                                        	mulps  xmm3,xmm2
  76ee69:	0f 29 ac 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm5
  76ee71:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  76ee76:	0f 28 c3                                        	movaps xmm0,xmm3
  76ee79:	0f 59 c1                                        	mulps  xmm0,xmm1
  76ee7c:	0f 5c 44 24 30                                  	subps  xmm0,XMMWORD PTR [esp+0x30]
  76ee81:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  76ee86:	0f 28 c3                                        	movaps xmm0,xmm3
  76ee89:	0f 59 c4                                        	mulps  xmm0,xmm4
  76ee8c:	0f 58 c7                                        	addps  xmm0,xmm7
  76ee8f:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  76ee94:	f3 0f 10 44 24 60                               	movss  xmm0,DWORD PTR [esp+0x60]
  76ee9a:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76eea0:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  76eea6:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76eeac:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  76eeb2:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76eeb8:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  76eebb:	0f 59 da                                        	mulps  xmm3,xmm2
  76eebe:	0f 58 de                                        	addps  xmm3,xmm6
  76eec1:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
  76eec6:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
  76eecc:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76eed2:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76eed7:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
  76eedf:	f3 0f 10 44 24 70                               	movss  xmm0,DWORD PTR [esp+0x70]
  76eee5:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76eeeb:	f3 0f 10 84 24 d0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xd0]
  76eef4:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76eefa:	f3 0f 10 84 24 b0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xb0]
  76ef03:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76ef09:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xf0]
  76ef12:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76ef18:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76ef1d:	0f 29 84 24 10 01 00 00                         	movaps XMMWORD PTR [esp+0x110],xmm0
  76ef25:	f3 0f 10 84 24 80 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x80]
  76ef2e:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76ef34:	f3 0f 10 84 24 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa0]
  76ef3d:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76ef43:	f3 0f 10 84 24 c0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xc0]
  76ef4c:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76ef52:	f3 0f 10 84 24 e0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xe0]
  76ef5b:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76ef61:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76ef66:	0f 29 84 24 20 01 00 00                         	movaps XMMWORD PTR [esp+0x120],xmm0
  76ef6e:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  76ef76:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76ef7c:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
  76ef81:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  76ef87:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
  76ef8c:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  76ef92:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  76ef96:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76ef9c:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  76efa1:	0f 29 84 24 30 01 00 00                         	movaps XMMWORD PTR [esp+0x130],xmm0
  76efa9:	e8 c2 85 1c 00                                  	call   0x937570
  76efae:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  76efb1:	8b f8                                           	mov    edi,eax
  76efb3:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  76efb6:	50                                              	push   eax
  76efb7:	51                                              	push   ecx
  76efb8:	8b cf                                           	mov    ecx,edi
  76efba:	e8 c1 8f 1c 00                                  	call   0x937f80
  76efbf:	8b f0                                           	mov    esi,eax
  76efc1:	85 f6                                           	test   esi,esi
  76efc3:	74 12                                           	je     0x76efd7
  76efc5:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76efcb:	52                                              	push   edx
  76efcc:	8b ce                                           	mov    ecx,esi
  76efce:	e8 8d 52 1c 00                                  	call   0x934260
  76efd3:	85 c0                                           	test   eax,eax
  76efd5:	75 0b                                           	jne    0x76efe2
  76efd7:	b8 e9 03 00 00                                  	mov    eax,0x3e9
  76efdc:	5f                                              	pop    edi
  76efdd:	5e                                              	pop    esi
  76efde:	8b e5                                           	mov    esp,ebp
  76efe0:	5d                                              	pop    ebp
  76efe1:	c3                                              	ret
  76efe2:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  76efe5:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  76efe8:	50                                              	push   eax
  76efe9:	51                                              	push   ecx
  76efea:	8b cf                                           	mov    ecx,edi
  76efec:	e8 8f 8f 1c 00                                  	call   0x937f80
  76eff1:	85 c0                                           	test   eax,eax
  76eff3:	75 0b                                           	jne    0x76f000
  76eff5:	b8 ea 03 00 00                                  	mov    eax,0x3ea
  76effa:	5f                                              	pop    edi
  76effb:	5e                                              	pop    esi
  76effc:	8b e5                                           	mov    esp,ebp
  76effe:	5d                                              	pop    ebp
  76efff:	c3                                              	ret
  76f000:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  76f003:	6a 00                                           	push   0x0
  76f005:	8d 94 24 04 01 00 00                            	lea    edx,[esp+0x104]
  76f00c:	52                                              	push   edx
  76f00d:	51                                              	push   ecx
  76f00e:	50                                              	push   eax
  76f00f:	56                                              	push   esi
  76f010:	e8 0b 46 3d 00                                  	call   0xb43620
  76f015:	83 c4 14                                        	add    esp,0x14
  76f018:	5f                                              	pop    edi
  76f019:	5e                                              	pop    esi
  76f01a:	8b e5                                           	mov    esp,ebp
  76f01c:	5d                                              	pop    ebp
  76f01d:	c3                                              	ret
  76f01e:	cc                                              	int3
  76f01f:	cc                                              	int3
