# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073afb0 (ScriptCore.Animation::Animation_MeasureControllerDistanceTravelled)
Paired Ghidra pseudocode: 0073AFB0_ScriptCore_Animation_Animation_MeasureControllerDistanceTravelled.c
Window: [0x0073afb0, 0x0073b160) (432 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073b160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073afb0: 55 8b ec 83 e4 f0 83 ec 58 0f 57 c0 56 57 f3 0f
0073afc0: 11 44 24 14 f3 0f 11 44 24 18 f3 0f 11 44 24 1c
0073afd0: e8 9b c5 1f 00 8b 4d 10 8b 55 0c 51 52 8b c8 e8
0073afe0: 9c cf 1f 00 8b f8 85 ff 0f 84 1b 01 00 00 8d 47
0073aff0: 04 b9 01 00 00 00 f0 0f c1 08 8b 15 84 d4 1d 01
0073b000: 52 8b cf e8 58 92 1f 00 8b f0 85 f6 0f 84 f7 00
0073b010: 00 00 6a 00 6a 00 6a 00 6a 00 68 e0 fd ff 00 68
0073b020: 00 06 00 00 e8 d7 94 da ff 83 c4 18 85 c0 0f 84
0073b030: 18 01 00 00 d9 ee 51 d9 1c 24 83 c6 08 56 8b c8
0073b040: e8 1b dc e2 ff 8b f0 85 f6 74 04 83 46 04 01 8b
0073b050: 4d 20 8b 45 1c 8b 55 14 89 4c 24 24 8d 4c 24 20
0073b060: 89 44 24 20 8b 45 18 51 8b ce 89 54 24 2c 89 44
0073b070: 24 30 e8 f9 f0 e2 ff 0f 57 c0 f3 0f 11 44 24 3c
0073b080: f3 0f 11 44 24 38 f3 0f 11 44 24 34 f3 0f 11 44
0073b090: 24 30 0f 28 4c 24 30 8d 54 24 50 52 0f 29 4c 24
0073b0a0: 44 f3 0f 10 0d f8 98 f9 00 8d 44 24 44 f3 0f 11
0073b0b0: 4c 24 40 f3 0f 11 44 24 3c f3 0f 11 44 24 38 f3
0073b0c0: 0f 11 44 24 34 0f 28 44 24 34 50 56 0f 29 44 24
0073b0d0: 5c e8 aa d9 10 00 dd d8 83 c4 0c 8d 4c 24 40 51
0073b0e0: 8d 4c 24 18 e8 17 10 03 00 85 f6 74 1c 8b 46 04
0073b0f0: 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00 8b
0073b100: 16 8b 02 6a 01 8b ce ff d0 85 ff 8b 75 08 8b 4c
0073b110: 24 14 8b 54 24 18 8b 44 24 1c 89 0e 89 56 04 89
0073b120: 46 08 74 20 8d 47 04 8b c8 83 ca ff f0 0f c1 11
0073b130: 4a 75 11 b9 01 00 00 00 87 08 8b 17 8b 02 6a 01
0073b140: 8b cf ff d0 5f 8b c6 5e 8b e5 5d c3 33 f6 e9 fc
0073b150: fe ff ff cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073afb0 <.text+0x339fb0>:
  73afb0:	55                                              	push   ebp
  73afb1:	8b ec                                           	mov    ebp,esp
  73afb3:	83 e4 f0                                        	and    esp,0xfffffff0
  73afb6:	83 ec 58                                        	sub    esp,0x58
  73afb9:	0f 57 c0                                        	xorps  xmm0,xmm0
  73afbc:	56                                              	push   esi
  73afbd:	57                                              	push   edi
  73afbe:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  73afc4:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  73afca:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  73afd0:	e8 9b c5 1f 00                                  	call   0x937570
  73afd5:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  73afd8:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  73afdb:	51                                              	push   ecx
  73afdc:	52                                              	push   edx
  73afdd:	8b c8                                           	mov    ecx,eax
  73afdf:	e8 9c cf 1f 00                                  	call   0x937f80
  73afe4:	8b f8                                           	mov    edi,eax
  73afe6:	85 ff                                           	test   edi,edi
  73afe8:	0f 84 1b 01 00 00                               	je     0x73b109
  73afee:	8d 47 04                                        	lea    eax,[edi+0x4]
  73aff1:	b9 01 00 00 00                                  	mov    ecx,0x1
  73aff6:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73affa:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  73b000:	52                                              	push   edx
  73b001:	8b cf                                           	mov    ecx,edi
  73b003:	e8 58 92 1f 00                                  	call   0x934260
  73b008:	8b f0                                           	mov    esi,eax
  73b00a:	85 f6                                           	test   esi,esi
  73b00c:	0f 84 f7 00 00 00                               	je     0x73b109
  73b012:	6a 00                                           	push   0x0
  73b014:	6a 00                                           	push   0x0
  73b016:	6a 00                                           	push   0x0
  73b018:	6a 00                                           	push   0x0
  73b01a:	68 e0 fd ff 00                                  	push   0xfffde0
  73b01f:	68 00 06 00 00                                  	push   0x600
  73b024:	e8 d7 94 da ff                                  	call   0x4e4500
  73b029:	83 c4 18                                        	add    esp,0x18
  73b02c:	85 c0                                           	test   eax,eax
  73b02e:	0f 84 18 01 00 00                               	je     0x73b14c
  73b034:	d9 ee                                           	fldz
  73b036:	51                                              	push   ecx
  73b037:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73b03a:	83 c6 08                                        	add    esi,0x8
  73b03d:	56                                              	push   esi
  73b03e:	8b c8                                           	mov    ecx,eax
  73b040:	e8 1b dc e2 ff                                  	call   0x568c60
  73b045:	8b f0                                           	mov    esi,eax
  73b047:	85 f6                                           	test   esi,esi
  73b049:	74 04                                           	je     0x73b04f
  73b04b:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
  73b04f:	8b 4d 20                                        	mov    ecx,DWORD PTR [ebp+0x20]
  73b052:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  73b055:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
  73b058:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  73b05c:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  73b060:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  73b064:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  73b067:	51                                              	push   ecx
  73b068:	8b ce                                           	mov    ecx,esi
  73b06a:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  73b06e:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  73b072:	e8 f9 f0 e2 ff                                  	call   0x56a170
  73b077:	0f 57 c0                                        	xorps  xmm0,xmm0
  73b07a:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  73b080:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  73b086:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  73b08c:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  73b092:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
  73b097:	8d 54 24 50                                     	lea    edx,[esp+0x50]
  73b09b:	52                                              	push   edx
  73b09c:	0f 29 4c 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm1
  73b0a1:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  73b0a9:	8d 44 24 44                                     	lea    eax,[esp+0x44]
  73b0ad:	f3 0f 11 4c 24 40                               	movss  DWORD PTR [esp+0x40],xmm1
  73b0b3:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  73b0b9:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  73b0bf:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  73b0c5:	0f 28 44 24 34                                  	movaps xmm0,XMMWORD PTR [esp+0x34]
  73b0ca:	50                                              	push   eax
  73b0cb:	56                                              	push   esi
  73b0cc:	0f 29 44 24 5c                                  	movaps XMMWORD PTR [esp+0x5c],xmm0
  73b0d1:	e8 aa d9 10 00                                  	call   0x848a80
  73b0d6:	dd d8                                           	fstp   st(0)
  73b0d8:	83 c4 0c                                        	add    esp,0xc
  73b0db:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  73b0df:	51                                              	push   ecx
  73b0e0:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  73b0e4:	e8 17 10 03 00                                  	call   0x76c100
  73b0e9:	85 f6                                           	test   esi,esi
  73b0eb:	74 1c                                           	je     0x73b109
  73b0ed:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  73b0f0:	83 c0 ff                                        	add    eax,0xffffffff
  73b0f3:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  73b0f6:	75 11                                           	jne    0x73b109
  73b0f8:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
  73b0ff:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73b101:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73b103:	6a 01                                           	push   0x1
  73b105:	8b ce                                           	mov    ecx,esi
  73b107:	ff d0                                           	call   eax
  73b109:	85 ff                                           	test   edi,edi
  73b10b:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  73b10e:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  73b112:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  73b116:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  73b11a:	89 0e                                           	mov    DWORD PTR [esi],ecx
  73b11c:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  73b11f:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  73b122:	74 20                                           	je     0x73b144
  73b124:	8d 47 04                                        	lea    eax,[edi+0x4]
  73b127:	8b c8                                           	mov    ecx,eax
  73b129:	83 ca ff                                        	or     edx,0xffffffff
  73b12c:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  73b130:	4a                                              	dec    edx
  73b131:	75 11                                           	jne    0x73b144
  73b133:	b9 01 00 00 00                                  	mov    ecx,0x1
  73b138:	87 08                                           	xchg   DWORD PTR [eax],ecx
  73b13a:	8b 17                                           	mov    edx,DWORD PTR [edi]
  73b13c:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73b13e:	6a 01                                           	push   0x1
  73b140:	8b cf                                           	mov    ecx,edi
  73b142:	ff d0                                           	call   eax
  73b144:	5f                                              	pop    edi
  73b145:	8b c6                                           	mov    eax,esi
  73b147:	5e                                              	pop    esi
  73b148:	8b e5                                           	mov    esp,ebp
  73b14a:	5d                                              	pop    ebp
  73b14b:	c3                                              	ret
  73b14c:	33 f6                                           	xor    esi,esi
  73b14e:	e9 fc fe ff ff                                  	jmp    0x73b04f
  73b153:	cc                                              	int3
  73b154:	cc                                              	int3
  73b155:	cc                                              	int3
  73b156:	cc                                              	int3
  73b157:	cc                                              	int3
  73b158:	cc                                              	int3
  73b159:	cc                                              	int3
  73b15a:	cc                                              	int3
  73b15b:	cc                                              	int3
  73b15c:	cc                                              	int3
  73b15d:	cc                                              	int3
  73b15e:	cc                                              	int3
  73b15f:	cc                                              	int3
