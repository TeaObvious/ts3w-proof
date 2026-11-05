# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aa0e0 (ScriptCore.CASUtils::CASUtils_InitSceneImpl)
Paired Ghidra pseudocode: 005AA0E0_ScriptCore_CASUtils_CASUtils_InitSceneImpl.c
Window: [0x005aa0e0, 0x005aa260) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aa260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aa0e0: 83 ec 28 53 55 56 57 e8 a4 f2 1b 00 8b f8 8b 07
005aa0f0: 8b 90 18 01 00 00 8b cf ff d2 8b 5c 24 3c 8b f0
005aa100: 8b c3 25 00 00 00 ff 3d 00 00 00 30 89 74 24 10
005aa110: 89 54 24 14 74 07 33 ed e9 d3 00 00 00 e8 6e f2
005aa120: 1b 00 8b 10 8b c8 8b 82 cc 00 00 00 53 ff d0 85
005aa130: c0 74 12 8b 10 8b c8 8b 42 0c 68 6f 43 9a 03 ff
005aa140: d0 8b d8 eb 02 33 db 85 db 8b eb 89 6c 24 3c 0f
005aa150: 84 9b 00 00 00 8b 13 8b 02 8b cb ff d0 e8 8e 23
005aa160: ea ff 6a 28 8b e8 e8 b5 0c 1c 00 83 c4 04 85 c0
005aa170: 74 7a 8b 4c 24 14 53 51 56 8b c8 e8 f0 d7 ff ff
005aa180: 8b f0 85 f6 74 62 8b 16 8b 42 04 8b ce ff d0 8b
005aa190: 44 24 40 8b 4c 24 14 8b 17 8b 92 20 01 00 00 6a
005aa1a0: 00 50 8b 44 24 18 6a ff 51 50 8b cf ff d2 8b 45
005aa1b0: 00 8b 50 1c 6a 00 6a 00 56 68 f0 90 02 03 8b cd
005aa1c0: ff d2 8b 07 8b 90 1c 01 00 00 8b cf ff d2 8b 06
005aa1d0: 8b 50 08 8b ce ff d2 8b 03 8b 50 04 8b cb ff d2
005aa1e0: 5f 5e 5d 5b 83 c4 28 c3 8b 74 24 10 8b 6c 24 3c
005aa1f0: 8b 54 24 14 6a 00 8d 4c 24 1c 51 8b 4c 24 48 52
005aa200: bb f4 a6 fb 00 89 5c 24 24 c6 44 24 34 00 66 c7
005aa210: 44 24 2e 01 00 66 c7 44 24 2c 00 00 8b 07 8b 90
005aa220: 30 01 00 00 56 51 8b cf ff d2 f6 44 24 20 04 89
005aa230: 5c 24 18 74 0b 6a 00 8d 4c 24 1c e8 20 b5 f4 ff
005aa240: 85 ed 74 0a 8b 45 00 8b 50 04 8b cd ff d2 5f 5e
005aa250: 5d 5b 83 c4 28 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005aa0e0 <.text+0x1a90e0>:
  5aa0e0:	83 ec 28                                        	sub    esp,0x28
  5aa0e3:	53                                              	push   ebx
  5aa0e4:	55                                              	push   ebp
  5aa0e5:	56                                              	push   esi
  5aa0e6:	57                                              	push   edi
  5aa0e7:	e8 a4 f2 1b 00                                  	call   0x769390
  5aa0ec:	8b f8                                           	mov    edi,eax
  5aa0ee:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5aa0f0:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  5aa0f6:	8b cf                                           	mov    ecx,edi
  5aa0f8:	ff d2                                           	call   edx
  5aa0fa:	8b 5c 24 3c                                     	mov    ebx,DWORD PTR [esp+0x3c]
  5aa0fe:	8b f0                                           	mov    esi,eax
  5aa100:	8b c3                                           	mov    eax,ebx
  5aa102:	25 00 00 00 ff                                  	and    eax,0xff000000
  5aa107:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  5aa10c:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  5aa110:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5aa114:	74 07                                           	je     0x5aa11d
  5aa116:	33 ed                                           	xor    ebp,ebp
  5aa118:	e9 d3 00 00 00                                  	jmp    0x5aa1f0
  5aa11d:	e8 6e f2 1b 00                                  	call   0x769390
  5aa122:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aa124:	8b c8                                           	mov    ecx,eax
  5aa126:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5aa12c:	53                                              	push   ebx
  5aa12d:	ff d0                                           	call   eax
  5aa12f:	85 c0                                           	test   eax,eax
  5aa131:	74 12                                           	je     0x5aa145
  5aa133:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aa135:	8b c8                                           	mov    ecx,eax
  5aa137:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5aa13a:	68 6f 43 9a 03                                  	push   0x39a436f
  5aa13f:	ff d0                                           	call   eax
  5aa141:	8b d8                                           	mov    ebx,eax
  5aa143:	eb 02                                           	jmp    0x5aa147
  5aa145:	33 db                                           	xor    ebx,ebx
  5aa147:	85 db                                           	test   ebx,ebx
  5aa149:	8b eb                                           	mov    ebp,ebx
  5aa14b:	89 6c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebp
  5aa14f:	0f 84 9b 00 00 00                               	je     0x5aa1f0
  5aa155:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  5aa157:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5aa159:	8b cb                                           	mov    ecx,ebx
  5aa15b:	ff d0                                           	call   eax
  5aa15d:	e8 8e 23 ea ff                                  	call   0x44c4f0
  5aa162:	6a 28                                           	push   0x28
  5aa164:	8b e8                                           	mov    ebp,eax
  5aa166:	e8 b5 0c 1c 00                                  	call   0x76ae20
  5aa16b:	83 c4 04                                        	add    esp,0x4
  5aa16e:	85 c0                                           	test   eax,eax
  5aa170:	74 7a                                           	je     0x5aa1ec
  5aa172:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5aa176:	53                                              	push   ebx
  5aa177:	51                                              	push   ecx
  5aa178:	56                                              	push   esi
  5aa179:	8b c8                                           	mov    ecx,eax
  5aa17b:	e8 f0 d7 ff ff                                  	call   0x5a7970
  5aa180:	8b f0                                           	mov    esi,eax
  5aa182:	85 f6                                           	test   esi,esi
  5aa184:	74 62                                           	je     0x5aa1e8
  5aa186:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5aa188:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5aa18b:	8b ce                                           	mov    ecx,esi
  5aa18d:	ff d0                                           	call   eax
  5aa18f:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  5aa193:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5aa197:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5aa199:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
  5aa19f:	6a 00                                           	push   0x0
  5aa1a1:	50                                              	push   eax
  5aa1a2:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5aa1a6:	6a ff                                           	push   0xffffffff
  5aa1a8:	51                                              	push   ecx
  5aa1a9:	50                                              	push   eax
  5aa1aa:	8b cf                                           	mov    ecx,edi
  5aa1ac:	ff d2                                           	call   edx
  5aa1ae:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  5aa1b1:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  5aa1b4:	6a 00                                           	push   0x0
  5aa1b6:	6a 00                                           	push   0x0
  5aa1b8:	56                                              	push   esi
  5aa1b9:	68 f0 90 02 03                                  	push   0x30290f0
  5aa1be:	8b cd                                           	mov    ecx,ebp
  5aa1c0:	ff d2                                           	call   edx
  5aa1c2:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5aa1c4:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  5aa1ca:	8b cf                                           	mov    ecx,edi
  5aa1cc:	ff d2                                           	call   edx
  5aa1ce:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5aa1d0:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5aa1d3:	8b ce                                           	mov    ecx,esi
  5aa1d5:	ff d2                                           	call   edx
  5aa1d7:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5aa1d9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5aa1dc:	8b cb                                           	mov    ecx,ebx
  5aa1de:	ff d2                                           	call   edx
  5aa1e0:	5f                                              	pop    edi
  5aa1e1:	5e                                              	pop    esi
  5aa1e2:	5d                                              	pop    ebp
  5aa1e3:	5b                                              	pop    ebx
  5aa1e4:	83 c4 28                                        	add    esp,0x28
  5aa1e7:	c3                                              	ret
  5aa1e8:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  5aa1ec:	8b 6c 24 3c                                     	mov    ebp,DWORD PTR [esp+0x3c]
  5aa1f0:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  5aa1f4:	6a 00                                           	push   0x0
  5aa1f6:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5aa1fa:	51                                              	push   ecx
  5aa1fb:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  5aa1ff:	52                                              	push   edx
  5aa200:	bb f4 a6 fb 00                                  	mov    ebx,0xfba6f4
  5aa205:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  5aa209:	c6 44 24 34 00                                  	mov    BYTE PTR [esp+0x34],0x0
  5aa20e:	66 c7 44 24 2e 01 00                            	mov    WORD PTR [esp+0x2e],0x1
  5aa215:	66 c7 44 24 2c 00 00                            	mov    WORD PTR [esp+0x2c],0x0
  5aa21c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5aa21e:	8b 90 30 01 00 00                               	mov    edx,DWORD PTR [eax+0x130]
  5aa224:	56                                              	push   esi
  5aa225:	51                                              	push   ecx
  5aa226:	8b cf                                           	mov    ecx,edi
  5aa228:	ff d2                                           	call   edx
  5aa22a:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  5aa22f:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  5aa233:	74 0b                                           	je     0x5aa240
  5aa235:	6a 00                                           	push   0x0
  5aa237:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5aa23b:	e8 20 b5 f4 ff                                  	call   0x4f5760
  5aa240:	85 ed                                           	test   ebp,ebp
  5aa242:	74 0a                                           	je     0x5aa24e
  5aa244:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  5aa247:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5aa24a:	8b cd                                           	mov    ecx,ebp
  5aa24c:	ff d2                                           	call   edx
  5aa24e:	5f                                              	pop    edi
  5aa24f:	5e                                              	pop    esi
  5aa250:	5d                                              	pop    ebp
  5aa251:	5b                                              	pop    ebx
  5aa252:	83 c4 28                                        	add    esp,0x28
  5aa255:	c3                                              	ret
  5aa256:	cc                                              	int3
  5aa257:	cc                                              	int3
  5aa258:	cc                                              	int3
  5aa259:	cc                                              	int3
  5aa25a:	cc                                              	int3
  5aa25b:	cc                                              	int3
  5aa25c:	cc                                              	int3
  5aa25d:	cc                                              	int3
  5aa25e:	cc                                              	int3
  5aa25f:	cc                                              	int3
