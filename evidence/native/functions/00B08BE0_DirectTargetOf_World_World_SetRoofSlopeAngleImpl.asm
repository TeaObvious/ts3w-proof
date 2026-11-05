# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00b08be0 (DirectTargetOf_World_World_SetRoofSlopeAngleImpl)
Paired Ghidra pseudocode: 00B08BE0_DirectTargetOf_World_World_SetRoofSlopeAngleImpl.c
Window: [0x00b08be0, 0x00b08cc0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00b08cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00b08be0: 56 8b 35 c4 db 1e 01 85 f6 0f 84 c1 00 00 00 57
00b08bf0: 6a 00 8b ce e8 67 69 15 00 52 50 8b ce e8 0e 9c
00b08c00: 15 00 8b f8 85 ff 0f 84 a3 00 00 00 8b b7 ac 02
00b08c10: 00 00 85 f6 0f 84 95 00 00 00 f3 0f 2a 44 24 0c
00b08c20: 51 f3 0f 11 04 24 e8 05 9a ff ff d8 0d ac b7 06
00b08c30: 01 8b ce d9 f2 dd d8 d8 0d b4 b5 f9 00 d9 1c 24
00b08c40: e8 1b 1a 09 00 6a 18 e8 04 65 fd ff 83 c4 04 85
00b08c50: c0 74 58 c7 00 8c 5f 06 01 33 c9 8d 50 04 87 0a
00b08c60: c7 00 8c 5f 06 01 8b 10 8b f0 8b c8 8b 42 04 ff
00b08c70: d0 8b 4f 48 89 4e 08 8b 57 4c 89 56 0c c7 46 10
00b08c80: 02 00 00 00 e8 67 38 94 ff 85 c0 74 13 8b 10 6a
00b08c90: 00 6a 00 56 8b c8 8b 42 1c 68 aa 30 e1 06 ff d0
00b08ca0: 8b 16 8b 42 08 5f 8b ce 5e ff e0 33 f6 eb c2 5f
00b08cb0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00b08be0 <.text+0x707be0>:
  b08be0:	56                                              	push   esi
  b08be1:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  b08be7:	85 f6                                           	test   esi,esi
  b08be9:	0f 84 c1 00 00 00                               	je     0xb08cb0
  b08bef:	57                                              	push   edi
  b08bf0:	6a 00                                           	push   0x0
  b08bf2:	8b ce                                           	mov    ecx,esi
  b08bf4:	e8 67 69 15 00                                  	call   0xc5f560
  b08bf9:	52                                              	push   edx
  b08bfa:	50                                              	push   eax
  b08bfb:	8b ce                                           	mov    ecx,esi
  b08bfd:	e8 0e 9c 15 00                                  	call   0xc62810
  b08c02:	8b f8                                           	mov    edi,eax
  b08c04:	85 ff                                           	test   edi,edi
  b08c06:	0f 84 a3 00 00 00                               	je     0xb08caf
  b08c0c:	8b b7 ac 02 00 00                               	mov    esi,DWORD PTR [edi+0x2ac]
  b08c12:	85 f6                                           	test   esi,esi
  b08c14:	0f 84 95 00 00 00                               	je     0xb08caf
  b08c1a:	f3 0f 2a 44 24 0c                               	cvtsi2ss xmm0,DWORD PTR [esp+0xc]
  b08c20:	51                                              	push   ecx
  b08c21:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  b08c26:	e8 05 9a ff ff                                  	call   0xb02630
  b08c2b:	d8 0d ac b7 06 01                               	fmul   DWORD PTR ds:0x106b7ac
  b08c31:	8b ce                                           	mov    ecx,esi
  b08c33:	d9 f2                                           	fptan
  b08c35:	dd d8                                           	fstp   st(0)
  b08c37:	d8 0d b4 b5 f9 00                               	fmul   DWORD PTR ds:0xf9b5b4
  b08c3d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  b08c40:	e8 1b 1a 09 00                                  	call   0xb9a660
  b08c45:	6a 18                                           	push   0x18
  b08c47:	e8 04 65 fd ff                                  	call   0xadf150
  b08c4c:	83 c4 04                                        	add    esp,0x4
  b08c4f:	85 c0                                           	test   eax,eax
  b08c51:	74 58                                           	je     0xb08cab
  b08c53:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  b08c59:	33 c9                                           	xor    ecx,ecx
  b08c5b:	8d 50 04                                        	lea    edx,[eax+0x4]
  b08c5e:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  b08c60:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  b08c66:	8b 10                                           	mov    edx,DWORD PTR [eax]
  b08c68:	8b f0                                           	mov    esi,eax
  b08c6a:	8b c8                                           	mov    ecx,eax
  b08c6c:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  b08c6f:	ff d0                                           	call   eax
  b08c71:	8b 4f 48                                        	mov    ecx,DWORD PTR [edi+0x48]
  b08c74:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  b08c77:	8b 57 4c                                        	mov    edx,DWORD PTR [edi+0x4c]
  b08c7a:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  b08c7d:	c7 46 10 02 00 00 00                            	mov    DWORD PTR [esi+0x10],0x2
  b08c84:	e8 67 38 94 ff                                  	call   0x44c4f0
  b08c89:	85 c0                                           	test   eax,eax
  b08c8b:	74 13                                           	je     0xb08ca0
  b08c8d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  b08c8f:	6a 00                                           	push   0x0
  b08c91:	6a 00                                           	push   0x0
  b08c93:	56                                              	push   esi
  b08c94:	8b c8                                           	mov    ecx,eax
  b08c96:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  b08c99:	68 aa 30 e1 06                                  	push   0x6e130aa
  b08c9e:	ff d0                                           	call   eax
  b08ca0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  b08ca2:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  b08ca5:	5f                                              	pop    edi
  b08ca6:	8b ce                                           	mov    ecx,esi
  b08ca8:	5e                                              	pop    esi
  b08ca9:	ff e0                                           	jmp    eax
  b08cab:	33 f6                                           	xor    esi,esi
  b08cad:	eb c2                                           	jmp    0xb08c71
  b08caf:	5f                                              	pop    edi
  b08cb0:	5e                                              	pop    esi
  b08cb1:	c3                                              	ret
  b08cb2:	cc                                              	int3
  b08cb3:	cc                                              	int3
  b08cb4:	cc                                              	int3
  b08cb5:	cc                                              	int3
  b08cb6:	cc                                              	int3
  b08cb7:	cc                                              	int3
  b08cb8:	cc                                              	int3
  b08cb9:	cc                                              	int3
  b08cba:	cc                                              	int3
  b08cbb:	cc                                              	int3
  b08cbc:	cc                                              	int3
  b08cbd:	cc                                              	int3
  b08cbe:	cc                                              	int3
  b08cbf:	cc                                              	int3
