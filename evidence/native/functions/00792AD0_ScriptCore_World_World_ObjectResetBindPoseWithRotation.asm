# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00792ad0 (ScriptCore.World::World_ObjectResetBindPoseWithRotation)
Paired Ghidra pseudocode: 00792AD0_ScriptCore_World_World_ObjectResetBindPoseWithRotation.c
Window: [0x00792ad0, 0x00792d50) (640 bytes; stop exclusive)
Next defined Ghidra entry: 0x00792d50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00792ad0: 55 8b ec 83 e4 f0 83 ec 64 53 56 57 e8 8f 4a 1a
00792ae0: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 90 54 1a 00
00792af0: 8b f0 85 f6 0f 84 4b 02 00 00 8d 7e 04 8b c7 b9
00792b00: 01 00 00 00 f0 0f c1 08 8b 15 58 a1 1e 01 52 8b
00792b10: ce e8 4a 17 1a 00 8b d8 85 db 0f 84 f8 01 00 00
00792b20: 8d 44 24 30 50 8b cb e8 64 4f 1c 00 0f 57 db 0f
00792b30: 28 4c 24 50 f3 0f 10 05 f8 98 f9 00 0f 29 4c 24
00792b40: 20 f3 0f 10 54 24 28 f3 0f 11 5c 24 1c f3 0f 11
00792b50: 5c 24 18 f3 0f 11 5c 24 10 f3 0f 11 44 24 14 0f
00792b60: 28 74 24 10 0f 29 4c 24 10 f3 0f 10 4c 24 10 f3
00792b70: 0f 11 4c 24 1c f3 0f 11 4c 24 10 f3 0f 11 54 24
00792b80: 18 0f 28 54 24 40 0f 59 d6 f3 0f 11 5c 24 14 0f
00792b90: 28 6c 24 10 0f 28 ca 0f c6 ca 02 0f 28 e2 0f c6
00792ba0: e2 01 0f 58 cc 0f 58 ca 0f c6 c9 00 f3 0f 10 db
00792bb0: f3 0f 11 4c 24 10 0f c6 db 00 f3 0f 11 5c 24 20
00792bc0: f3 0f 10 4c 24 20 0f 2f 4c 24 10 76 09 0f 57 c9
00792bd0: 0f 5c cd 0f 28 e9 0f 28 d5 0f 59 d5 0f 28 ca 0f
00792be0: c6 ca 02 0f 28 da 0f c6 da 01 0f 58 cb 0f 58 ca
00792bf0: f3 0f 10 15 b4 b5 f9 00 0f c6 c9 00 0f 52 e1 0f
00792c00: 28 fc 0f 59 fc 0f 59 f9 0f c6 c0 00 0f 28 d8 0f
00792c10: 5c df 0f c6 d2 00 0f 28 fa 0f 59 fc 0f 59 df 0f
00792c20: 58 dc 0f 28 e3 0f 59 e3 0f 59 e1 0f 28 c8 0f 5c
00792c30: cc 0f 28 e2 0f 59 e3 0f 59 cc 0f 58 cb 0f 59 cd
00792c40: 0f 28 d9 0f c6 d9 09 0f 28 e6 0f c6 e6 12 0f 59
00792c50: dc 0f 28 e9 0f c6 e9 12 0f 28 e6 0f c6 e6 09 0f
00792c60: 59 ec 0f 5c eb 0f 28 e5 0f 59 e5 0f 28 dc 0f c6
00792c70: dc 02 0f 28 fc 0f c6 fc 01 0f 58 df 0f 58 dc 0f
00792c80: c6 db 00 0f 52 fb 0f 29 5c 24 10 0f 28 e7 0f 59
00792c90: e7 0f 59 e3 0f 29 64 24 20 0f 28 5c 24 20 0f 28
00792ca0: e0 0f 5c e3 0f 28 da 0f 59 df 0f 59 e3 0f 58 e7
00792cb0: 0f 28 dc 0f 59 dc 0f 59 5c 24 10 0f 5c c3 0f 59
00792cc0: d4 0f 59 c2 0f 58 c4 0f 59 c5 0f 29 44 24 10 0f
00792cd0: 57 c0 f3 0f 11 44 24 1c 0f 28 54 24 10 0f 29 74
00792ce0: 24 10 0f 29 54 24 30 f3 0f 11 44 24 1c 0f 28 54
00792cf0: 24 10 0f 29 4c 24 10 8d 4c 24 30 f3 0f 11 44 24
00792d00: 1c 0f 28 44 24 10 51 8b cb 0f 29 54 24 44 0f 29
00792d10: 44 24 54 e8 48 5a 1c 00 8b 55 0c 8b 45 08 52 50
00792d20: e8 2b ab ff ff 83 c4 08 8b cf 83 ca ff f0 0f c1
00792d30: 11 4a 75 11 b8 01 00 00 00 87 07 8b 16 8b 02 6a
00792d40: 01 8b ce ff d0 5f 5e 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
00792ad0 <.text+0x391ad0>:
  792ad0:	55                                              	push   ebp
  792ad1:	8b ec                                           	mov    ebp,esp
  792ad3:	83 e4 f0                                        	and    esp,0xfffffff0
  792ad6:	83 ec 64                                        	sub    esp,0x64
  792ad9:	53                                              	push   ebx
  792ada:	56                                              	push   esi
  792adb:	57                                              	push   edi
  792adc:	e8 8f 4a 1a 00                                  	call   0x937570
  792ae1:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  792ae4:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  792ae7:	51                                              	push   ecx
  792ae8:	52                                              	push   edx
  792ae9:	8b c8                                           	mov    ecx,eax
  792aeb:	e8 90 54 1a 00                                  	call   0x937f80
  792af0:	8b f0                                           	mov    esi,eax
  792af2:	85 f6                                           	test   esi,esi
  792af4:	0f 84 4b 02 00 00                               	je     0x792d45
  792afa:	8d 7e 04                                        	lea    edi,[esi+0x4]
  792afd:	8b c7                                           	mov    eax,edi
  792aff:	b9 01 00 00 00                                  	mov    ecx,0x1
  792b04:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  792b08:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  792b0e:	52                                              	push   edx
  792b0f:	8b ce                                           	mov    ecx,esi
  792b11:	e8 4a 17 1a 00                                  	call   0x934260
  792b16:	8b d8                                           	mov    ebx,eax
  792b18:	85 db                                           	test   ebx,ebx
  792b1a:	0f 84 f8 01 00 00                               	je     0x792d18
  792b20:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  792b24:	50                                              	push   eax
  792b25:	8b cb                                           	mov    ecx,ebx
  792b27:	e8 64 4f 1c 00                                  	call   0x957a90
  792b2c:	0f 57 db                                        	xorps  xmm3,xmm3
  792b2f:	0f 28 4c 24 50                                  	movaps xmm1,XMMWORD PTR [esp+0x50]
  792b34:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  792b3c:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
  792b41:	f3 0f 10 54 24 28                               	movss  xmm2,DWORD PTR [esp+0x28]
  792b47:	f3 0f 11 5c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm3
  792b4d:	f3 0f 11 5c 24 18                               	movss  DWORD PTR [esp+0x18],xmm3
  792b53:	f3 0f 11 5c 24 10                               	movss  DWORD PTR [esp+0x10],xmm3
  792b59:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  792b5f:	0f 28 74 24 10                                  	movaps xmm6,XMMWORD PTR [esp+0x10]
  792b64:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
  792b69:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
  792b6f:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  792b75:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  792b7b:	f3 0f 11 54 24 18                               	movss  DWORD PTR [esp+0x18],xmm2
  792b81:	0f 28 54 24 40                                  	movaps xmm2,XMMWORD PTR [esp+0x40]
  792b86:	0f 59 d6                                        	mulps  xmm2,xmm6
  792b89:	f3 0f 11 5c 24 14                               	movss  DWORD PTR [esp+0x14],xmm3
  792b8f:	0f 28 6c 24 10                                  	movaps xmm5,XMMWORD PTR [esp+0x10]
  792b94:	0f 28 ca                                        	movaps xmm1,xmm2
  792b97:	0f c6 ca 02                                     	shufps xmm1,xmm2,0x2
  792b9b:	0f 28 e2                                        	movaps xmm4,xmm2
  792b9e:	0f c6 e2 01                                     	shufps xmm4,xmm2,0x1
  792ba2:	0f 58 cc                                        	addps  xmm1,xmm4
  792ba5:	0f 58 ca                                        	addps  xmm1,xmm2
  792ba8:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  792bac:	f3 0f 10 db                                     	movss  xmm3,xmm3
  792bb0:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  792bb6:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  792bba:	f3 0f 11 5c 24 20                               	movss  DWORD PTR [esp+0x20],xmm3
  792bc0:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  792bc6:	0f 2f 4c 24 10                                  	comiss xmm1,DWORD PTR [esp+0x10]
  792bcb:	76 09                                           	jbe    0x792bd6
  792bcd:	0f 57 c9                                        	xorps  xmm1,xmm1
  792bd0:	0f 5c cd                                        	subps  xmm1,xmm5
  792bd3:	0f 28 e9                                        	movaps xmm5,xmm1
  792bd6:	0f 28 d5                                        	movaps xmm2,xmm5
  792bd9:	0f 59 d5                                        	mulps  xmm2,xmm5
  792bdc:	0f 28 ca                                        	movaps xmm1,xmm2
  792bdf:	0f c6 ca 02                                     	shufps xmm1,xmm2,0x2
  792be3:	0f 28 da                                        	movaps xmm3,xmm2
  792be6:	0f c6 da 01                                     	shufps xmm3,xmm2,0x1
  792bea:	0f 58 cb                                        	addps  xmm1,xmm3
  792bed:	0f 58 ca                                        	addps  xmm1,xmm2
  792bf0:	f3 0f 10 15 b4 b5 f9 00                         	movss  xmm2,DWORD PTR ds:0xf9b5b4
  792bf8:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  792bfc:	0f 52 e1                                        	rsqrtps xmm4,xmm1
  792bff:	0f 28 fc                                        	movaps xmm7,xmm4
  792c02:	0f 59 fc                                        	mulps  xmm7,xmm4
  792c05:	0f 59 f9                                        	mulps  xmm7,xmm1
  792c08:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  792c0c:	0f 28 d8                                        	movaps xmm3,xmm0
  792c0f:	0f 5c df                                        	subps  xmm3,xmm7
  792c12:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  792c16:	0f 28 fa                                        	movaps xmm7,xmm2
  792c19:	0f 59 fc                                        	mulps  xmm7,xmm4
  792c1c:	0f 59 df                                        	mulps  xmm3,xmm7
  792c1f:	0f 58 dc                                        	addps  xmm3,xmm4
  792c22:	0f 28 e3                                        	movaps xmm4,xmm3
  792c25:	0f 59 e3                                        	mulps  xmm4,xmm3
  792c28:	0f 59 e1                                        	mulps  xmm4,xmm1
  792c2b:	0f 28 c8                                        	movaps xmm1,xmm0
  792c2e:	0f 5c cc                                        	subps  xmm1,xmm4
  792c31:	0f 28 e2                                        	movaps xmm4,xmm2
  792c34:	0f 59 e3                                        	mulps  xmm4,xmm3
  792c37:	0f 59 cc                                        	mulps  xmm1,xmm4
  792c3a:	0f 58 cb                                        	addps  xmm1,xmm3
  792c3d:	0f 59 cd                                        	mulps  xmm1,xmm5
  792c40:	0f 28 d9                                        	movaps xmm3,xmm1
  792c43:	0f c6 d9 09                                     	shufps xmm3,xmm1,0x9
  792c47:	0f 28 e6                                        	movaps xmm4,xmm6
  792c4a:	0f c6 e6 12                                     	shufps xmm4,xmm6,0x12
  792c4e:	0f 59 dc                                        	mulps  xmm3,xmm4
  792c51:	0f 28 e9                                        	movaps xmm5,xmm1
  792c54:	0f c6 e9 12                                     	shufps xmm5,xmm1,0x12
  792c58:	0f 28 e6                                        	movaps xmm4,xmm6
  792c5b:	0f c6 e6 09                                     	shufps xmm4,xmm6,0x9
  792c5f:	0f 59 ec                                        	mulps  xmm5,xmm4
  792c62:	0f 5c eb                                        	subps  xmm5,xmm3
  792c65:	0f 28 e5                                        	movaps xmm4,xmm5
  792c68:	0f 59 e5                                        	mulps  xmm4,xmm5
  792c6b:	0f 28 dc                                        	movaps xmm3,xmm4
  792c6e:	0f c6 dc 02                                     	shufps xmm3,xmm4,0x2
  792c72:	0f 28 fc                                        	movaps xmm7,xmm4
  792c75:	0f c6 fc 01                                     	shufps xmm7,xmm4,0x1
  792c79:	0f 58 df                                        	addps  xmm3,xmm7
  792c7c:	0f 58 dc                                        	addps  xmm3,xmm4
  792c7f:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  792c83:	0f 52 fb                                        	rsqrtps xmm7,xmm3
  792c86:	0f 29 5c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm3
  792c8b:	0f 28 e7                                        	movaps xmm4,xmm7
  792c8e:	0f 59 e7                                        	mulps  xmm4,xmm7
  792c91:	0f 59 e3                                        	mulps  xmm4,xmm3
  792c94:	0f 29 64 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm4
  792c99:	0f 28 5c 24 20                                  	movaps xmm3,XMMWORD PTR [esp+0x20]
  792c9e:	0f 28 e0                                        	movaps xmm4,xmm0
  792ca1:	0f 5c e3                                        	subps  xmm4,xmm3
  792ca4:	0f 28 da                                        	movaps xmm3,xmm2
  792ca7:	0f 59 df                                        	mulps  xmm3,xmm7
  792caa:	0f 59 e3                                        	mulps  xmm4,xmm3
  792cad:	0f 58 e7                                        	addps  xmm4,xmm7
  792cb0:	0f 28 dc                                        	movaps xmm3,xmm4
  792cb3:	0f 59 dc                                        	mulps  xmm3,xmm4
  792cb6:	0f 59 5c 24 10                                  	mulps  xmm3,XMMWORD PTR [esp+0x10]
  792cbb:	0f 5c c3                                        	subps  xmm0,xmm3
  792cbe:	0f 59 d4                                        	mulps  xmm2,xmm4
  792cc1:	0f 59 c2                                        	mulps  xmm0,xmm2
  792cc4:	0f 58 c4                                        	addps  xmm0,xmm4
  792cc7:	0f 59 c5                                        	mulps  xmm0,xmm5
  792cca:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  792ccf:	0f 57 c0                                        	xorps  xmm0,xmm0
  792cd2:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  792cd8:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  792cdd:	0f 29 74 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm6
  792ce2:	0f 29 54 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm2
  792ce7:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  792ced:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  792cf2:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
  792cf7:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  792cfb:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  792d01:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  792d06:	51                                              	push   ecx
  792d07:	8b cb                                           	mov    ecx,ebx
  792d09:	0f 29 54 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm2
  792d0e:	0f 29 44 24 54                                  	movaps XMMWORD PTR [esp+0x54],xmm0
  792d13:	e8 48 5a 1c 00                                  	call   0x958760
  792d18:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  792d1b:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  792d1e:	52                                              	push   edx
  792d1f:	50                                              	push   eax
  792d20:	e8 2b ab ff ff                                  	call   0x78d850
  792d25:	83 c4 08                                        	add    esp,0x8
  792d28:	8b cf                                           	mov    ecx,edi
  792d2a:	83 ca ff                                        	or     edx,0xffffffff
  792d2d:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  792d31:	4a                                              	dec    edx
  792d32:	75 11                                           	jne    0x792d45
  792d34:	b8 01 00 00 00                                  	mov    eax,0x1
  792d39:	87 07                                           	xchg   DWORD PTR [edi],eax
  792d3b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  792d3d:	8b 02                                           	mov    eax,DWORD PTR [edx]
  792d3f:	6a 01                                           	push   0x1
  792d41:	8b ce                                           	mov    ecx,esi
  792d43:	ff d0                                           	call   eax
  792d45:	5f                                              	pop    edi
  792d46:	5e                                              	pop    esi
  792d47:	5b                                              	pop    ebx
  792d48:	8b e5                                           	mov    esp,ebp
  792d4a:	5d                                              	pop    ebp
  792d4b:	c3                                              	ret
  792d4c:	cc                                              	int3
  792d4d:	cc                                              	int3
  792d4e:	cc                                              	int3
  792d4f:	cc                                              	int3
