# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078f0d0 (ScriptCore.World::World_ObjectSetFogAreaEffect)
Paired Ghidra pseudocode: 0078F0D0_ScriptCore_World_World_ObjectSetFogAreaEffect.c
Window: [0x0078f0d0, 0x0078f260) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078f260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078f0d0: 55 8b ec 83 e4 f0 f3 0f 10 05 24 32 16 01 83 ec
0078f0e0: 74 0f 2f 45 18 53 56 57 0f 87 e8 00 00 00 0f 2f
0078f0f0: 45 1c 0f 87 de 00 00 00 e8 73 84 1a 00 85 c0 0f
0078f100: 84 48 01 00 00 8b 75 0c 8b 5d 08 56 53 8b c8 e8
0078f110: 6c 8e 1a 00 85 c0 0f 84 31 01 00 00 8b 0d 58 a1
0078f120: 1e 01 51 8b c8 e8 36 51 1a 00 8b f8 85 ff 0f 84
0078f130: 19 01 00 00 8d 4c 24 30 c7 44 24 30 b3 63 9b 09
0078f140: c7 44 24 34 00 00 00 00 89 5c 24 38 89 74 24 3c
0078f150: e8 1b fa ff ff 8d 54 24 20 52 8b cf 8b f0 e8 cd
0078f160: 88 1c 00 50 8d 4c 24 18 e8 c3 42 f0 ff d9 00 f3
0078f170: 0f 10 45 10 d9 1e d9 40 04 d9 5e 04 d9 40 08 f3
0078f180: 0f 11 46 0c f3 0f 10 45 14 d9 5e 08 f3 0f 11 46
0078f190: 10 f3 0f 10 45 18 f3 0f 11 46 14 f3 0f 10 45 1c
0078f1a0: f3 0f 11 46 18 f3 0f 10 45 20 8d 44 24 30 f3 0f
0078f1b0: 11 46 1c f3 0f 10 45 24 50 f3 0f 11 46 20 e8 bd
0078f1c0: 41 f0 ff 83 c4 04 8d 4c 24 30 e8 a1 38 df ff 5f
0078f1d0: 5e 5b 8b e5 5d c3 0f 57 c0 8b 4d 08 8b 55 0c 8d
0078f1e0: 44 24 30 50 c7 44 24 34 b3 63 9b 09 89 4c 24 3c
0078f1f0: 89 54 24 40 c7 44 24 38 d4 3d 16 01 f3 0f 11 44
0078f200: 24 44 f3 0f 11 44 24 48 f3 0f 11 44 24 4c f3 0f
0078f210: 11 44 24 64 f3 0f 11 44 24 60 f3 0f 11 44 24 5c
0078f220: f3 0f 11 44 24 58 f3 0f 11 44 24 54 f3 0f 11 44
0078f230: 24 50 e8 49 41 f0 ff 8b 4c 24 38 83 c4 04 85 c9
0078f240: 74 0b 8b 11 8b 12 8d 44 24 40 50 ff d2 5f 5e 5b
0078f250: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078f0d0 <.text+0x38e0d0>:
  78f0d0:	55                                              	push   ebp
  78f0d1:	8b ec                                           	mov    ebp,esp
  78f0d3:	83 e4 f0                                        	and    esp,0xfffffff0
  78f0d6:	f3 0f 10 05 24 32 16 01                         	movss  xmm0,DWORD PTR ds:0x1163224
  78f0de:	83 ec 74                                        	sub    esp,0x74
  78f0e1:	0f 2f 45 18                                     	comiss xmm0,DWORD PTR [ebp+0x18]
  78f0e5:	53                                              	push   ebx
  78f0e6:	56                                              	push   esi
  78f0e7:	57                                              	push   edi
  78f0e8:	0f 87 e8 00 00 00                               	ja     0x78f1d6
  78f0ee:	0f 2f 45 1c                                     	comiss xmm0,DWORD PTR [ebp+0x1c]
  78f0f2:	0f 87 de 00 00 00                               	ja     0x78f1d6
  78f0f8:	e8 73 84 1a 00                                  	call   0x937570
  78f0fd:	85 c0                                           	test   eax,eax
  78f0ff:	0f 84 48 01 00 00                               	je     0x78f24d
  78f105:	8b 75 0c                                        	mov    esi,DWORD PTR [ebp+0xc]
  78f108:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
  78f10b:	56                                              	push   esi
  78f10c:	53                                              	push   ebx
  78f10d:	8b c8                                           	mov    ecx,eax
  78f10f:	e8 6c 8e 1a 00                                  	call   0x937f80
  78f114:	85 c0                                           	test   eax,eax
  78f116:	0f 84 31 01 00 00                               	je     0x78f24d
  78f11c:	8b 0d 58 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea158
  78f122:	51                                              	push   ecx
  78f123:	8b c8                                           	mov    ecx,eax
  78f125:	e8 36 51 1a 00                                  	call   0x934260
  78f12a:	8b f8                                           	mov    edi,eax
  78f12c:	85 ff                                           	test   edi,edi
  78f12e:	0f 84 19 01 00 00                               	je     0x78f24d
  78f134:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  78f138:	c7 44 24 30 b3 63 9b 09                         	mov    DWORD PTR [esp+0x30],0x99b63b3
  78f140:	c7 44 24 34 00 00 00 00                         	mov    DWORD PTR [esp+0x34],0x0
  78f148:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
  78f14c:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
  78f150:	e8 1b fa ff ff                                  	call   0x78eb70
  78f155:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  78f159:	52                                              	push   edx
  78f15a:	8b cf                                           	mov    ecx,edi
  78f15c:	8b f0                                           	mov    esi,eax
  78f15e:	e8 cd 88 1c 00                                  	call   0x957a30
  78f163:	50                                              	push   eax
  78f164:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  78f168:	e8 c3 42 f0 ff                                  	call   0x693430
  78f16d:	d9 00                                           	fld    DWORD PTR [eax]
  78f16f:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  78f174:	d9 1e                                           	fstp   DWORD PTR [esi]
  78f176:	d9 40 04                                        	fld    DWORD PTR [eax+0x4]
  78f179:	d9 5e 04                                        	fstp   DWORD PTR [esi+0x4]
  78f17c:	d9 40 08                                        	fld    DWORD PTR [eax+0x8]
  78f17f:	f3 0f 11 46 0c                                  	movss  DWORD PTR [esi+0xc],xmm0
  78f184:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  78f189:	d9 5e 08                                        	fstp   DWORD PTR [esi+0x8]
  78f18c:	f3 0f 11 46 10                                  	movss  DWORD PTR [esi+0x10],xmm0
  78f191:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
  78f196:	f3 0f 11 46 14                                  	movss  DWORD PTR [esi+0x14],xmm0
  78f19b:	f3 0f 10 45 1c                                  	movss  xmm0,DWORD PTR [ebp+0x1c]
  78f1a0:	f3 0f 11 46 18                                  	movss  DWORD PTR [esi+0x18],xmm0
  78f1a5:	f3 0f 10 45 20                                  	movss  xmm0,DWORD PTR [ebp+0x20]
  78f1aa:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  78f1ae:	f3 0f 11 46 1c                                  	movss  DWORD PTR [esi+0x1c],xmm0
  78f1b3:	f3 0f 10 45 24                                  	movss  xmm0,DWORD PTR [ebp+0x24]
  78f1b8:	50                                              	push   eax
  78f1b9:	f3 0f 11 46 20                                  	movss  DWORD PTR [esi+0x20],xmm0
  78f1be:	e8 bd 41 f0 ff                                  	call   0x693380
  78f1c3:	83 c4 04                                        	add    esp,0x4
  78f1c6:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  78f1ca:	e8 a1 38 df ff                                  	call   0x582a70
  78f1cf:	5f                                              	pop    edi
  78f1d0:	5e                                              	pop    esi
  78f1d1:	5b                                              	pop    ebx
  78f1d2:	8b e5                                           	mov    esp,ebp
  78f1d4:	5d                                              	pop    ebp
  78f1d5:	c3                                              	ret
  78f1d6:	0f 57 c0                                        	xorps  xmm0,xmm0
  78f1d9:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  78f1dc:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  78f1df:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  78f1e3:	50                                              	push   eax
  78f1e4:	c7 44 24 34 b3 63 9b 09                         	mov    DWORD PTR [esp+0x34],0x99b63b3
  78f1ec:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
  78f1f0:	89 54 24 40                                     	mov    DWORD PTR [esp+0x40],edx
  78f1f4:	c7 44 24 38 d4 3d 16 01                         	mov    DWORD PTR [esp+0x38],0x1163dd4
  78f1fc:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
  78f202:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  78f208:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
  78f20e:	f3 0f 11 44 24 64                               	movss  DWORD PTR [esp+0x64],xmm0
  78f214:	f3 0f 11 44 24 60                               	movss  DWORD PTR [esp+0x60],xmm0
  78f21a:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
  78f220:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
  78f226:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
  78f22c:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
  78f232:	e8 49 41 f0 ff                                  	call   0x693380
  78f237:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  78f23b:	83 c4 04                                        	add    esp,0x4
  78f23e:	85 c9                                           	test   ecx,ecx
  78f240:	74 0b                                           	je     0x78f24d
  78f242:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  78f244:	8b 12                                           	mov    edx,DWORD PTR [edx]
  78f246:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  78f24a:	50                                              	push   eax
  78f24b:	ff d2                                           	call   edx
  78f24d:	5f                                              	pop    edi
  78f24e:	5e                                              	pop    esi
  78f24f:	5b                                              	pop    ebx
  78f250:	8b e5                                           	mov    esp,ebp
  78f252:	5d                                              	pop    ebp
  78f253:	c3                                              	ret
  78f254:	cc                                              	int3
  78f255:	cc                                              	int3
  78f256:	cc                                              	int3
  78f257:	cc                                              	int3
  78f258:	cc                                              	int3
  78f259:	cc                                              	int3
  78f25a:	cc                                              	int3
  78f25b:	cc                                              	int3
  78f25c:	cc                                              	int3
  78f25d:	cc                                              	int3
  78f25e:	cc                                              	int3
  78f25f:	cc                                              	int3
