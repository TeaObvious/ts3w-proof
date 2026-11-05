# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00789f90 (ScriptCore.World::World_GetObjectScreenSpacePosImpl)
Paired Ghidra pseudocode: 00789F90_ScriptCore_World_World_GetObjectScreenSpacePosImpl.c
Window: [0x00789f90, 0x0078a0b0) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078a0b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00789f90: 55 8b ec 83 e4 f0 83 ec 28 0f 57 c0 53 56 32 db
00789fa0: f3 0f 11 44 24 08 f3 0f 11 44 24 0c e8 1f fc 1d
00789fb0: 00 8b c8 e8 38 80 79 00 85 c0 0f 84 d3 00 00 00
00789fc0: 8b c8 e8 19 9e d8 ff 8b 70 0c e8 a1 d5 1a 00 8b
00789fd0: 4d 0c 8b 55 08 51 52 8b c8 e8 a2 df 1a 00 85 c0
00789fe0: 0f 84 ad 00 00 00 8b 0d 58 a1 1e 01 51 8b c8 e8
00789ff0: 6c a2 1a 00 85 c0 0f 84 97 00 00 00 8d 54 24 10
0078a000: 52 8b c8 e8 68 e0 1c 00 0f 28 54 24 10 f3 0f 10
0078a010: 45 10 0f c6 c0 00 0f 58 c2 0f 28 ca 0f c6 c8 05
0078a020: f3 0f 10 45 14 0f c6 ca e2 0f c6 c0 00 0f 58 c1
0078a030: 0f 28 d1 0f c6 d0 50 f3 0f 10 45 18 0f c6 d1 e8
0078a040: 8d 44 24 20 50 8d 4c 24 14 0f 28 ca 0f c6 c0 00
0078a050: 0f 58 c2 51 0f c6 c8 af 0f c6 d1 24 56 0f 29 54
0078a060: 24 1c e8 c9 55 04 00 0f 28 44 24 2c 0f 29 44 24
0078a070: 2c f3 0f 10 4c 24 2c 0f 29 44 24 2c f3 0f 10 44
0078a080: 24 30 83 c4 0c 8a d8 f3 0f 11 4c 24 08 f3 0f 11
0078a090: 44 24 0c 8b 45 1c 8b 54 24 08 8b 4c 24 0c 89 10
0078a0a0: 89 48 04 5e 8a c3 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00789f90 <.text+0x388f90>:
  789f90:	55                                              	push   ebp
  789f91:	8b ec                                           	mov    ebp,esp
  789f93:	83 e4 f0                                        	and    esp,0xfffffff0
  789f96:	83 ec 28                                        	sub    esp,0x28
  789f99:	0f 57 c0                                        	xorps  xmm0,xmm0
  789f9c:	53                                              	push   ebx
  789f9d:	56                                              	push   esi
  789f9e:	32 db                                           	xor    bl,bl
  789fa0:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  789fa6:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  789fac:	e8 1f fc 1d 00                                  	call   0x969bd0
  789fb1:	8b c8                                           	mov    ecx,eax
  789fb3:	e8 38 80 79 00                                  	call   0xf21ff0
  789fb8:	85 c0                                           	test   eax,eax
  789fba:	0f 84 d3 00 00 00                               	je     0x78a093
  789fc0:	8b c8                                           	mov    ecx,eax
  789fc2:	e8 19 9e d8 ff                                  	call   0x513de0
  789fc7:	8b 70 0c                                        	mov    esi,DWORD PTR [eax+0xc]
  789fca:	e8 a1 d5 1a 00                                  	call   0x937570
  789fcf:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  789fd2:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  789fd5:	51                                              	push   ecx
  789fd6:	52                                              	push   edx
  789fd7:	8b c8                                           	mov    ecx,eax
  789fd9:	e8 a2 df 1a 00                                  	call   0x937f80
  789fde:	85 c0                                           	test   eax,eax
  789fe0:	0f 84 ad 00 00 00                               	je     0x78a093
  789fe6:	8b 0d 58 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea158
  789fec:	51                                              	push   ecx
  789fed:	8b c8                                           	mov    ecx,eax
  789fef:	e8 6c a2 1a 00                                  	call   0x934260
  789ff4:	85 c0                                           	test   eax,eax
  789ff6:	0f 84 97 00 00 00                               	je     0x78a093
  789ffc:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  78a000:	52                                              	push   edx
  78a001:	8b c8                                           	mov    ecx,eax
  78a003:	e8 68 e0 1c 00                                  	call   0x958070
  78a008:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  78a00d:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  78a012:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  78a016:	0f 58 c2                                        	addps  xmm0,xmm2
  78a019:	0f 28 ca                                        	movaps xmm1,xmm2
  78a01c:	0f c6 c8 05                                     	shufps xmm1,xmm0,0x5
  78a020:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  78a025:	0f c6 ca e2                                     	shufps xmm1,xmm2,0xe2
  78a029:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  78a02d:	0f 58 c1                                        	addps  xmm0,xmm1
  78a030:	0f 28 d1                                        	movaps xmm2,xmm1
  78a033:	0f c6 d0 50                                     	shufps xmm2,xmm0,0x50
  78a037:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
  78a03c:	0f c6 d1 e8                                     	shufps xmm2,xmm1,0xe8
  78a040:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  78a044:	50                                              	push   eax
  78a045:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78a049:	0f 28 ca                                        	movaps xmm1,xmm2
  78a04c:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  78a050:	0f 58 c2                                        	addps  xmm0,xmm2
  78a053:	51                                              	push   ecx
  78a054:	0f c6 c8 af                                     	shufps xmm1,xmm0,0xaf
  78a058:	0f c6 d1 24                                     	shufps xmm2,xmm1,0x24
  78a05c:	56                                              	push   esi
  78a05d:	0f 29 54 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm2
  78a062:	e8 c9 55 04 00                                  	call   0x7cf630
  78a067:	0f 28 44 24 2c                                  	movaps xmm0,XMMWORD PTR [esp+0x2c]
  78a06c:	0f 29 44 24 2c                                  	movaps XMMWORD PTR [esp+0x2c],xmm0
  78a071:	f3 0f 10 4c 24 2c                               	movss  xmm1,DWORD PTR [esp+0x2c]
  78a077:	0f 29 44 24 2c                                  	movaps XMMWORD PTR [esp+0x2c],xmm0
  78a07c:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  78a082:	83 c4 0c                                        	add    esp,0xc
  78a085:	8a d8                                           	mov    bl,al
  78a087:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  78a08d:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  78a093:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  78a096:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  78a09a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78a09e:	89 10                                           	mov    DWORD PTR [eax],edx
  78a0a0:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  78a0a3:	5e                                              	pop    esi
  78a0a4:	8a c3                                           	mov    al,bl
  78a0a6:	5b                                              	pop    ebx
  78a0a7:	8b e5                                           	mov    esp,ebp
  78a0a9:	5d                                              	pop    ebp
  78a0aa:	c3                                              	ret
  78a0ab:	cc                                              	int3
  78a0ac:	cc                                              	int3
  78a0ad:	cc                                              	int3
  78a0ae:	cc                                              	int3
  78a0af:	cc                                              	int3
