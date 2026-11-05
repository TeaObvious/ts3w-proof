# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997170 (WorldTerrainWrap_AddRoadTextures)
Paired Ghidra pseudocode: 10997170_WorldTerrainWrap_AddRoadTextures.c
Window: [0x10997170, 0x10997400) (656 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997170: 55 8b ec 83 e4 f0 8b 45 08 83 ec 54 53 33 db 3b
10997180: c3 56 57 0f 84 65 02 00 00 39 5d 0c 0f 84 5c 02
10997190: 00 00 39 5d 20 0f 84 53 02 00 00 39 5d 34 0f 84
109971a0: 4a 02 00 00 39 5d 48 0f 84 41 02 00 00 39 5d 70
109971b0: 0f 84 38 02 00 00 39 9d 84 00 00 00 0f 84 2c 02
109971c0: 00 00 39 9d 98 00 00 00 0f 84 20 02 00 00 8b 0d
109971d0: c4 00 c7 10 89 5c 24 10 89 5c 24 14 89 5c 24 18
109971e0: 89 5c 24 1c 8b 71 5c 50 8b ce e8 51 31 7b ff f3
109971f0: 0f 10 05 fc df aa 10 8d 54 24 30 52 8b f8 8d 44
10997200: 24 14 50 53 8d 4d 10 f3 0f 11 44 24 38 f3 0f 11
10997210: 44 24 34 f3 0f 11 44 24 30 f3 0f 11 44 24 2c 0f
10997220: 28 44 24 2c 51 8d 54 24 50 52 0f 29 44 24 34 0f
10997230: 29 44 24 44 e8 67 68 bc ff 83 c4 08 50 8b 45 0c
10997240: 50 53 57 8b ce e8 46 fc 7a ff 0f 28 44 24 20 8d
10997250: 4c 24 30 51 8d 55 4c 52 8d 44 24 48 50 0f 29 44
10997260: 24 3c e8 39 68 bc ff 8b 4d 48 83 c4 08 50 51 8d
10997270: 55 38 52 8d 44 24 60 50 e8 23 68 bc ff 8b 4d 34
10997280: 83 c4 08 50 51 6a 01 57 8b ce e8 01 fc 7a ff 0f
10997290: 28 44 24 20 8d 54 24 30 52 8d 44 24 14 50 53 8d
109972a0: 4d 60 51 8d 54 24 60 52 0f 29 44 24 44 e8 ee 67
109972b0: bc ff 83 c4 08 50 8b 45 5c 50 6a 06 57 8b ce e8
109972c0: cc fb 7a ff 0f 28 44 24 20 8d 4c 24 30 51 8d 95
109972d0: 88 00 00 00 52 8d 44 24 58 50 0f 29 44 24 3c e8
109972e0: bc 67 bc ff 8b 8d 84 00 00 00 83 c4 08 50 51 8d
109972f0: 55 74 52 8d 44 24 50 50 e8 a3 67 bc ff 8b 4d 70
10997300: 83 c4 08 50 51 6a 02 57 8b ce e8 81 fb 7a ff 0f
10997310: 28 44 24 20 8d 54 24 30 52 8d 44 24 14 50 53 8d
10997320: 8d 9c 00 00 00 51 8d 54 24 60 52 0f 29 44 24 44
10997330: e8 6b 67 bc ff 83 c4 08 50 8b 85 98 00 00 00 50
10997340: 6a 03 57 8b ce e8 46 fb 7a ff f3 0f 10 05 10 9f
10997350: c5 10 f3 0f 10 0d 48 fa ab 10 8d 4c 24 30 51 8d
10997360: 54 24 14 52 53 8d 45 24 f3 0f 11 44 24 38 f3 0f
10997370: 11 44 24 34 f3 0f 11 4c 24 30 f3 0f 11 44 24 2c
10997380: 0f 28 44 24 2c 50 8d 4c 24 60 51 0f 29 44 24 44
10997390: e8 0b 67 bc ff 8b 55 20 83 c4 08 50 52 6a 04 57
109973a0: 8b ce e8 e9 fa 7a ff f3 0f 10 05 d4 b0 ac 10 f3
109973b0: 0f 11 44 24 2c f3 0f 11 44 24 28 f3 0f 11 44 24
109973c0: 24 f3 0f 11 44 24 20 0f 28 44 24 20 0f 29 44 24
109973d0: 30 8d 44 24 30 50 8d 4c 24 14 51 53 8b d1 52 68
109973e0: 10 7a b9 10 6a 05 57 8b ce e8 a2 fa 7a ff 5f 5e
109973f0: 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997170 <.text+0x996170>:
10997170:	55                                              	push   ebp
10997171:	8b ec                                           	mov    ebp,esp
10997173:	83 e4 f0                                        	and    esp,0xfffffff0
10997176:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10997179:	83 ec 54                                        	sub    esp,0x54
1099717c:	53                                              	push   ebx
1099717d:	33 db                                           	xor    ebx,ebx
1099717f:	3b c3                                           	cmp    eax,ebx
10997181:	56                                              	push   esi
10997182:	57                                              	push   edi
10997183:	0f 84 65 02 00 00                               	je     0x109973ee
10997189:	39 5d 0c                                        	cmp    DWORD PTR [ebp+0xc],ebx
1099718c:	0f 84 5c 02 00 00                               	je     0x109973ee
10997192:	39 5d 20                                        	cmp    DWORD PTR [ebp+0x20],ebx
10997195:	0f 84 53 02 00 00                               	je     0x109973ee
1099719b:	39 5d 34                                        	cmp    DWORD PTR [ebp+0x34],ebx
1099719e:	0f 84 4a 02 00 00                               	je     0x109973ee
109971a4:	39 5d 48                                        	cmp    DWORD PTR [ebp+0x48],ebx
109971a7:	0f 84 41 02 00 00                               	je     0x109973ee
109971ad:	39 5d 70                                        	cmp    DWORD PTR [ebp+0x70],ebx
109971b0:	0f 84 38 02 00 00                               	je     0x109973ee
109971b6:	39 9d 84 00 00 00                               	cmp    DWORD PTR [ebp+0x84],ebx
109971bc:	0f 84 2c 02 00 00                               	je     0x109973ee
109971c2:	39 9d 98 00 00 00                               	cmp    DWORD PTR [ebp+0x98],ebx
109971c8:	0f 84 20 02 00 00                               	je     0x109973ee
109971ce:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
109971d4:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
109971d8:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
109971dc:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
109971e0:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
109971e4:	8b 71 5c                                        	mov    esi,DWORD PTR [ecx+0x5c]
109971e7:	50                                              	push   eax
109971e8:	8b ce                                           	mov    ecx,esi
109971ea:	e8 51 31 7b ff                                  	call   0x1014a340
109971ef:	f3 0f 10 05 fc df aa 10                         	movss  xmm0,DWORD PTR ds:0x10aadffc
109971f7:	8d 54 24 30                                     	lea    edx,[esp+0x30]
109971fb:	52                                              	push   edx
109971fc:	8b f8                                           	mov    edi,eax
109971fe:	8d 44 24 14                                     	lea    eax,[esp+0x14]
10997202:	50                                              	push   eax
10997203:	53                                              	push   ebx
10997204:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
10997207:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
1099720d:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
10997213:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
10997219:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
1099721f:	0f 28 44 24 2c                                  	movaps xmm0,XMMWORD PTR [esp+0x2c]
10997224:	51                                              	push   ecx
10997225:	8d 54 24 50                                     	lea    edx,[esp+0x50]
10997229:	52                                              	push   edx
1099722a:	0f 29 44 24 34                                  	movaps XMMWORD PTR [esp+0x34],xmm0
1099722f:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
10997234:	e8 67 68 bc ff                                  	call   0x1055daa0
10997239:	83 c4 08                                        	add    esp,0x8
1099723c:	50                                              	push   eax
1099723d:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10997240:	50                                              	push   eax
10997241:	53                                              	push   ebx
10997242:	57                                              	push   edi
10997243:	8b ce                                           	mov    ecx,esi
10997245:	e8 46 fc 7a ff                                  	call   0x10146e90
1099724a:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
1099724f:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10997253:	51                                              	push   ecx
10997254:	8d 55 4c                                        	lea    edx,[ebp+0x4c]
10997257:	52                                              	push   edx
10997258:	8d 44 24 48                                     	lea    eax,[esp+0x48]
1099725c:	50                                              	push   eax
1099725d:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
10997262:	e8 39 68 bc ff                                  	call   0x1055daa0
10997267:	8b 4d 48                                        	mov    ecx,DWORD PTR [ebp+0x48]
1099726a:	83 c4 08                                        	add    esp,0x8
1099726d:	50                                              	push   eax
1099726e:	51                                              	push   ecx
1099726f:	8d 55 38                                        	lea    edx,[ebp+0x38]
10997272:	52                                              	push   edx
10997273:	8d 44 24 60                                     	lea    eax,[esp+0x60]
10997277:	50                                              	push   eax
10997278:	e8 23 68 bc ff                                  	call   0x1055daa0
1099727d:	8b 4d 34                                        	mov    ecx,DWORD PTR [ebp+0x34]
10997280:	83 c4 08                                        	add    esp,0x8
10997283:	50                                              	push   eax
10997284:	51                                              	push   ecx
10997285:	6a 01                                           	push   0x1
10997287:	57                                              	push   edi
10997288:	8b ce                                           	mov    ecx,esi
1099728a:	e8 01 fc 7a ff                                  	call   0x10146e90
1099728f:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
10997294:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10997298:	52                                              	push   edx
10997299:	8d 44 24 14                                     	lea    eax,[esp+0x14]
1099729d:	50                                              	push   eax
1099729e:	53                                              	push   ebx
1099729f:	8d 4d 60                                        	lea    ecx,[ebp+0x60]
109972a2:	51                                              	push   ecx
109972a3:	8d 54 24 60                                     	lea    edx,[esp+0x60]
109972a7:	52                                              	push   edx
109972a8:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
109972ad:	e8 ee 67 bc ff                                  	call   0x1055daa0
109972b2:	83 c4 08                                        	add    esp,0x8
109972b5:	50                                              	push   eax
109972b6:	8b 45 5c                                        	mov    eax,DWORD PTR [ebp+0x5c]
109972b9:	50                                              	push   eax
109972ba:	6a 06                                           	push   0x6
109972bc:	57                                              	push   edi
109972bd:	8b ce                                           	mov    ecx,esi
109972bf:	e8 cc fb 7a ff                                  	call   0x10146e90
109972c4:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
109972c9:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
109972cd:	51                                              	push   ecx
109972ce:	8d 95 88 00 00 00                               	lea    edx,[ebp+0x88]
109972d4:	52                                              	push   edx
109972d5:	8d 44 24 58                                     	lea    eax,[esp+0x58]
109972d9:	50                                              	push   eax
109972da:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
109972df:	e8 bc 67 bc ff                                  	call   0x1055daa0
109972e4:	8b 8d 84 00 00 00                               	mov    ecx,DWORD PTR [ebp+0x84]
109972ea:	83 c4 08                                        	add    esp,0x8
109972ed:	50                                              	push   eax
109972ee:	51                                              	push   ecx
109972ef:	8d 55 74                                        	lea    edx,[ebp+0x74]
109972f2:	52                                              	push   edx
109972f3:	8d 44 24 50                                     	lea    eax,[esp+0x50]
109972f7:	50                                              	push   eax
109972f8:	e8 a3 67 bc ff                                  	call   0x1055daa0
109972fd:	8b 4d 70                                        	mov    ecx,DWORD PTR [ebp+0x70]
10997300:	83 c4 08                                        	add    esp,0x8
10997303:	50                                              	push   eax
10997304:	51                                              	push   ecx
10997305:	6a 02                                           	push   0x2
10997307:	57                                              	push   edi
10997308:	8b ce                                           	mov    ecx,esi
1099730a:	e8 81 fb 7a ff                                  	call   0x10146e90
1099730f:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
10997314:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10997318:	52                                              	push   edx
10997319:	8d 44 24 14                                     	lea    eax,[esp+0x14]
1099731d:	50                                              	push   eax
1099731e:	53                                              	push   ebx
1099731f:	8d 8d 9c 00 00 00                               	lea    ecx,[ebp+0x9c]
10997325:	51                                              	push   ecx
10997326:	8d 54 24 60                                     	lea    edx,[esp+0x60]
1099732a:	52                                              	push   edx
1099732b:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
10997330:	e8 6b 67 bc ff                                  	call   0x1055daa0
10997335:	83 c4 08                                        	add    esp,0x8
10997338:	50                                              	push   eax
10997339:	8b 85 98 00 00 00                               	mov    eax,DWORD PTR [ebp+0x98]
1099733f:	50                                              	push   eax
10997340:	6a 03                                           	push   0x3
10997342:	57                                              	push   edi
10997343:	8b ce                                           	mov    ecx,esi
10997345:	e8 46 fb 7a ff                                  	call   0x10146e90
1099734a:	f3 0f 10 05 10 9f c5 10                         	movss  xmm0,DWORD PTR ds:0x10c59f10
10997352:	f3 0f 10 0d 48 fa ab 10                         	movss  xmm1,DWORD PTR ds:0x10abfa48
1099735a:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1099735e:	51                                              	push   ecx
1099735f:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10997363:	52                                              	push   edx
10997364:	53                                              	push   ebx
10997365:	8d 45 24                                        	lea    eax,[ebp+0x24]
10997368:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
1099736e:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
10997374:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [esp+0x30],xmm1
1099737a:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
10997380:	0f 28 44 24 2c                                  	movaps xmm0,XMMWORD PTR [esp+0x2c]
10997385:	50                                              	push   eax
10997386:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1099738a:	51                                              	push   ecx
1099738b:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
10997390:	e8 0b 67 bc ff                                  	call   0x1055daa0
10997395:	8b 55 20                                        	mov    edx,DWORD PTR [ebp+0x20]
10997398:	83 c4 08                                        	add    esp,0x8
1099739b:	50                                              	push   eax
1099739c:	52                                              	push   edx
1099739d:	6a 04                                           	push   0x4
1099739f:	57                                              	push   edi
109973a0:	8b ce                                           	mov    ecx,esi
109973a2:	e8 e9 fa 7a ff                                  	call   0x10146e90
109973a7:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
109973af:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
109973b5:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
109973bb:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
109973c1:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
109973c7:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
109973cc:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
109973d1:	8d 44 24 30                                     	lea    eax,[esp+0x30]
109973d5:	50                                              	push   eax
109973d6:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
109973da:	51                                              	push   ecx
109973db:	53                                              	push   ebx
109973dc:	8b d1                                           	mov    edx,ecx
109973de:	52                                              	push   edx
109973df:	68 10 7a b9 10                                  	push   0x10b97a10
109973e4:	6a 05                                           	push   0x5
109973e6:	57                                              	push   edi
109973e7:	8b ce                                           	mov    ecx,esi
109973e9:	e8 a2 fa 7a ff                                  	call   0x10146e90
109973ee:	5f                                              	pop    edi
109973ef:	5e                                              	pop    esi
109973f0:	5b                                              	pop    ebx
109973f1:	8b e5                                           	mov    esp,ebp
109973f3:	5d                                              	pop    ebp
109973f4:	c3                                              	ret
109973f5:	cc                                              	int3
109973f6:	cc                                              	int3
109973f7:	cc                                              	int3
109973f8:	cc                                              	int3
109973f9:	cc                                              	int3
109973fa:	cc                                              	int3
109973fb:	cc                                              	int3
109973fc:	cc                                              	int3
109973fd:	cc                                              	int3
109973fe:	cc                                              	int3
109973ff:	cc                                              	int3
