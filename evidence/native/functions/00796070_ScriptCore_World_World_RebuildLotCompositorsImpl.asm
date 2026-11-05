# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00796070 (ScriptCore.World::World_RebuildLotCompositorsImpl)
Paired Ghidra pseudocode: 00796070_ScriptCore_World_World_RebuildLotCompositorsImpl.c
Window: [0x00796070, 0x00796340) (720 bytes; stop exclusive)
Next defined Ghidra entry: 0x00796340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00796070: 8b 0d c4 db 1e 01 81 ec ac 00 00 00 57 33 ff 3b
00796080: cf 0f 84 a9 02 00 00 8b 84 24 b8 00 00 00 8b 94
00796090: 24 b4 00 00 00 56 57 50 52 e8 72 c7 4c 00 8b f0
007960a0: 3b f7 89 74 24 10 0f 84 83 02 00 00 8b 8e 90 02
007960b0: 00 00 53 55 8b ae 98 02 00 00 e8 31 0e 30 00 f3
007960c0: 0f 10 05 f8 98 f9 00 f3 0f 11 44 24 30 f3 0f 10
007960d0: 05 88 fd 03 01 8b cd f3 0f 11 44 24 34 c7 44 24
007960e0: 3c dc 1a 01 01 c7 44 24 28 01 00 00 00 c7 44 24
007960f0: 24 00 d9 14 01 89 7c 24 2c 89 7c 24 38 e8 3e 1d
00796100: 3b 00 80 c9 ff 3b c7 89 44 24 6c 88 4c 24 10 88
00796110: 4c 24 11 c6 44 24 12 00 88 4c 24 13 88 4c 24 14
00796120: c6 44 24 15 00 89 7c 24 1c 0f 86 45 01 00 00 90
00796130: 8b 4c 24 1c 8d 44 24 10 50 51 8b cd e8 1f 1d 3b
00796140: 00 8d 54 24 10 52 8b cd e8 83 4a 3b 00 8b 78 08
00796150: 85 ff 8b 18 8b 48 04 8b 50 0c 89 5c 24 48 89 4c
00796160: 24 4c 89 7c 24 50 89 54 24 54 0f 84 ed 00 00 00
00796170: 8d 44 24 48 50 8d 4c 24 44 51 8d 4c 24 28 e8 ad
00796180: d6 ff ff 8b 44 24 40 8b 54 24 28 8b 4c 24 24 3b
00796190: 04 91 0f 85 af 00 00 00 8d 54 24 10 52 8b cd e8
007961a0: ec 47 3b 00 8d 4c 24 7c 8b f0 e8 c1 58 36 00 8b
007961b0: 06 89 44 24 7c 8b 4e 04 89 8c 24 80 00 00 00 8b
007961c0: 56 08 8b 4c 24 4c 89 94 24 84 00 00 00 8b 46 0c
007961d0: 8b 54 24 54 89 84 24 88 00 00 00 8d 44 24 7c 50
007961e0: 89 9c 24 b0 00 00 00 89 8c 24 b4 00 00 00 89 bc
007961f0: 24 b8 00 00 00 89 94 24 bc 00 00 00 e8 8f da ff
00796200: ff 83 c4 04 84 c0 74 51 c6 44 24 68 00 8b 4c 24
00796210: 68 51 8d 54 24 4c 52 8d 44 24 78 50 8d 4c 24 2c
00796220: e8 7b d6 ff ff 8b 4c 24 74 8b 44 24 70 89 4c 24
00796230: 44 8d 78 10 b9 10 00 00 00 8d 74 24 7c f3 a5 8b
00796240: 74 24 18 89 44 24 40 8d 54 24 10 52 83 c0 10 50
00796250: 8b cd e8 e9 75 3b 00 eb 04 8b 74 24 18 8b 44 24
00796260: 1c 83 c0 01 3b 44 24 6c 89 44 24 1c 0f 82 be fe
00796270: ff ff 33 ff 8b ae 80 01 00 00 8b 9e 7c 01 00 00
00796280: 3b dd 89 7c 24 58 89 7c 24 5c 89 7c 24 60 c7 44
00796290: 24 64 dc 1a 01 01 74 4e 6a 01 8d 44 24 5c 50 53
007962a0: 8b ce e8 59 3f 33 00 8b 44 24 5c 8b 74 24 58 3b
007962b0: f0 8b f8 74 24 8b 0e 85 c9 74 17 8b 15 c4 9f 1e
007962c0: 01 52 e8 99 df 19 00 85 c0 74 07 8b c8 e8 ae 4f
007962d0: 1b 00 83 c6 04 3b f7 75 dc 8b 74 24 18 83 c3 01
007962e0: 3b dd 75 b4 33 ff 6a 01 6a 01 8b ce e8 4f a6 31
007962f0: 00 8b 44 24 58 3b c7 5d 5b 74 09 50 e8 df e1 d4
00796300: ff 83 c4 04 8b 44 24 20 8b 4c 24 1c 50 51 8d 4c
00796310: 24 20 e8 29 44 e3 ff 83 7c 24 20 01 89 7c 24 24
00796320: 76 0d 8b 54 24 1c 52 e8 b4 e1 d4 ff 83 c4 04 5e
00796330: 5f 81 c4 ac 00 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00796070 <.text+0x395070>:
  796070:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  796076:	81 ec ac 00 00 00                               	sub    esp,0xac
  79607c:	57                                              	push   edi
  79607d:	33 ff                                           	xor    edi,edi
  79607f:	3b cf                                           	cmp    ecx,edi
  796081:	0f 84 a9 02 00 00                               	je     0x796330
  796087:	8b 84 24 b8 00 00 00                            	mov    eax,DWORD PTR [esp+0xb8]
  79608e:	8b 94 24 b4 00 00 00                            	mov    edx,DWORD PTR [esp+0xb4]
  796095:	56                                              	push   esi
  796096:	57                                              	push   edi
  796097:	50                                              	push   eax
  796098:	52                                              	push   edx
  796099:	e8 72 c7 4c 00                                  	call   0xc62810
  79609e:	8b f0                                           	mov    esi,eax
  7960a0:	3b f7                                           	cmp    esi,edi
  7960a2:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  7960a6:	0f 84 83 02 00 00                               	je     0x79632f
  7960ac:	8b 8e 90 02 00 00                               	mov    ecx,DWORD PTR [esi+0x290]
  7960b2:	53                                              	push   ebx
  7960b3:	55                                              	push   ebp
  7960b4:	8b ae 98 02 00 00                               	mov    ebp,DWORD PTR [esi+0x298]
  7960ba:	e8 31 0e 30 00                                  	call   0xa96ef0
  7960bf:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  7960c7:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  7960cd:	f3 0f 10 05 88 fd 03 01                         	movss  xmm0,DWORD PTR ds:0x103fd88
  7960d5:	8b cd                                           	mov    ecx,ebp
  7960d7:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  7960dd:	c7 44 24 3c dc 1a 01 01                         	mov    DWORD PTR [esp+0x3c],0x1011adc
  7960e5:	c7 44 24 28 01 00 00 00                         	mov    DWORD PTR [esp+0x28],0x1
  7960ed:	c7 44 24 24 00 d9 14 01                         	mov    DWORD PTR [esp+0x24],0x114d900
  7960f5:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  7960f9:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  7960fd:	e8 3e 1d 3b 00                                  	call   0xb47e40
  796102:	80 c9 ff                                        	or     cl,0xff
  796105:	3b c7                                           	cmp    eax,edi
  796107:	89 44 24 6c                                     	mov    DWORD PTR [esp+0x6c],eax
  79610b:	88 4c 24 10                                     	mov    BYTE PTR [esp+0x10],cl
  79610f:	88 4c 24 11                                     	mov    BYTE PTR [esp+0x11],cl
  796113:	c6 44 24 12 00                                  	mov    BYTE PTR [esp+0x12],0x0
  796118:	88 4c 24 13                                     	mov    BYTE PTR [esp+0x13],cl
  79611c:	88 4c 24 14                                     	mov    BYTE PTR [esp+0x14],cl
  796120:	c6 44 24 15 00                                  	mov    BYTE PTR [esp+0x15],0x0
  796125:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  796129:	0f 86 45 01 00 00                               	jbe    0x796274
  79612f:	90                                              	nop
  796130:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  796134:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  796138:	50                                              	push   eax
  796139:	51                                              	push   ecx
  79613a:	8b cd                                           	mov    ecx,ebp
  79613c:	e8 1f 1d 3b 00                                  	call   0xb47e60
  796141:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  796145:	52                                              	push   edx
  796146:	8b cd                                           	mov    ecx,ebp
  796148:	e8 83 4a 3b 00                                  	call   0xb4abd0
  79614d:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  796150:	85 ff                                           	test   edi,edi
  796152:	8b 18                                           	mov    ebx,DWORD PTR [eax]
  796154:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  796157:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  79615a:	89 5c 24 48                                     	mov    DWORD PTR [esp+0x48],ebx
  79615e:	89 4c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ecx
  796162:	89 7c 24 50                                     	mov    DWORD PTR [esp+0x50],edi
  796166:	89 54 24 54                                     	mov    DWORD PTR [esp+0x54],edx
  79616a:	0f 84 ed 00 00 00                               	je     0x79625d
  796170:	8d 44 24 48                                     	lea    eax,[esp+0x48]
  796174:	50                                              	push   eax
  796175:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  796179:	51                                              	push   ecx
  79617a:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  79617e:	e8 ad d6 ff ff                                  	call   0x793830
  796183:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  796187:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  79618b:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  79618f:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
  796192:	0f 85 af 00 00 00                               	jne    0x796247
  796198:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  79619c:	52                                              	push   edx
  79619d:	8b cd                                           	mov    ecx,ebp
  79619f:	e8 ec 47 3b 00                                  	call   0xb4a990
  7961a4:	8d 4c 24 7c                                     	lea    ecx,[esp+0x7c]
  7961a8:	8b f0                                           	mov    esi,eax
  7961aa:	e8 c1 58 36 00                                  	call   0xafba70
  7961af:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7961b1:	89 44 24 7c                                     	mov    DWORD PTR [esp+0x7c],eax
  7961b5:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  7961b8:	89 8c 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],ecx
  7961bf:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  7961c2:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  7961c6:	89 94 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],edx
  7961cd:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
  7961d0:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  7961d4:	89 84 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],eax
  7961db:	8d 44 24 7c                                     	lea    eax,[esp+0x7c]
  7961df:	50                                              	push   eax
  7961e0:	89 9c 24 b0 00 00 00                            	mov    DWORD PTR [esp+0xb0],ebx
  7961e7:	89 8c 24 b4 00 00 00                            	mov    DWORD PTR [esp+0xb4],ecx
  7961ee:	89 bc 24 b8 00 00 00                            	mov    DWORD PTR [esp+0xb8],edi
  7961f5:	89 94 24 bc 00 00 00                            	mov    DWORD PTR [esp+0xbc],edx
  7961fc:	e8 8f da ff ff                                  	call   0x793c90
  796201:	83 c4 04                                        	add    esp,0x4
  796204:	84 c0                                           	test   al,al
  796206:	74 51                                           	je     0x796259
  796208:	c6 44 24 68 00                                  	mov    BYTE PTR [esp+0x68],0x0
  79620d:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
  796211:	51                                              	push   ecx
  796212:	8d 54 24 4c                                     	lea    edx,[esp+0x4c]
  796216:	52                                              	push   edx
  796217:	8d 44 24 78                                     	lea    eax,[esp+0x78]
  79621b:	50                                              	push   eax
  79621c:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  796220:	e8 7b d6 ff ff                                  	call   0x7938a0
  796225:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
  796229:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
  79622d:	89 4c 24 44                                     	mov    DWORD PTR [esp+0x44],ecx
  796231:	8d 78 10                                        	lea    edi,[eax+0x10]
  796234:	b9 10 00 00 00                                  	mov    ecx,0x10
  796239:	8d 74 24 7c                                     	lea    esi,[esp+0x7c]
  79623d:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  79623f:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  796243:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
  796247:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  79624b:	52                                              	push   edx
  79624c:	83 c0 10                                        	add    eax,0x10
  79624f:	50                                              	push   eax
  796250:	8b cd                                           	mov    ecx,ebp
  796252:	e8 e9 75 3b 00                                  	call   0xb4d840
  796257:	eb 04                                           	jmp    0x79625d
  796259:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  79625d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  796261:	83 c0 01                                        	add    eax,0x1
  796264:	3b 44 24 6c                                     	cmp    eax,DWORD PTR [esp+0x6c]
  796268:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  79626c:	0f 82 be fe ff ff                               	jb     0x796130
  796272:	33 ff                                           	xor    edi,edi
  796274:	8b ae 80 01 00 00                               	mov    ebp,DWORD PTR [esi+0x180]
  79627a:	8b 9e 7c 01 00 00                               	mov    ebx,DWORD PTR [esi+0x17c]
  796280:	3b dd                                           	cmp    ebx,ebp
  796282:	89 7c 24 58                                     	mov    DWORD PTR [esp+0x58],edi
  796286:	89 7c 24 5c                                     	mov    DWORD PTR [esp+0x5c],edi
  79628a:	89 7c 24 60                                     	mov    DWORD PTR [esp+0x60],edi
  79628e:	c7 44 24 64 dc 1a 01 01                         	mov    DWORD PTR [esp+0x64],0x1011adc
  796296:	74 4e                                           	je     0x7962e6
  796298:	6a 01                                           	push   0x1
  79629a:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
  79629e:	50                                              	push   eax
  79629f:	53                                              	push   ebx
  7962a0:	8b ce                                           	mov    ecx,esi
  7962a2:	e8 59 3f 33 00                                  	call   0xaca200
  7962a7:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  7962ab:	8b 74 24 58                                     	mov    esi,DWORD PTR [esp+0x58]
  7962af:	3b f0                                           	cmp    esi,eax
  7962b1:	8b f8                                           	mov    edi,eax
  7962b3:	74 24                                           	je     0x7962d9
  7962b5:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  7962b7:	85 c9                                           	test   ecx,ecx
  7962b9:	74 17                                           	je     0x7962d2
  7962bb:	8b 15 c4 9f 1e 01                               	mov    edx,DWORD PTR ds:0x11e9fc4
  7962c1:	52                                              	push   edx
  7962c2:	e8 99 df 19 00                                  	call   0x934260
  7962c7:	85 c0                                           	test   eax,eax
  7962c9:	74 07                                           	je     0x7962d2
  7962cb:	8b c8                                           	mov    ecx,eax
  7962cd:	e8 ae 4f 1b 00                                  	call   0x94b280
  7962d2:	83 c6 04                                        	add    esi,0x4
  7962d5:	3b f7                                           	cmp    esi,edi
  7962d7:	75 dc                                           	jne    0x7962b5
  7962d9:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  7962dd:	83 c3 01                                        	add    ebx,0x1
  7962e0:	3b dd                                           	cmp    ebx,ebp
  7962e2:	75 b4                                           	jne    0x796298
  7962e4:	33 ff                                           	xor    edi,edi
  7962e6:	6a 01                                           	push   0x1
  7962e8:	6a 01                                           	push   0x1
  7962ea:	8b ce                                           	mov    ecx,esi
  7962ec:	e8 4f a6 31 00                                  	call   0xab0940
  7962f1:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
  7962f5:	3b c7                                           	cmp    eax,edi
  7962f7:	5d                                              	pop    ebp
  7962f8:	5b                                              	pop    ebx
  7962f9:	74 09                                           	je     0x796304
  7962fb:	50                                              	push   eax
  7962fc:	e8 df e1 d4 ff                                  	call   0x4e44e0
  796301:	83 c4 04                                        	add    esp,0x4
  796304:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  796308:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  79630c:	50                                              	push   eax
  79630d:	51                                              	push   ecx
  79630e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  796312:	e8 29 44 e3 ff                                  	call   0x5ca740
  796317:	83 7c 24 20 01                                  	cmp    DWORD PTR [esp+0x20],0x1
  79631c:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  796320:	76 0d                                           	jbe    0x79632f
  796322:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  796326:	52                                              	push   edx
  796327:	e8 b4 e1 d4 ff                                  	call   0x4e44e0
  79632c:	83 c4 04                                        	add    esp,0x4
  79632f:	5e                                              	pop    esi
  796330:	5f                                              	pop    edi
  796331:	81 c4 ac 00 00 00                               	add    esp,0xac
  796337:	c3                                              	ret
  796338:	cc                                              	int3
  796339:	cc                                              	int3
  79633a:	cc                                              	int3
  79633b:	cc                                              	int3
  79633c:	cc                                              	int3
  79633d:	cc                                              	int3
  79633e:	cc                                              	int3
  79633f:	cc                                              	int3
