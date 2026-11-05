# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073cfe0 (GetNativeRegistrationTable_CacheManager)
Paired Ghidra pseudocode: 0073CFE0_GetNativeRegistrationTable_CacheManager.c
Window: [0x0073cfe0, 0x0073d480) (1184 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073cfe0: 8b 44 24 04 c7 00 f8 eb 15 01 c2 04 00 cc cc cc
0073cff0: 81 ec 88 04 00 00 53 55 56 8b f1 89 35 40 4e 1d
0073d000: 01 e8 3a 21 ff ff 8b 10 8b c8 8b 42 28 ff d0 33
0073d010: db 3b c3 0f 84 4f 04 00 00 8d 8c 24 84 00 00 00
0073d020: 8b d1 89 54 24 74 89 8c 24 80 00 00 00 89 4c 24
0073d030: 70 8d 94 24 8c 02 00 00 50 8d 4c 24 74 89 54 24
0073d040: 7c 66 89 9c 24 88 00 00 00 c7 84 24 80 00 00 00
0073d050: 58 09 00 01 e8 a7 9c d0 ff b8 30 09 00 01 8b ff
0073d060: 83 c0 02 66 39 18 75 f8 2d 30 09 00 01 d1 f8 8d
0073d070: 04 45 30 09 00 01 50 68 30 09 00 01 8d 4c 24 78
0073d080: e8 2b 90 d1 ff 53 53 53 53 68 1c 09 00 01 68 98
0073d090: 03 00 00 e8 c8 76 da ff 83 c4 18 3b c3 74 0b 53
0073d0a0: 53 8b c8 e8 e8 c1 d6 ff eb 02 33 c0 3b c3 89 46
0073d0b0: 04 0f 84 89 03 00 00 8b 50 04 8d 48 04 8b 02 ff
0073d0c0: d0 8b 4e 04 8b 11 8b 42 04 ff d0 84 c0 75 16 8b
0073d0d0: 46 04 8b 50 04 8d 48 04 8b 42 04 ff d0 89 5e 04
0073d0e0: e9 5b 03 00 00 8b 4e 04 8b 11 8b 44 24 70 8b 52
0073d0f0: 2c 50 ff d2 8b 4e 04 8b 01 8b 50 18 53 6a 04 6a
0073d100: 03 ff d2 84 c0 75 1a 8b 4e 04 8b 01 8b 50 08 ff
0073d110: d2 8b 46 04 8d 48 04 8b 01 8b 50 04 ff d2 89 5e
0073d120: 04 68 fc 08 00 01 e8 95 2f 09 00 8b 4e 04 83 c4
0073d130: 04 53 6a 01 6a 06 89 54 24 64 6a 01 8d 54 24 20
0073d140: 89 44 24 64 52 89 5c 24 70 89 5c 24 74 89 5c 24
0073d150: 24 8b 01 8b 40 34 8d 54 24 68 52 ff d0 84 c0 74
0073d160: 0d 8b 4c 24 10 8b 11 8b 42 20 ff d0 eb 07 8b ce
0073d170: e8 4b fd ff ff 8d 8c 24 8c 02 00 00 68 04 01 00
0073d180: 00 51 e8 79 36 09 00 83 c4 08 85 c0 0f 84 9f 02
0073d190: 00 00 57 b9 e0 ed 1c 01 e8 23 8f df ff 8d 94 24
0073d1a0: 90 02 00 00 52 89 44 24 24 e8 82 ec d9 ff 89 44
0073d1b0: 24 30 8d 84 24 94 02 00 00 6a 02 50 e8 ff ec d9
0073d1c0: ff 83 c4 0c 8d 4c 24 1c 51 b9 e0 ed 1c 01 89 44
0073d1d0: 24 28 89 54 24 2c 33 ed c7 44 24 20 01 00 00 00
0073d1e0: e8 2b 83 e5 ff 8b f8 85 ff 74 4c 8d 54 24 18 52
0073d1f0: 8d 4c 24 4c c7 44 24 1c d8 08 00 01 e8 ef b6 cc
0073d200: ff 8b 07 50 8d 4c 24 4c e8 43 bd cc ff 68 b0 08
0073d210: 00 01 8d 4c 24 4c e8 35 67 da ff 8b 4c 24 48 6a
0073d220: 02 51 e8 99 ec d9 ff 83 c4 08 8d 4c 24 48 8b e8
0073d230: 8b da e8 b9 26 db ff 8b 4e 04 6a 00 6a 01 6a 06
0073d240: 6a 01 8d 44 24 20 50 c7 44 24 24 00 00 00 00 8b
0073d250: 11 8b 52 34 8d 44 24 6c 50 ff d2 84 c0 5f 0f 84
0073d260: f8 00 00 00 8b 4c 24 0c 8b 01 8b 50 18 ff d2 85
0073d270: c0 0f 84 e5 00 00 00 6a 01 50 8d 4c 24 34 e8 5d
0073d280: c1 09 00 8d 44 24 6c 50 8d 4c 24 30 e8 1f b2 e2
0073d290: ff 8d 4c 24 14 51 8d 4c 24 30 e8 11 b2 e2 ff 8d
0073d2a0: 54 24 18 52 8d 4c 24 30 e8 03 b2 e2 ff 8d 44 24
0073d2b0: 64 50 8d 4c 24 30 e8 d5 16 ec ff 8d 4c 24 44 51
0073d2c0: 8d 4c 24 30 e8 c7 16 ec ff 8b 4e 04 8b 11 8b 44
0073d2d0: 24 0c 8b 52 3c 50 ff d2 80 7c 24 40 00 74 74 8b
0073d2e0: 44 24 14 3b 44 24 1c 75 6a 8b 4c 24 18 3b 4c 24
0073d2f0: 28 75 60 8b 54 24 64 3b 54 24 20 75 56 8b 44 24
0073d300: 68 3b 44 24 24 75 4c 8b 4c 24 44 3b cd 75 44 8b
0073d310: 54 24 48 3b d3 75 3c 8d 4c 24 2c e8 70 a6 09 00
0073d320: 8b 4c 24 0c 85 c9 74 07 8b 01 8b 50 08 ff d2 8b
0073d330: 4c 24 10 85 c9 74 07 8b 01 8b 50 08 ff d2 8d 4c
0073d340: 24 70 e8 49 9b d0 ff 5e 5d b0 01 5b 81 c4 88 04
0073d350: 00 00 c3 8d 4c 24 2c e8 34 a6 09 00 8b ce e8 5d
0073d360: fb ff ff 8b 4c 24 0c 85 c9 74 0f c7 44 24 0c 00
0073d370: 00 00 00 8b 01 8b 50 08 ff d2 8b 4e 04 8b 01 8b
0073d380: 40 34 6a 00 6a 01 6a 06 6a 02 8d 54 24 1c 52 8d
0073d390: 54 24 68 52 ff d0 84 c0 0f 84 82 00 00 00 8b 4c
0073d3a0: 24 0c 8b 11 8b 42 18 ff d0 85 c0 74 5a 6a 01 50
0073d3b0: 8d 4c 24 34 e8 27 c0 09 00 6a 01 8d 4c 24 30 e8
0073d3c0: 1c 87 e2 ff 8b 4c 24 1c 51 8d 4c 24 30 e8 0e 87
0073d3d0: e2 ff 8b 54 24 28 52 8d 4c 24 30 e8 00 87 e2 ff
0073d3e0: 8b 44 24 24 8b 4c 24 20 50 51 8d 4c 24 34 e8 cd
0073d3f0: 15 ec ff 53 55 8d 4c 24 34 e8 c2 15 ec ff 8d 4c
0073d400: 24 2c e8 89 a5 09 00 8b 4e 04 8b 11 8b 44 24 0c
0073d410: 8b 52 3c 50 ff d2 8b 4e 04 8b 01 8b 50 24 ff d2
0073d420: 8b 4c 24 0c 85 c9 74 07 8b 01 8b 50 08 ff d2 33
0073d430: db 8b 4c 24 10 3b cb 74 07 8b 01 8b 50 08 ff d2
0073d440: 8b 4c 24 78 8b 44 24 70 2b c8 83 e1 fe 83 f9 02
0073d450: 7e 16 3b c3 74 12 3b 84 24 80 00 00 00 74 09 50
0073d460: e8 7b 70 da ff 83 c4 04 5e 5d b0 01 5b 81 c4 88
0073d470: 04 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073cfe0 <.text+0x33bfe0>:
  73cfe0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  73cfe4:	c7 00 f8 eb 15 01                               	mov    DWORD PTR [eax],0x115ebf8
  73cfea:	c2 04 00                                        	ret    0x4
  73cfed:	cc                                              	int3
  73cfee:	cc                                              	int3
  73cfef:	cc                                              	int3
  73cff0:	81 ec 88 04 00 00                               	sub    esp,0x488
  73cff6:	53                                              	push   ebx
  73cff7:	55                                              	push   ebp
  73cff8:	56                                              	push   esi
  73cff9:	8b f1                                           	mov    esi,ecx
  73cffb:	89 35 40 4e 1d 01                               	mov    DWORD PTR ds:0x11d4e40,esi
  73d001:	e8 3a 21 ff ff                                  	call   0x72f140
  73d006:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73d008:	8b c8                                           	mov    ecx,eax
  73d00a:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
  73d00d:	ff d0                                           	call   eax
  73d00f:	33 db                                           	xor    ebx,ebx
  73d011:	3b c3                                           	cmp    eax,ebx
  73d013:	0f 84 4f 04 00 00                               	je     0x73d468
  73d019:	8d 8c 24 84 00 00 00                            	lea    ecx,[esp+0x84]
  73d020:	8b d1                                           	mov    edx,ecx
  73d022:	89 54 24 74                                     	mov    DWORD PTR [esp+0x74],edx
  73d026:	89 8c 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],ecx
  73d02d:	89 4c 24 70                                     	mov    DWORD PTR [esp+0x70],ecx
  73d031:	8d 94 24 8c 02 00 00                            	lea    edx,[esp+0x28c]
  73d038:	50                                              	push   eax
  73d039:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  73d03d:	89 54 24 7c                                     	mov    DWORD PTR [esp+0x7c],edx
  73d041:	66 89 9c 24 88 00 00 00                         	mov    WORD PTR [esp+0x88],bx
  73d049:	c7 84 24 80 00 00 00 58 09 00 01                	mov    DWORD PTR [esp+0x80],0x1000958
  73d054:	e8 a7 9c d0 ff                                  	call   0x446d00
  73d059:	b8 30 09 00 01                                  	mov    eax,0x1000930
  73d05e:	8b ff                                           	mov    edi,edi
  73d060:	83 c0 02                                        	add    eax,0x2
  73d063:	66 39 18                                        	cmp    WORD PTR [eax],bx
  73d066:	75 f8                                           	jne    0x73d060
  73d068:	2d 30 09 00 01                                  	sub    eax,0x1000930
  73d06d:	d1 f8                                           	sar    eax,1
  73d06f:	8d 04 45 30 09 00 01                            	lea    eax,[eax*2+0x1000930]
  73d076:	50                                              	push   eax
  73d077:	68 30 09 00 01                                  	push   0x1000930
  73d07c:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  73d080:	e8 2b 90 d1 ff                                  	call   0x4560b0
  73d085:	53                                              	push   ebx
  73d086:	53                                              	push   ebx
  73d087:	53                                              	push   ebx
  73d088:	53                                              	push   ebx
  73d089:	68 1c 09 00 01                                  	push   0x100091c
  73d08e:	68 98 03 00 00                                  	push   0x398
  73d093:	e8 c8 76 da ff                                  	call   0x4e4760
  73d098:	83 c4 18                                        	add    esp,0x18
  73d09b:	3b c3                                           	cmp    eax,ebx
  73d09d:	74 0b                                           	je     0x73d0aa
  73d09f:	53                                              	push   ebx
  73d0a0:	53                                              	push   ebx
  73d0a1:	8b c8                                           	mov    ecx,eax
  73d0a3:	e8 e8 c1 d6 ff                                  	call   0x4a9290
  73d0a8:	eb 02                                           	jmp    0x73d0ac
  73d0aa:	33 c0                                           	xor    eax,eax
  73d0ac:	3b c3                                           	cmp    eax,ebx
  73d0ae:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  73d0b1:	0f 84 89 03 00 00                               	je     0x73d440
  73d0b7:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  73d0ba:	8d 48 04                                        	lea    ecx,[eax+0x4]
  73d0bd:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73d0bf:	ff d0                                           	call   eax
  73d0c1:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73d0c4:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  73d0c6:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  73d0c9:	ff d0                                           	call   eax
  73d0cb:	84 c0                                           	test   al,al
  73d0cd:	75 16                                           	jne    0x73d0e5
  73d0cf:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  73d0d2:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  73d0d5:	8d 48 04                                        	lea    ecx,[eax+0x4]
  73d0d8:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  73d0db:	ff d0                                           	call   eax
  73d0dd:	89 5e 04                                        	mov    DWORD PTR [esi+0x4],ebx
  73d0e0:	e9 5b 03 00 00                                  	jmp    0x73d440
  73d0e5:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73d0e8:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  73d0ea:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
  73d0ee:	8b 52 2c                                        	mov    edx,DWORD PTR [edx+0x2c]
  73d0f1:	50                                              	push   eax
  73d0f2:	ff d2                                           	call   edx
  73d0f4:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73d0f7:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d0f9:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  73d0fc:	53                                              	push   ebx
  73d0fd:	6a 04                                           	push   0x4
  73d0ff:	6a 03                                           	push   0x3
  73d101:	ff d2                                           	call   edx
  73d103:	84 c0                                           	test   al,al
  73d105:	75 1a                                           	jne    0x73d121
  73d107:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73d10a:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d10c:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  73d10f:	ff d2                                           	call   edx
  73d111:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  73d114:	8d 48 04                                        	lea    ecx,[eax+0x4]
  73d117:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d119:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  73d11c:	ff d2                                           	call   edx
  73d11e:	89 5e 04                                        	mov    DWORD PTR [esi+0x4],ebx
  73d121:	68 fc 08 00 01                                  	push   0x10008fc
  73d126:	e8 95 2f 09 00                                  	call   0x7d00c0
  73d12b:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73d12e:	83 c4 04                                        	add    esp,0x4
  73d131:	53                                              	push   ebx
  73d132:	6a 01                                           	push   0x1
  73d134:	6a 06                                           	push   0x6
  73d136:	89 54 24 64                                     	mov    DWORD PTR [esp+0x64],edx
  73d13a:	6a 01                                           	push   0x1
  73d13c:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  73d140:	89 44 24 64                                     	mov    DWORD PTR [esp+0x64],eax
  73d144:	52                                              	push   edx
  73d145:	89 5c 24 70                                     	mov    DWORD PTR [esp+0x70],ebx
  73d149:	89 5c 24 74                                     	mov    DWORD PTR [esp+0x74],ebx
  73d14d:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  73d151:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d153:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
  73d156:	8d 54 24 68                                     	lea    edx,[esp+0x68]
  73d15a:	52                                              	push   edx
  73d15b:	ff d0                                           	call   eax
  73d15d:	84 c0                                           	test   al,al
  73d15f:	74 0d                                           	je     0x73d16e
  73d161:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73d165:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  73d167:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
  73d16a:	ff d0                                           	call   eax
  73d16c:	eb 07                                           	jmp    0x73d175
  73d16e:	8b ce                                           	mov    ecx,esi
  73d170:	e8 4b fd ff ff                                  	call   0x73cec0
  73d175:	8d 8c 24 8c 02 00 00                            	lea    ecx,[esp+0x28c]
  73d17c:	68 04 01 00 00                                  	push   0x104
  73d181:	51                                              	push   ecx
  73d182:	e8 79 36 09 00                                  	call   0x7d0800
  73d187:	83 c4 08                                        	add    esp,0x8
  73d18a:	85 c0                                           	test   eax,eax
  73d18c:	0f 84 9f 02 00 00                               	je     0x73d431
  73d192:	57                                              	push   edi
  73d193:	b9 e0 ed 1c 01                                  	mov    ecx,0x11cede0
  73d198:	e8 23 8f df ff                                  	call   0x5360c0
  73d19d:	8d 94 24 90 02 00 00                            	lea    edx,[esp+0x290]
  73d1a4:	52                                              	push   edx
  73d1a5:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  73d1a9:	e8 82 ec d9 ff                                  	call   0x4dbe30
  73d1ae:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  73d1b2:	8d 84 24 94 02 00 00                            	lea    eax,[esp+0x294]
  73d1b9:	6a 02                                           	push   0x2
  73d1bb:	50                                              	push   eax
  73d1bc:	e8 ff ec d9 ff                                  	call   0x4dbec0
  73d1c1:	83 c4 0c                                        	add    esp,0xc
  73d1c4:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  73d1c8:	51                                              	push   ecx
  73d1c9:	b9 e0 ed 1c 01                                  	mov    ecx,0x11cede0
  73d1ce:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  73d1d2:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  73d1d6:	33 ed                                           	xor    ebp,ebp
  73d1d8:	c7 44 24 20 01 00 00 00                         	mov    DWORD PTR [esp+0x20],0x1
  73d1e0:	e8 2b 83 e5 ff                                  	call   0x595510
  73d1e5:	8b f8                                           	mov    edi,eax
  73d1e7:	85 ff                                           	test   edi,edi
  73d1e9:	74 4c                                           	je     0x73d237
  73d1eb:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  73d1ef:	52                                              	push   edx
  73d1f0:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  73d1f4:	c7 44 24 1c d8 08 00 01                         	mov    DWORD PTR [esp+0x1c],0x10008d8
  73d1fc:	e8 ef b6 cc ff                                  	call   0x4088f0
  73d201:	8b 07                                           	mov    eax,DWORD PTR [edi]
  73d203:	50                                              	push   eax
  73d204:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  73d208:	e8 43 bd cc ff                                  	call   0x408f50
  73d20d:	68 b0 08 00 01                                  	push   0x10008b0
  73d212:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  73d216:	e8 35 67 da ff                                  	call   0x4e3950
  73d21b:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  73d21f:	6a 02                                           	push   0x2
  73d221:	51                                              	push   ecx
  73d222:	e8 99 ec d9 ff                                  	call   0x4dbec0
  73d227:	83 c4 08                                        	add    esp,0x8
  73d22a:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  73d22e:	8b e8                                           	mov    ebp,eax
  73d230:	8b da                                           	mov    ebx,edx
  73d232:	e8 b9 26 db ff                                  	call   0x4ef8f0
  73d237:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73d23a:	6a 00                                           	push   0x0
  73d23c:	6a 01                                           	push   0x1
  73d23e:	6a 06                                           	push   0x6
  73d240:	6a 01                                           	push   0x1
  73d242:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  73d246:	50                                              	push   eax
  73d247:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  73d24f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  73d251:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
  73d254:	8d 44 24 6c                                     	lea    eax,[esp+0x6c]
  73d258:	50                                              	push   eax
  73d259:	ff d2                                           	call   edx
  73d25b:	84 c0                                           	test   al,al
  73d25d:	5f                                              	pop    edi
  73d25e:	0f 84 f8 00 00 00                               	je     0x73d35c
  73d264:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  73d268:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d26a:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  73d26d:	ff d2                                           	call   edx
  73d26f:	85 c0                                           	test   eax,eax
  73d271:	0f 84 e5 00 00 00                               	je     0x73d35c
  73d277:	6a 01                                           	push   0x1
  73d279:	50                                              	push   eax
  73d27a:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  73d27e:	e8 5d c1 09 00                                  	call   0x7d93e0
  73d283:	8d 44 24 6c                                     	lea    eax,[esp+0x6c]
  73d287:	50                                              	push   eax
  73d288:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  73d28c:	e8 1f b2 e2 ff                                  	call   0x5684b0
  73d291:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  73d295:	51                                              	push   ecx
  73d296:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  73d29a:	e8 11 b2 e2 ff                                  	call   0x5684b0
  73d29f:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  73d2a3:	52                                              	push   edx
  73d2a4:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  73d2a8:	e8 03 b2 e2 ff                                  	call   0x5684b0
  73d2ad:	8d 44 24 64                                     	lea    eax,[esp+0x64]
  73d2b1:	50                                              	push   eax
  73d2b2:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  73d2b6:	e8 d5 16 ec ff                                  	call   0x5fe990
  73d2bb:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  73d2bf:	51                                              	push   ecx
  73d2c0:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  73d2c4:	e8 c7 16 ec ff                                  	call   0x5fe990
  73d2c9:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73d2cc:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  73d2ce:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  73d2d2:	8b 52 3c                                        	mov    edx,DWORD PTR [edx+0x3c]
  73d2d5:	50                                              	push   eax
  73d2d6:	ff d2                                           	call   edx
  73d2d8:	80 7c 24 40 00                                  	cmp    BYTE PTR [esp+0x40],0x0
  73d2dd:	74 74                                           	je     0x73d353
  73d2df:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  73d2e3:	3b 44 24 1c                                     	cmp    eax,DWORD PTR [esp+0x1c]
  73d2e7:	75 6a                                           	jne    0x73d353
  73d2e9:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  73d2ed:	3b 4c 24 28                                     	cmp    ecx,DWORD PTR [esp+0x28]
  73d2f1:	75 60                                           	jne    0x73d353
  73d2f3:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  73d2f7:	3b 54 24 20                                     	cmp    edx,DWORD PTR [esp+0x20]
  73d2fb:	75 56                                           	jne    0x73d353
  73d2fd:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
  73d301:	3b 44 24 24                                     	cmp    eax,DWORD PTR [esp+0x24]
  73d305:	75 4c                                           	jne    0x73d353
  73d307:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  73d30b:	3b cd                                           	cmp    ecx,ebp
  73d30d:	75 44                                           	jne    0x73d353
  73d30f:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  73d313:	3b d3                                           	cmp    edx,ebx
  73d315:	75 3c                                           	jne    0x73d353
  73d317:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  73d31b:	e8 70 a6 09 00                                  	call   0x7d7990
  73d320:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  73d324:	85 c9                                           	test   ecx,ecx
  73d326:	74 07                                           	je     0x73d32f
  73d328:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d32a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  73d32d:	ff d2                                           	call   edx
  73d32f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73d333:	85 c9                                           	test   ecx,ecx
  73d335:	74 07                                           	je     0x73d33e
  73d337:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d339:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  73d33c:	ff d2                                           	call   edx
  73d33e:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  73d342:	e8 49 9b d0 ff                                  	call   0x446e90
  73d347:	5e                                              	pop    esi
  73d348:	5d                                              	pop    ebp
  73d349:	b0 01                                           	mov    al,0x1
  73d34b:	5b                                              	pop    ebx
  73d34c:	81 c4 88 04 00 00                               	add    esp,0x488
  73d352:	c3                                              	ret
  73d353:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  73d357:	e8 34 a6 09 00                                  	call   0x7d7990
  73d35c:	8b ce                                           	mov    ecx,esi
  73d35e:	e8 5d fb ff ff                                  	call   0x73cec0
  73d363:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  73d367:	85 c9                                           	test   ecx,ecx
  73d369:	74 0f                                           	je     0x73d37a
  73d36b:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  73d373:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d375:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  73d378:	ff d2                                           	call   edx
  73d37a:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73d37d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d37f:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
  73d382:	6a 00                                           	push   0x0
  73d384:	6a 01                                           	push   0x1
  73d386:	6a 06                                           	push   0x6
  73d388:	6a 02                                           	push   0x2
  73d38a:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  73d38e:	52                                              	push   edx
  73d38f:	8d 54 24 68                                     	lea    edx,[esp+0x68]
  73d393:	52                                              	push   edx
  73d394:	ff d0                                           	call   eax
  73d396:	84 c0                                           	test   al,al
  73d398:	0f 84 82 00 00 00                               	je     0x73d420
  73d39e:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  73d3a2:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  73d3a4:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  73d3a7:	ff d0                                           	call   eax
  73d3a9:	85 c0                                           	test   eax,eax
  73d3ab:	74 5a                                           	je     0x73d407
  73d3ad:	6a 01                                           	push   0x1
  73d3af:	50                                              	push   eax
  73d3b0:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  73d3b4:	e8 27 c0 09 00                                  	call   0x7d93e0
  73d3b9:	6a 01                                           	push   0x1
  73d3bb:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  73d3bf:	e8 1c 87 e2 ff                                  	call   0x565ae0
  73d3c4:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  73d3c8:	51                                              	push   ecx
  73d3c9:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  73d3cd:	e8 0e 87 e2 ff                                  	call   0x565ae0
  73d3d2:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  73d3d6:	52                                              	push   edx
  73d3d7:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  73d3db:	e8 00 87 e2 ff                                  	call   0x565ae0
  73d3e0:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  73d3e4:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  73d3e8:	50                                              	push   eax
  73d3e9:	51                                              	push   ecx
  73d3ea:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  73d3ee:	e8 cd 15 ec ff                                  	call   0x5fe9c0
  73d3f3:	53                                              	push   ebx
  73d3f4:	55                                              	push   ebp
  73d3f5:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  73d3f9:	e8 c2 15 ec ff                                  	call   0x5fe9c0
  73d3fe:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  73d402:	e8 89 a5 09 00                                  	call   0x7d7990
  73d407:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73d40a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  73d40c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  73d410:	8b 52 3c                                        	mov    edx,DWORD PTR [edx+0x3c]
  73d413:	50                                              	push   eax
  73d414:	ff d2                                           	call   edx
  73d416:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  73d419:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d41b:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  73d41e:	ff d2                                           	call   edx
  73d420:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  73d424:	85 c9                                           	test   ecx,ecx
  73d426:	74 07                                           	je     0x73d42f
  73d428:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d42a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  73d42d:	ff d2                                           	call   edx
  73d42f:	33 db                                           	xor    ebx,ebx
  73d431:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73d435:	3b cb                                           	cmp    ecx,ebx
  73d437:	74 07                                           	je     0x73d440
  73d439:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73d43b:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  73d43e:	ff d2                                           	call   edx
  73d440:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
  73d444:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
  73d448:	2b c8                                           	sub    ecx,eax
  73d44a:	83 e1 fe                                        	and    ecx,0xfffffffe
  73d44d:	83 f9 02                                        	cmp    ecx,0x2
  73d450:	7e 16                                           	jle    0x73d468
  73d452:	3b c3                                           	cmp    eax,ebx
  73d454:	74 12                                           	je     0x73d468
  73d456:	3b 84 24 80 00 00 00                            	cmp    eax,DWORD PTR [esp+0x80]
  73d45d:	74 09                                           	je     0x73d468
  73d45f:	50                                              	push   eax
  73d460:	e8 7b 70 da ff                                  	call   0x4e44e0
  73d465:	83 c4 04                                        	add    esp,0x4
  73d468:	5e                                              	pop    esi
  73d469:	5d                                              	pop    ebp
  73d46a:	b0 01                                           	mov    al,0x1
  73d46c:	5b                                              	pop    ebx
  73d46d:	81 c4 88 04 00 00                               	add    esp,0x488
  73d473:	c3                                              	ret
  73d474:	cc                                              	int3
  73d475:	cc                                              	int3
  73d476:	cc                                              	int3
  73d477:	cc                                              	int3
  73d478:	cc                                              	int3
  73d479:	cc                                              	int3
  73d47a:	cc                                              	int3
  73d47b:	cc                                              	int3
  73d47c:	cc                                              	int3
  73d47d:	cc                                              	int3
  73d47e:	cc                                              	int3
  73d47f:	cc                                              	int3
