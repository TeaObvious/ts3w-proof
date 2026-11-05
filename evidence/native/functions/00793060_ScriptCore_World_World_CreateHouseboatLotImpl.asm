# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00793060 (ScriptCore.World::World_CreateHouseboatLotImpl)
Paired Ghidra pseudocode: 00793060_ScriptCore_World_World_CreateHouseboatLotImpl.c
Window: [0x00793060, 0x00793250) (496 bytes; stop exclusive)
Next defined Ghidra entry: 0x00793250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00793060: 55 8b ec 83 e4 f0 81 ec 84 00 00 00 53 56 8b 35
00793070: c4 db 1e 01 85 f6 57 89 74 24 18 0f 84 b7 01 00
00793080: 00 8b 5d 08 83 fb 04 7d 07 bb 04 00 00 00 eb 0a
00793090: 83 fb 40 7e 05 bb 40 00 00 00 8b 7d 0c 83 ff 40
007930a0: 7e 07 bf 40 00 00 00 eb 0a 83 ff 04 7d 05 bf 04
007930b0: 00 00 00 8d 44 24 20 50 57 53 8b ce e8 2f 7a 4d
007930c0: 00 84 c0 0f 84 6f 01 00 00 6a 00 6a 00 6a 00 6a
007930d0: 00 68 4c 1b 01 01 6a 00 6a 10 68 c0 04 00 00 c6
007930e0: 46 40 01 e8 38 14 d5 ff 83 c4 20 85 c0 0f 84 45
007930f0: 01 00 00 56 8b c8 e8 65 da 32 00 8b f0 85 f6 0f
00793100: 84 33 01 00 00 8b 4d 14 d9 ee 8b 55 10 6a 01 6a
00793110: 00 6a 00 6a 01 6a 00 51 52 51 d9 1c 24 8d 44 24
00793120: 40 50 57 53 8b ce e8 65 ab 33 00 84 c0 0f 84 fa
00793130: 00 00 00 56 e8 37 70 37 00 83 c4 04 8b ce e8 5d
00793140: e0 31 00 8b 5c 24 18 6a 01 53 e8 61 a5 36 00 83
00793150: c4 08 85 c0 74 0e 8b 10 c6 40 76 01 8b c8 8b 42
00793160: 44 56 ff d0 8b 4e 48 8b 56 4c 8d 44 24 18 89 4c
00793170: 24 18 50 8d 4c 24 54 89 54 24 20 e8 50 32 d6 ff
00793180: 8b 8e 08 04 00 00 8d 54 24 18 89 4c 24 18 52 8d
00793190: 4c 24 74 e8 a8 31 d6 ff 6a 02 8d 44 24 54 50 8d
007931a0: 4c 24 38 6a 10 51 e8 c5 c4 ff ff 83 c4 10 8d 4c
007931b0: 24 30 e8 69 26 d6 ff 68 20 58 4f 00 6a 02 6a 20
007931c0: 8d 54 24 5c 52 e8 16 35 cb ff 8b 46 4c 8b 4e 48
007931d0: 50 51 e8 29 f3 ff ff 83 c4 08 e8 11 5b 09 00 8b
007931e0: 4e 4c 8b f8 8b 46 48 51 50 8b cf e8 d0 63 09 00
007931f0: 8b c8 e8 69 61 e9 ff 84 c0 75 0a 6a 01 56 8b cf
00793200: e8 4b 1a 0a 00 6a 00 6a 01 8b ce e8 30 d7 31 00
00793210: 8d 96 54 01 00 00 52 6a 01 8b cb e8 b0 0f 4d 00
00793220: 8b 46 48 8b 56 4c 5f 5e 5b 8b e5 5d c3 8b 06 8b
00793230: 50 08 6a 01 8b ce ff d2 5f 5e 33 c0 33 d2 5b 8b
00793240: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00793060 <.text+0x392060>:
  793060:	55                                              	push   ebp
  793061:	8b ec                                           	mov    ebp,esp
  793063:	83 e4 f0                                        	and    esp,0xfffffff0
  793066:	81 ec 84 00 00 00                               	sub    esp,0x84
  79306c:	53                                              	push   ebx
  79306d:	56                                              	push   esi
  79306e:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  793074:	85 f6                                           	test   esi,esi
  793076:	57                                              	push   edi
  793077:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  79307b:	0f 84 b7 01 00 00                               	je     0x793238
  793081:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
  793084:	83 fb 04                                        	cmp    ebx,0x4
  793087:	7d 07                                           	jge    0x793090
  793089:	bb 04 00 00 00                                  	mov    ebx,0x4
  79308e:	eb 0a                                           	jmp    0x79309a
  793090:	83 fb 40                                        	cmp    ebx,0x40
  793093:	7e 05                                           	jle    0x79309a
  793095:	bb 40 00 00 00                                  	mov    ebx,0x40
  79309a:	8b 7d 0c                                        	mov    edi,DWORD PTR [ebp+0xc]
  79309d:	83 ff 40                                        	cmp    edi,0x40
  7930a0:	7e 07                                           	jle    0x7930a9
  7930a2:	bf 40 00 00 00                                  	mov    edi,0x40
  7930a7:	eb 0a                                           	jmp    0x7930b3
  7930a9:	83 ff 04                                        	cmp    edi,0x4
  7930ac:	7d 05                                           	jge    0x7930b3
  7930ae:	bf 04 00 00 00                                  	mov    edi,0x4
  7930b3:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  7930b7:	50                                              	push   eax
  7930b8:	57                                              	push   edi
  7930b9:	53                                              	push   ebx
  7930ba:	8b ce                                           	mov    ecx,esi
  7930bc:	e8 2f 7a 4d 00                                  	call   0xc6aaf0
  7930c1:	84 c0                                           	test   al,al
  7930c3:	0f 84 6f 01 00 00                               	je     0x793238
  7930c9:	6a 00                                           	push   0x0
  7930cb:	6a 00                                           	push   0x0
  7930cd:	6a 00                                           	push   0x0
  7930cf:	6a 00                                           	push   0x0
  7930d1:	68 4c 1b 01 01                                  	push   0x1011b4c
  7930d6:	6a 00                                           	push   0x0
  7930d8:	6a 10                                           	push   0x10
  7930da:	68 c0 04 00 00                                  	push   0x4c0
  7930df:	c6 46 40 01                                     	mov    BYTE PTR [esi+0x40],0x1
  7930e3:	e8 38 14 d5 ff                                  	call   0x4e4520
  7930e8:	83 c4 20                                        	add    esp,0x20
  7930eb:	85 c0                                           	test   eax,eax
  7930ed:	0f 84 45 01 00 00                               	je     0x793238
  7930f3:	56                                              	push   esi
  7930f4:	8b c8                                           	mov    ecx,eax
  7930f6:	e8 65 da 32 00                                  	call   0xac0b60
  7930fb:	8b f0                                           	mov    esi,eax
  7930fd:	85 f6                                           	test   esi,esi
  7930ff:	0f 84 33 01 00 00                               	je     0x793238
  793105:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  793108:	d9 ee                                           	fldz
  79310a:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  79310d:	6a 01                                           	push   0x1
  79310f:	6a 00                                           	push   0x0
  793111:	6a 00                                           	push   0x0
  793113:	6a 01                                           	push   0x1
  793115:	6a 00                                           	push   0x0
  793117:	51                                              	push   ecx
  793118:	52                                              	push   edx
  793119:	51                                              	push   ecx
  79311a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  79311d:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  793121:	50                                              	push   eax
  793122:	57                                              	push   edi
  793123:	53                                              	push   ebx
  793124:	8b ce                                           	mov    ecx,esi
  793126:	e8 65 ab 33 00                                  	call   0xacdc90
  79312b:	84 c0                                           	test   al,al
  79312d:	0f 84 fa 00 00 00                               	je     0x79322d
  793133:	56                                              	push   esi
  793134:	e8 37 70 37 00                                  	call   0xb0a170
  793139:	83 c4 04                                        	add    esp,0x4
  79313c:	8b ce                                           	mov    ecx,esi
  79313e:	e8 5d e0 31 00                                  	call   0xab11a0
  793143:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  793147:	6a 01                                           	push   0x1
  793149:	53                                              	push   ebx
  79314a:	e8 61 a5 36 00                                  	call   0xafd6b0
  79314f:	83 c4 08                                        	add    esp,0x8
  793152:	85 c0                                           	test   eax,eax
  793154:	74 0e                                           	je     0x793164
  793156:	8b 10                                           	mov    edx,DWORD PTR [eax]
  793158:	c6 40 76 01                                     	mov    BYTE PTR [eax+0x76],0x1
  79315c:	8b c8                                           	mov    ecx,eax
  79315e:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
  793161:	56                                              	push   esi
  793162:	ff d0                                           	call   eax
  793164:	8b 4e 48                                        	mov    ecx,DWORD PTR [esi+0x48]
  793167:	8b 56 4c                                        	mov    edx,DWORD PTR [esi+0x4c]
  79316a:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  79316e:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  793172:	50                                              	push   eax
  793173:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  793177:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  79317b:	e8 50 32 d6 ff                                  	call   0x4f63d0
  793180:	8b 8e 08 04 00 00                               	mov    ecx,DWORD PTR [esi+0x408]
  793186:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  79318a:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  79318e:	52                                              	push   edx
  79318f:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  793193:	e8 a8 31 d6 ff                                  	call   0x4f6340
  793198:	6a 02                                           	push   0x2
  79319a:	8d 44 24 54                                     	lea    eax,[esp+0x54]
  79319e:	50                                              	push   eax
  79319f:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  7931a3:	6a 10                                           	push   0x10
  7931a5:	51                                              	push   ecx
  7931a6:	e8 c5 c4 ff ff                                  	call   0x78f670
  7931ab:	83 c4 10                                        	add    esp,0x10
  7931ae:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7931b2:	e8 69 26 d6 ff                                  	call   0x4f5820
  7931b7:	68 20 58 4f 00                                  	push   0x4f5820
  7931bc:	6a 02                                           	push   0x2
  7931be:	6a 20                                           	push   0x20
  7931c0:	8d 54 24 5c                                     	lea    edx,[esp+0x5c]
  7931c4:	52                                              	push   edx
  7931c5:	e8 16 35 cb ff                                  	call   0x4466e0
  7931ca:	8b 46 4c                                        	mov    eax,DWORD PTR [esi+0x4c]
  7931cd:	8b 4e 48                                        	mov    ecx,DWORD PTR [esi+0x48]
  7931d0:	50                                              	push   eax
  7931d1:	51                                              	push   ecx
  7931d2:	e8 29 f3 ff ff                                  	call   0x792500
  7931d7:	83 c4 08                                        	add    esp,0x8
  7931da:	e8 11 5b 09 00                                  	call   0x828cf0
  7931df:	8b 4e 4c                                        	mov    ecx,DWORD PTR [esi+0x4c]
  7931e2:	8b f8                                           	mov    edi,eax
  7931e4:	8b 46 48                                        	mov    eax,DWORD PTR [esi+0x48]
  7931e7:	51                                              	push   ecx
  7931e8:	50                                              	push   eax
  7931e9:	8b cf                                           	mov    ecx,edi
  7931eb:	e8 d0 63 09 00                                  	call   0x8295c0
  7931f0:	8b c8                                           	mov    ecx,eax
  7931f2:	e8 69 61 e9 ff                                  	call   0x629360
  7931f7:	84 c0                                           	test   al,al
  7931f9:	75 0a                                           	jne    0x793205
  7931fb:	6a 01                                           	push   0x1
  7931fd:	56                                              	push   esi
  7931fe:	8b cf                                           	mov    ecx,edi
  793200:	e8 4b 1a 0a 00                                  	call   0x834c50
  793205:	6a 00                                           	push   0x0
  793207:	6a 01                                           	push   0x1
  793209:	8b ce                                           	mov    ecx,esi
  79320b:	e8 30 d7 31 00                                  	call   0xab0940
  793210:	8d 96 54 01 00 00                               	lea    edx,[esi+0x154]
  793216:	52                                              	push   edx
  793217:	6a 01                                           	push   0x1
  793219:	8b cb                                           	mov    ecx,ebx
  79321b:	e8 b0 0f 4d 00                                  	call   0xc641d0
  793220:	8b 46 48                                        	mov    eax,DWORD PTR [esi+0x48]
  793223:	8b 56 4c                                        	mov    edx,DWORD PTR [esi+0x4c]
  793226:	5f                                              	pop    edi
  793227:	5e                                              	pop    esi
  793228:	5b                                              	pop    ebx
  793229:	8b e5                                           	mov    esp,ebp
  79322b:	5d                                              	pop    ebp
  79322c:	c3                                              	ret
  79322d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  79322f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  793232:	6a 01                                           	push   0x1
  793234:	8b ce                                           	mov    ecx,esi
  793236:	ff d2                                           	call   edx
  793238:	5f                                              	pop    edi
  793239:	5e                                              	pop    esi
  79323a:	33 c0                                           	xor    eax,eax
  79323c:	33 d2                                           	xor    edx,edx
  79323e:	5b                                              	pop    ebx
  79323f:	8b e5                                           	mov    esp,ebp
  793241:	5d                                              	pop    ebp
  793242:	c3                                              	ret
  793243:	cc                                              	int3
  793244:	cc                                              	int3
  793245:	cc                                              	int3
  793246:	cc                                              	int3
  793247:	cc                                              	int3
  793248:	cc                                              	int3
  793249:	cc                                              	int3
  79324a:	cc                                              	int3
  79324b:	cc                                              	int3
  79324c:	cc                                              	int3
  79324d:	cc                                              	int3
  79324e:	cc                                              	int3
  79324f:	cc                                              	int3
