# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056afd0 (ThumbnailManager_UpdateDirtyLotThumbnails)
Paired Ghidra pseudocode: 1056AFD0_ThumbnailManager_UpdateDirtyLotThumbnails.c
Window: [0x1056afd0, 0x1056b260) (656 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056b260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056afd0: 55 8b ec 83 e4 f8 81 ec 84 01 00 00 53 56 57 e8
1056afe0: 3c 01 ff ff 8b f0 8b 06 8b 90 18 01 00 00 8b ce
1056aff0: 89 74 24 2c ff d2 8b 3d c4 00 c7 10 89 44 24 18
1056b000: a1 50 11 c7 10 33 db 3b fb 89 54 24 1c c6 44 24
1056b010: 12 00 89 44 24 34 74 7e 3b c3 74 7a 53 53 53 53
1056b020: 68 5c 0a b2 10 6a 38 c6 44 24 2a 01 88 5c 24 2b
1056b030: e8 7b de 3a 00 83 c4 18 3b c3 0f 84 af 00 00 00
1056b040: 8b 4d 08 8b 54 24 1c 51 8b 4c 24 1c 52 51 8b c8
1056b050: e8 9b ec ff ff 3b c3 89 44 24 14 74 09 8b 10 8b
1056b060: c8 8b 42 04 ff d0 6a 01 8b cf e8 d1 1f cd ff 8b
1056b070: 48 04 2b 08 8b d3 c1 f9 02 89 44 24 30 89 4c 24
1056b080: 28 89 54 24 24 75 7d 8b 4c 24 14 3b cb 74 07 8b
1056b090: 01 8b 50 08 ff d2 8a 44 24 12 8b 4c 24 1c 88 44
1056b0a0: 24 48 53 8d 44 24 3c 50 8b 44 24 20 51 8b 4d 08
1056b0b0: bf b4 a5 ac 10 89 7c 24 44 66 c7 44 24 4e 01 00
1056b0c0: 66 89 5c 24 4c 8b 16 8b 92 30 01 00 00 50 51 8b
1056b0d0: ce ff d2 f6 44 24 40 04 89 7c 24 38 74 0a 53 8d
1056b0e0: 4c 24 3c e8 a8 d9 3b 00 5f 5e 5b 8b e5 5d c3 89
1056b0f0: 5c 24 14 e9 6e ff ff ff eb 06 8d 9b 00 00 00 00
1056b100: 8b 44 24 30 8b 00 8b 04 90 3b c3 0f 84 e9 00 00
1056b110: 00 8b 70 48 8b 78 4c 8d 4c 24 68 e8 20 03 b9 ff
1056b120: 89 b4 24 e0 00 00 00 89 9c 24 ec 00 00 00 89 74
1056b130: 24 58 89 5c 24 60 c7 84 24 e8 00 00 00 4c ee 6f
1056b140: 43 89 bc 24 e4 00 00 00 33 f6 bb 01 00 00 00 f6
1056b150: c3 04 74 2a 8b 54 24 58 83 ec 10 8b c4 89 10 8d
1056b160: 8e c4 7f 4e d8 89 78 04 89 48 08 33 c9 51 89 48
1056b170: 0c 56 8d 8c 24 80 00 00 00 e8 a2 2a b9 ff 83 c6
1056b180: 01 03 db 83 fe 04 72 c7 8b 74 24 34 8d 44 24 68
1056b190: 50 8b ce e8 28 b9 db ff 84 c0 75 20 8b 4c 24 14
1056b1a0: 51 6a 00 6a 00 6a 00 8d 54 24 78 52 8b ce e8 cd
1056b1b0: b3 dc ff 84 c0 74 05 c6 44 24 13 01 8b 84 24 f8
1056b1c0: 00 00 00 85 c0 74 12 3b 84 24 08 01 00 00 74 09
1056b1d0: 50 e8 ba dc 3a 00 83 c4 04 8b 44 24 68 85 c0 74
1056b1e0: 0f 3b 44 24 78 74 09 50 e8 a3 dc 3a 00 83 c4 04
1056b1f0: 8b 4c 24 28 8b 74 24 2c 33 db 8b 54 24 24 83 c2
1056b200: 01 3b d1 89 54 24 24 0f 82 f3 fe ff ff 80 7c 24
1056b210: 13 00 0f 84 6f fe ff ff 8b 4d 08 8b 54 24 1c 8b
1056b220: 06 53 51 8b 4c 24 20 6a ff 52 8b 90 20 01 00 00
1056b230: 51 8b ce ff d2 8b 06 8b 90 1c 01 00 00 8b ce ff
1056b240: d2 8b 4c 24 14 3b cb 0f 84 9b fe ff ff 8b 01 8b
1056b250: 50 08 ff d2 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1056afd0 <.text+0x569fd0>:
1056afd0:	55                                              	push   ebp
1056afd1:	8b ec                                           	mov    ebp,esp
1056afd3:	83 e4 f8                                        	and    esp,0xfffffff8
1056afd6:	81 ec 84 01 00 00                               	sub    esp,0x184
1056afdc:	53                                              	push   ebx
1056afdd:	56                                              	push   esi
1056afde:	57                                              	push   edi
1056afdf:	e8 3c 01 ff ff                                  	call   0x1055b120
1056afe4:	8b f0                                           	mov    esi,eax
1056afe6:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056afe8:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1056afee:	8b ce                                           	mov    ecx,esi
1056aff0:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
1056aff4:	ff d2                                           	call   edx
1056aff6:	8b 3d c4 00 c7 10                               	mov    edi,DWORD PTR ds:0x10c700c4
1056affc:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1056b000:	a1 50 11 c7 10                                  	mov    eax,ds:0x10c71150
1056b005:	33 db                                           	xor    ebx,ebx
1056b007:	3b fb                                           	cmp    edi,ebx
1056b009:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
1056b00d:	c6 44 24 12 00                                  	mov    BYTE PTR [esp+0x12],0x0
1056b012:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
1056b016:	74 7e                                           	je     0x1056b096
1056b018:	3b c3                                           	cmp    eax,ebx
1056b01a:	74 7a                                           	je     0x1056b096
1056b01c:	53                                              	push   ebx
1056b01d:	53                                              	push   ebx
1056b01e:	53                                              	push   ebx
1056b01f:	53                                              	push   ebx
1056b020:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056b025:	6a 38                                           	push   0x38
1056b027:	c6 44 24 2a 01                                  	mov    BYTE PTR [esp+0x2a],0x1
1056b02c:	88 5c 24 2b                                     	mov    BYTE PTR [esp+0x2b],bl
1056b030:	e8 7b de 3a 00                                  	call   0x10918eb0
1056b035:	83 c4 18                                        	add    esp,0x18
1056b038:	3b c3                                           	cmp    eax,ebx
1056b03a:	0f 84 af 00 00 00                               	je     0x1056b0ef
1056b040:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1056b043:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1056b047:	51                                              	push   ecx
1056b048:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1056b04c:	52                                              	push   edx
1056b04d:	51                                              	push   ecx
1056b04e:	8b c8                                           	mov    ecx,eax
1056b050:	e8 9b ec ff ff                                  	call   0x10569cf0
1056b055:	3b c3                                           	cmp    eax,ebx
1056b057:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1056b05b:	74 09                                           	je     0x1056b066
1056b05d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056b05f:	8b c8                                           	mov    ecx,eax
1056b061:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056b064:	ff d0                                           	call   eax
1056b066:	6a 01                                           	push   0x1
1056b068:	8b cf                                           	mov    ecx,edi
1056b06a:	e8 d1 1f cd ff                                  	call   0x1023d040
1056b06f:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
1056b072:	2b 08                                           	sub    ecx,DWORD PTR [eax]
1056b074:	8b d3                                           	mov    edx,ebx
1056b076:	c1 f9 02                                        	sar    ecx,0x2
1056b079:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
1056b07d:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
1056b081:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1056b085:	75 7d                                           	jne    0x1056b104
1056b087:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1056b08b:	3b cb                                           	cmp    ecx,ebx
1056b08d:	74 07                                           	je     0x1056b096
1056b08f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1056b091:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056b094:	ff d2                                           	call   edx
1056b096:	8a 44 24 12                                     	mov    al,BYTE PTR [esp+0x12]
1056b09a:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1056b09e:	88 44 24 48                                     	mov    BYTE PTR [esp+0x48],al
1056b0a2:	53                                              	push   ebx
1056b0a3:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
1056b0a7:	50                                              	push   eax
1056b0a8:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1056b0ac:	51                                              	push   ecx
1056b0ad:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1056b0b0:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056b0b5:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
1056b0b9:	66 c7 44 24 4e 01 00                            	mov    WORD PTR [esp+0x4e],0x1
1056b0c0:	66 89 5c 24 4c                                  	mov    WORD PTR [esp+0x4c],bx
1056b0c5:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056b0c7:	8b 92 30 01 00 00                               	mov    edx,DWORD PTR [edx+0x130]
1056b0cd:	50                                              	push   eax
1056b0ce:	51                                              	push   ecx
1056b0cf:	8b ce                                           	mov    ecx,esi
1056b0d1:	ff d2                                           	call   edx
1056b0d3:	f6 44 24 40 04                                  	test   BYTE PTR [esp+0x40],0x4
1056b0d8:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
1056b0dc:	74 0a                                           	je     0x1056b0e8
1056b0de:	53                                              	push   ebx
1056b0df:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
1056b0e3:	e8 a8 d9 3b 00                                  	call   0x10928a90
1056b0e8:	5f                                              	pop    edi
1056b0e9:	5e                                              	pop    esi
1056b0ea:	5b                                              	pop    ebx
1056b0eb:	8b e5                                           	mov    esp,ebp
1056b0ed:	5d                                              	pop    ebp
1056b0ee:	c3                                              	ret
1056b0ef:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
1056b0f3:	e9 6e ff ff ff                                  	jmp    0x1056b066
1056b0f8:	eb 06                                           	jmp    0x1056b100
1056b0fa:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1056b100:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1056b104:	8b 00                                           	mov    eax,DWORD PTR [eax]
1056b106:	8b 04 90                                        	mov    eax,DWORD PTR [eax+edx*4]
1056b109:	3b c3                                           	cmp    eax,ebx
1056b10b:	0f 84 e9 00 00 00                               	je     0x1056b1fa
1056b111:	8b 70 48                                        	mov    esi,DWORD PTR [eax+0x48]
1056b114:	8b 78 4c                                        	mov    edi,DWORD PTR [eax+0x4c]
1056b117:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
1056b11b:	e8 20 03 b9 ff                                  	call   0x100fb440
1056b120:	89 b4 24 e0 00 00 00                            	mov    DWORD PTR [esp+0xe0],esi
1056b127:	89 9c 24 ec 00 00 00                            	mov    DWORD PTR [esp+0xec],ebx
1056b12e:	89 74 24 58                                     	mov    DWORD PTR [esp+0x58],esi
1056b132:	89 5c 24 60                                     	mov    DWORD PTR [esp+0x60],ebx
1056b136:	c7 84 24 e8 00 00 00 4c ee 6f 43                	mov    DWORD PTR [esp+0xe8],0x436fee4c
1056b141:	89 bc 24 e4 00 00 00                            	mov    DWORD PTR [esp+0xe4],edi
1056b148:	33 f6                                           	xor    esi,esi
1056b14a:	bb 01 00 00 00                                  	mov    ebx,0x1
1056b14f:	f6 c3 04                                        	test   bl,0x4
1056b152:	74 2a                                           	je     0x1056b17e
1056b154:	8b 54 24 58                                     	mov    edx,DWORD PTR [esp+0x58]
1056b158:	83 ec 10                                        	sub    esp,0x10
1056b15b:	8b c4                                           	mov    eax,esp
1056b15d:	89 10                                           	mov    DWORD PTR [eax],edx
1056b15f:	8d 8e c4 7f 4e d8                               	lea    ecx,[esi-0x27b1803c]
1056b165:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
1056b168:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1056b16b:	33 c9                                           	xor    ecx,ecx
1056b16d:	51                                              	push   ecx
1056b16e:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1056b171:	56                                              	push   esi
1056b172:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
1056b179:	e8 a2 2a b9 ff                                  	call   0x100fdc20
1056b17e:	83 c6 01                                        	add    esi,0x1
1056b181:	03 db                                           	add    ebx,ebx
1056b183:	83 fe 04                                        	cmp    esi,0x4
1056b186:	72 c7                                           	jb     0x1056b14f
1056b188:	8b 74 24 34                                     	mov    esi,DWORD PTR [esp+0x34]
1056b18c:	8d 44 24 68                                     	lea    eax,[esp+0x68]
1056b190:	50                                              	push   eax
1056b191:	8b ce                                           	mov    ecx,esi
1056b193:	e8 28 b9 db ff                                  	call   0x10326ac0
1056b198:	84 c0                                           	test   al,al
1056b19a:	75 20                                           	jne    0x1056b1bc
1056b19c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1056b1a0:	51                                              	push   ecx
1056b1a1:	6a 00                                           	push   0x0
1056b1a3:	6a 00                                           	push   0x0
1056b1a5:	6a 00                                           	push   0x0
1056b1a7:	8d 54 24 78                                     	lea    edx,[esp+0x78]
1056b1ab:	52                                              	push   edx
1056b1ac:	8b ce                                           	mov    ecx,esi
1056b1ae:	e8 cd b3 dc ff                                  	call   0x10336580
1056b1b3:	84 c0                                           	test   al,al
1056b1b5:	74 05                                           	je     0x1056b1bc
1056b1b7:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
1056b1bc:	8b 84 24 f8 00 00 00                            	mov    eax,DWORD PTR [esp+0xf8]
1056b1c3:	85 c0                                           	test   eax,eax
1056b1c5:	74 12                                           	je     0x1056b1d9
1056b1c7:	3b 84 24 08 01 00 00                            	cmp    eax,DWORD PTR [esp+0x108]
1056b1ce:	74 09                                           	je     0x1056b1d9
1056b1d0:	50                                              	push   eax
1056b1d1:	e8 ba dc 3a 00                                  	call   0x10918e90
1056b1d6:	83 c4 04                                        	add    esp,0x4
1056b1d9:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
1056b1dd:	85 c0                                           	test   eax,eax
1056b1df:	74 0f                                           	je     0x1056b1f0
1056b1e1:	3b 44 24 78                                     	cmp    eax,DWORD PTR [esp+0x78]
1056b1e5:	74 09                                           	je     0x1056b1f0
1056b1e7:	50                                              	push   eax
1056b1e8:	e8 a3 dc 3a 00                                  	call   0x10918e90
1056b1ed:	83 c4 04                                        	add    esp,0x4
1056b1f0:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1056b1f4:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
1056b1f8:	33 db                                           	xor    ebx,ebx
1056b1fa:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1056b1fe:	83 c2 01                                        	add    edx,0x1
1056b201:	3b d1                                           	cmp    edx,ecx
1056b203:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1056b207:	0f 82 f3 fe ff ff                               	jb     0x1056b100
1056b20d:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
1056b212:	0f 84 6f fe ff ff                               	je     0x1056b087
1056b218:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1056b21b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1056b21f:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056b221:	53                                              	push   ebx
1056b222:	51                                              	push   ecx
1056b223:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1056b227:	6a ff                                           	push   0xffffffff
1056b229:	52                                              	push   edx
1056b22a:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
1056b230:	51                                              	push   ecx
1056b231:	8b ce                                           	mov    ecx,esi
1056b233:	ff d2                                           	call   edx
1056b235:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056b237:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056b23d:	8b ce                                           	mov    ecx,esi
1056b23f:	ff d2                                           	call   edx
1056b241:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1056b245:	3b cb                                           	cmp    ecx,ebx
1056b247:	0f 84 9b fe ff ff                               	je     0x1056b0e8
1056b24d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1056b24f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056b252:	ff d2                                           	call   edx
1056b254:	5f                                              	pop    edi
1056b255:	5e                                              	pop    esi
1056b256:	5b                                              	pop    ebx
1056b257:	8b e5                                           	mov    esp,ebp
1056b259:	5d                                              	pop    ebp
1056b25a:	c3                                              	ret
1056b25b:	cc                                              	int3
1056b25c:	cc                                              	int3
1056b25d:	cc                                              	int3
1056b25e:	cc                                              	int3
1056b25f:	cc                                              	int3
