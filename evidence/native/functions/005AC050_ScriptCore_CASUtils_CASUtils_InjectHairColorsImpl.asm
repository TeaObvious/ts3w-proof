# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ac050 (ScriptCore.CASUtils::CASUtils_InjectHairColorsImpl)
Paired Ghidra pseudocode: 005AC050_ScriptCore_CASUtils_CASUtils_InjectHairColorsImpl.c
Window: [0x005ac050, 0x005ac3d0) (896 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ac3d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ac050: 81 ec fc 00 00 00 55 57 e8 33 d3 1b 00 8b 8c 24
005ac060: 54 01 00 00 8b e8 8b 45 00 8b 50 58 51 8b cd ff
005ac070: d2 8b f8 85 ff 75 09 5f 5d 81 c4 fc 00 00 00 c3
005ac080: 56 8b b4 24 0c 01 00 00 8b c6 25 00 00 00 ff 3d
005ac090: 00 00 00 35 75 3d e8 f5 d2 1b 00 8b 10 8b c8 8b
005ac0a0: 82 cc 00 00 00 56 ff d0 85 c0 89 44 24 10 74 23
005ac0b0: 8b 55 00 8b 52 6c 8d 44 24 2c 50 8b 84 24 60 01
005ac0c0: 00 00 8d 4c 24 18 51 50 8b cd ff d2 83 7c 24 2c
005ac0d0: 04 7d 0c 5e 5f 33 c0 5d 81 c4 fc 00 00 00 c3 53
005ac0e0: 8d 8c 24 ac 00 00 00 e8 d4 39 01 00 57 8d 8c 24
005ac0f0: b0 00 00 00 e8 67 3f 01 00 c6 44 24 13 00 b3 01
005ac100: 33 f6 80 7c 24 13 00 75 33 8b 96 d4 61 15 01 8d
005ac110: 44 24 2c 50 8d 4c 24 6c 51 52 8d 8c 24 b8 00 00
005ac120: 00 e8 4a 33 01 00 84 c0 74 3f 8b 44 24 2c 8b 4c
005ac130: 24 18 3b 04 0e 74 32 c6 44 24 13 01 84 db 74 27
005ac140: 8b 54 24 18 8b 04 16 8b 8e d4 61 15 01 6a 00 50
005ac150: 6a 02 51 8d 8c 24 bc 00 00 00 e8 31 31 01 00 84
005ac160: c0 74 04 b3 01 eb 02 32 db 83 c6 04 83 fe 10 7c
005ac170: 91 80 7c 24 13 00 0f 85 b6 00 00 00 33 c0 57 8d
005ac180: 4c 24 4c 89 44 24 4c 89 44 24 50 89 44 24 54 c7
005ac190: 44 24 58 0c f9 fd 00 e8 f4 f3 e5 ff 6a 01 6a 10
005ac1a0: 8d 54 24 50 52 6a 09 6a 13 8d 8c 24 80 00 00 00
005ac1b0: c7 84 24 80 00 00 00 6c 88 00 01 66 c7 84 24 8a
005ac1c0: 00 00 00 13 00 66 c7 84 24 88 00 00 00 0b 00 e8
005ac1d0: ec 97 f4 ff 8b 45 00 8b 40 50 8d 4c 24 14 51 8d
005ac1e0: 54 24 70 52 8b cd ff d0 f6 44 24 74 04 8b 74 24
005ac1f0: 14 c7 44 24 6c f4 a6 fb 00 74 0b 6a 00 8d 4c 24
005ac200: 70 e8 5a 95 f4 ff 8b 4c 24 50 8b 44 24 48 2b c8
005ac210: 83 e1 fe 83 f9 02 0f 8e 9a 01 00 00 85 c0 0f 84
005ac220: 92 01 00 00 50 e8 b6 82 f3 ff 83 c4 04 e9 84 01
005ac230: 00 00 84 db 8d 8c 24 ac 00 00 00 0f 84 8d 00 00
005ac240: 00 e8 0a 2d 01 00 84 c0 74 7d 8b 84 24 20 01 00
005ac250: 00 8b 8c 24 14 01 00 00 8b 94 24 1c 01 00 00 89
005ac260: 44 24 5c 89 4c 24 60 8b 4c 24 14 8d 44 24 58 50
005ac270: 89 54 24 5c 8b 94 24 1c 01 00 00 51 8d 8c 24 b4
005ac280: 00 00 00 89 54 24 6c e8 d4 2c 01 00 84 c0 8d 8c
005ac290: 24 ac 00 00 00 74 37 33 c0 50 50 8d 54 24 24 bb
005ac2a0: 0c f9 fd 00 52 89 44 24 28 89 44 24 2c 89 44 24
005ac2b0: 30 89 5c 24 34 e8 56 40 01 00 84 c0 75 22 8d 4c
005ac2c0: 24 1c e8 09 f0 ff ff 8d 8c 24 ac 00 00 00 e8 0d
005ac2d0: 3a 01 00 5b 5e 5f 33 c0 5d 81 c4 fc 00 00 00 c3
005ac2e0: 8b 74 24 1c 8b 7c 24 20 3b f7 74 29 8d 64 24 00
005ac2f0: 8b 06 8b 4e 04 0f b6 56 08 50 8b 40 58 51 52 50
005ac300: 8d 4c 24 68 51 8b 4c 24 28 e8 c2 73 03 00 83 c6
005ac310: 0c 3b f7 75 db b8 54 8e 1c 01 8d 54 24 38 52 8d
005ac320: 8c 24 b0 00 00 00 89 5c 24 48 89 44 24 3c 89 44
005ac330: 24 40 c7 44 24 44 56 8e 1c 01 e8 e1 39 01 00 8d
005ac340: 44 24 38 50 8d 8c 24 90 00 00 00 e8 50 ef ff ff
005ac350: 8b 55 00 8b 52 50 8d 44 24 34 50 8d 8c 24 90 00
005ac360: 00 00 51 8b cd ff d2 f6 84 24 94 00 00 00 04 8b
005ac370: 74 24 34 c7 84 24 8c 00 00 00 f4 a6 fb 00 74 0e
005ac380: 6a 00 8d 8c 24 90 00 00 00 e8 d2 93 f4 ff 8b 4c
005ac390: 24 40 8b 44 24 38 2b c8 83 e1 fe 83 f9 02 7e 0d
005ac3a0: 85 c0 74 09 50 e8 36 81 f3 ff 83 c4 04 8d 4c 24
005ac3b0: 1c e8 1a ef ff ff 8d 8c 24 ac 00 00 00 e8 1e 39
005ac3c0: 01 00 5b 8b c6 5e 5f 5d 81 c4 fc 00 00 00 c3 cc

LINEAR DISASSEMBLY
005ac050 <.text+0x1ab050>:
  5ac050:	81 ec fc 00 00 00                               	sub    esp,0xfc
  5ac056:	55                                              	push   ebp
  5ac057:	57                                              	push   edi
  5ac058:	e8 33 d3 1b 00                                  	call   0x769390
  5ac05d:	8b 8c 24 54 01 00 00                            	mov    ecx,DWORD PTR [esp+0x154]
  5ac064:	8b e8                                           	mov    ebp,eax
  5ac066:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  5ac069:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5ac06c:	51                                              	push   ecx
  5ac06d:	8b cd                                           	mov    ecx,ebp
  5ac06f:	ff d2                                           	call   edx
  5ac071:	8b f8                                           	mov    edi,eax
  5ac073:	85 ff                                           	test   edi,edi
  5ac075:	75 09                                           	jne    0x5ac080
  5ac077:	5f                                              	pop    edi
  5ac078:	5d                                              	pop    ebp
  5ac079:	81 c4 fc 00 00 00                               	add    esp,0xfc
  5ac07f:	c3                                              	ret
  5ac080:	56                                              	push   esi
  5ac081:	8b b4 24 0c 01 00 00                            	mov    esi,DWORD PTR [esp+0x10c]
  5ac088:	8b c6                                           	mov    eax,esi
  5ac08a:	25 00 00 00 ff                                  	and    eax,0xff000000
  5ac08f:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ac094:	75 3d                                           	jne    0x5ac0d3
  5ac096:	e8 f5 d2 1b 00                                  	call   0x769390
  5ac09b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ac09d:	8b c8                                           	mov    ecx,eax
  5ac09f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ac0a5:	56                                              	push   esi
  5ac0a6:	ff d0                                           	call   eax
  5ac0a8:	85 c0                                           	test   eax,eax
  5ac0aa:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  5ac0ae:	74 23                                           	je     0x5ac0d3
  5ac0b0:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5ac0b3:	8b 52 6c                                        	mov    edx,DWORD PTR [edx+0x6c]
  5ac0b6:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  5ac0ba:	50                                              	push   eax
  5ac0bb:	8b 84 24 60 01 00 00                            	mov    eax,DWORD PTR [esp+0x160]
  5ac0c2:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5ac0c6:	51                                              	push   ecx
  5ac0c7:	50                                              	push   eax
  5ac0c8:	8b cd                                           	mov    ecx,ebp
  5ac0ca:	ff d2                                           	call   edx
  5ac0cc:	83 7c 24 2c 04                                  	cmp    DWORD PTR [esp+0x2c],0x4
  5ac0d1:	7d 0c                                           	jge    0x5ac0df
  5ac0d3:	5e                                              	pop    esi
  5ac0d4:	5f                                              	pop    edi
  5ac0d5:	33 c0                                           	xor    eax,eax
  5ac0d7:	5d                                              	pop    ebp
  5ac0d8:	81 c4 fc 00 00 00                               	add    esp,0xfc
  5ac0de:	c3                                              	ret
  5ac0df:	53                                              	push   ebx
  5ac0e0:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
  5ac0e7:	e8 d4 39 01 00                                  	call   0x5bfac0
  5ac0ec:	57                                              	push   edi
  5ac0ed:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  5ac0f4:	e8 67 3f 01 00                                  	call   0x5c0060
  5ac0f9:	c6 44 24 13 00                                  	mov    BYTE PTR [esp+0x13],0x0
  5ac0fe:	b3 01                                           	mov    bl,0x1
  5ac100:	33 f6                                           	xor    esi,esi
  5ac102:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
  5ac107:	75 33                                           	jne    0x5ac13c
  5ac109:	8b 96 d4 61 15 01                               	mov    edx,DWORD PTR [esi+0x11561d4]
  5ac10f:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  5ac113:	50                                              	push   eax
  5ac114:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  5ac118:	51                                              	push   ecx
  5ac119:	52                                              	push   edx
  5ac11a:	8d 8c 24 b8 00 00 00                            	lea    ecx,[esp+0xb8]
  5ac121:	e8 4a 33 01 00                                  	call   0x5bf470
  5ac126:	84 c0                                           	test   al,al
  5ac128:	74 3f                                           	je     0x5ac169
  5ac12a:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  5ac12e:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5ac132:	3b 04 0e                                        	cmp    eax,DWORD PTR [esi+ecx*1]
  5ac135:	74 32                                           	je     0x5ac169
  5ac137:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
  5ac13c:	84 db                                           	test   bl,bl
  5ac13e:	74 27                                           	je     0x5ac167
  5ac140:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5ac144:	8b 04 16                                        	mov    eax,DWORD PTR [esi+edx*1]
  5ac147:	8b 8e d4 61 15 01                               	mov    ecx,DWORD PTR [esi+0x11561d4]
  5ac14d:	6a 00                                           	push   0x0
  5ac14f:	50                                              	push   eax
  5ac150:	6a 02                                           	push   0x2
  5ac152:	51                                              	push   ecx
  5ac153:	8d 8c 24 bc 00 00 00                            	lea    ecx,[esp+0xbc]
  5ac15a:	e8 31 31 01 00                                  	call   0x5bf290
  5ac15f:	84 c0                                           	test   al,al
  5ac161:	74 04                                           	je     0x5ac167
  5ac163:	b3 01                                           	mov    bl,0x1
  5ac165:	eb 02                                           	jmp    0x5ac169
  5ac167:	32 db                                           	xor    bl,bl
  5ac169:	83 c6 04                                        	add    esi,0x4
  5ac16c:	83 fe 10                                        	cmp    esi,0x10
  5ac16f:	7c 91                                           	jl     0x5ac102
  5ac171:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
  5ac176:	0f 85 b6 00 00 00                               	jne    0x5ac232
  5ac17c:	33 c0                                           	xor    eax,eax
  5ac17e:	57                                              	push   edi
  5ac17f:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  5ac183:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
  5ac187:	89 44 24 50                                     	mov    DWORD PTR [esp+0x50],eax
  5ac18b:	89 44 24 54                                     	mov    DWORD PTR [esp+0x54],eax
  5ac18f:	c7 44 24 58 0c f9 fd 00                         	mov    DWORD PTR [esp+0x58],0xfdf90c
  5ac197:	e8 f4 f3 e5 ff                                  	call   0x40b590
  5ac19c:	6a 01                                           	push   0x1
  5ac19e:	6a 10                                           	push   0x10
  5ac1a0:	8d 54 24 50                                     	lea    edx,[esp+0x50]
  5ac1a4:	52                                              	push   edx
  5ac1a5:	6a 09                                           	push   0x9
  5ac1a7:	6a 13                                           	push   0x13
  5ac1a9:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  5ac1b0:	c7 84 24 80 00 00 00 6c 88 00 01                	mov    DWORD PTR [esp+0x80],0x100886c
  5ac1bb:	66 c7 84 24 8a 00 00 00 13 00                   	mov    WORD PTR [esp+0x8a],0x13
  5ac1c5:	66 c7 84 24 88 00 00 00 0b 00                   	mov    WORD PTR [esp+0x88],0xb
  5ac1cf:	e8 ec 97 f4 ff                                  	call   0x4f59c0
  5ac1d4:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  5ac1d7:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  5ac1da:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5ac1de:	51                                              	push   ecx
  5ac1df:	8d 54 24 70                                     	lea    edx,[esp+0x70]
  5ac1e3:	52                                              	push   edx
  5ac1e4:	8b cd                                           	mov    ecx,ebp
  5ac1e6:	ff d0                                           	call   eax
  5ac1e8:	f6 44 24 74 04                                  	test   BYTE PTR [esp+0x74],0x4
  5ac1ed:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  5ac1f1:	c7 44 24 6c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x6c],0xfba6f4
  5ac1f9:	74 0b                                           	je     0x5ac206
  5ac1fb:	6a 00                                           	push   0x0
  5ac1fd:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  5ac201:	e8 5a 95 f4 ff                                  	call   0x4f5760
  5ac206:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
  5ac20a:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  5ac20e:	2b c8                                           	sub    ecx,eax
  5ac210:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ac213:	83 f9 02                                        	cmp    ecx,0x2
  5ac216:	0f 8e 9a 01 00 00                               	jle    0x5ac3b6
  5ac21c:	85 c0                                           	test   eax,eax
  5ac21e:	0f 84 92 01 00 00                               	je     0x5ac3b6
  5ac224:	50                                              	push   eax
  5ac225:	e8 b6 82 f3 ff                                  	call   0x4e44e0
  5ac22a:	83 c4 04                                        	add    esp,0x4
  5ac22d:	e9 84 01 00 00                                  	jmp    0x5ac3b6
  5ac232:	84 db                                           	test   bl,bl
  5ac234:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
  5ac23b:	0f 84 8d 00 00 00                               	je     0x5ac2ce
  5ac241:	e8 0a 2d 01 00                                  	call   0x5bef50
  5ac246:	84 c0                                           	test   al,al
  5ac248:	74 7d                                           	je     0x5ac2c7
  5ac24a:	8b 84 24 20 01 00 00                            	mov    eax,DWORD PTR [esp+0x120]
  5ac251:	8b 8c 24 14 01 00 00                            	mov    ecx,DWORD PTR [esp+0x114]
  5ac258:	8b 94 24 1c 01 00 00                            	mov    edx,DWORD PTR [esp+0x11c]
  5ac25f:	89 44 24 5c                                     	mov    DWORD PTR [esp+0x5c],eax
  5ac263:	89 4c 24 60                                     	mov    DWORD PTR [esp+0x60],ecx
  5ac267:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5ac26b:	8d 44 24 58                                     	lea    eax,[esp+0x58]
  5ac26f:	50                                              	push   eax
  5ac270:	89 54 24 5c                                     	mov    DWORD PTR [esp+0x5c],edx
  5ac274:	8b 94 24 1c 01 00 00                            	mov    edx,DWORD PTR [esp+0x11c]
  5ac27b:	51                                              	push   ecx
  5ac27c:	8d 8c 24 b4 00 00 00                            	lea    ecx,[esp+0xb4]
  5ac283:	89 54 24 6c                                     	mov    DWORD PTR [esp+0x6c],edx
  5ac287:	e8 d4 2c 01 00                                  	call   0x5bef60
  5ac28c:	84 c0                                           	test   al,al
  5ac28e:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
  5ac295:	74 37                                           	je     0x5ac2ce
  5ac297:	33 c0                                           	xor    eax,eax
  5ac299:	50                                              	push   eax
  5ac29a:	50                                              	push   eax
  5ac29b:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  5ac29f:	bb 0c f9 fd 00                                  	mov    ebx,0xfdf90c
  5ac2a4:	52                                              	push   edx
  5ac2a5:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  5ac2a9:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  5ac2ad:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  5ac2b1:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  5ac2b5:	e8 56 40 01 00                                  	call   0x5c0310
  5ac2ba:	84 c0                                           	test   al,al
  5ac2bc:	75 22                                           	jne    0x5ac2e0
  5ac2be:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5ac2c2:	e8 09 f0 ff ff                                  	call   0x5ab2d0
  5ac2c7:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
  5ac2ce:	e8 0d 3a 01 00                                  	call   0x5bfce0
  5ac2d3:	5b                                              	pop    ebx
  5ac2d4:	5e                                              	pop    esi
  5ac2d5:	5f                                              	pop    edi
  5ac2d6:	33 c0                                           	xor    eax,eax
  5ac2d8:	5d                                              	pop    ebp
  5ac2d9:	81 c4 fc 00 00 00                               	add    esp,0xfc
  5ac2df:	c3                                              	ret
  5ac2e0:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  5ac2e4:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  5ac2e8:	3b f7                                           	cmp    esi,edi
  5ac2ea:	74 29                                           	je     0x5ac315
  5ac2ec:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  5ac2f0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5ac2f2:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  5ac2f5:	0f b6 56 08                                     	movzx  edx,BYTE PTR [esi+0x8]
  5ac2f9:	50                                              	push   eax
  5ac2fa:	8b 40 58                                        	mov    eax,DWORD PTR [eax+0x58]
  5ac2fd:	51                                              	push   ecx
  5ac2fe:	52                                              	push   edx
  5ac2ff:	50                                              	push   eax
  5ac300:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  5ac304:	51                                              	push   ecx
  5ac305:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  5ac309:	e8 c2 73 03 00                                  	call   0x5e36d0
  5ac30e:	83 c6 0c                                        	add    esi,0xc
  5ac311:	3b f7                                           	cmp    esi,edi
  5ac313:	75 db                                           	jne    0x5ac2f0
  5ac315:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  5ac31a:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  5ac31e:	52                                              	push   edx
  5ac31f:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  5ac326:	89 5c 24 48                                     	mov    DWORD PTR [esp+0x48],ebx
  5ac32a:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  5ac32e:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
  5ac332:	c7 44 24 44 56 8e 1c 01                         	mov    DWORD PTR [esp+0x44],0x11c8e56
  5ac33a:	e8 e1 39 01 00                                  	call   0x5bfd20
  5ac33f:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  5ac343:	50                                              	push   eax
  5ac344:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
  5ac34b:	e8 50 ef ff ff                                  	call   0x5ab2a0
  5ac350:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5ac353:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5ac356:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  5ac35a:	50                                              	push   eax
  5ac35b:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
  5ac362:	51                                              	push   ecx
  5ac363:	8b cd                                           	mov    ecx,ebp
  5ac365:	ff d2                                           	call   edx
  5ac367:	f6 84 24 94 00 00 00 04                         	test   BYTE PTR [esp+0x94],0x4
  5ac36f:	8b 74 24 34                                     	mov    esi,DWORD PTR [esp+0x34]
  5ac373:	c7 84 24 8c 00 00 00 f4 a6 fb 00                	mov    DWORD PTR [esp+0x8c],0xfba6f4
  5ac37e:	74 0e                                           	je     0x5ac38e
  5ac380:	6a 00                                           	push   0x0
  5ac382:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
  5ac389:	e8 d2 93 f4 ff                                  	call   0x4f5760
  5ac38e:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  5ac392:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  5ac396:	2b c8                                           	sub    ecx,eax
  5ac398:	83 e1 fe                                        	and    ecx,0xfffffffe
  5ac39b:	83 f9 02                                        	cmp    ecx,0x2
  5ac39e:	7e 0d                                           	jle    0x5ac3ad
  5ac3a0:	85 c0                                           	test   eax,eax
  5ac3a2:	74 09                                           	je     0x5ac3ad
  5ac3a4:	50                                              	push   eax
  5ac3a5:	e8 36 81 f3 ff                                  	call   0x4e44e0
  5ac3aa:	83 c4 04                                        	add    esp,0x4
  5ac3ad:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5ac3b1:	e8 1a ef ff ff                                  	call   0x5ab2d0
  5ac3b6:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
  5ac3bd:	e8 1e 39 01 00                                  	call   0x5bfce0
  5ac3c2:	5b                                              	pop    ebx
  5ac3c3:	8b c6                                           	mov    eax,esi
  5ac3c5:	5e                                              	pop    esi
  5ac3c6:	5f                                              	pop    edi
  5ac3c7:	5d                                              	pop    ebp
  5ac3c8:	81 c4 fc 00 00 00                               	add    esp,0xfc
  5ac3ce:	c3                                              	ret
  5ac3cf:	cc                                              	int3
