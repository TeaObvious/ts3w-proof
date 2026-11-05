# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00520100 WinDialog_OnMouseMove
# Complete Ghidra body [00520100, 00520707] inclusive; 360 instructions, 1544 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 00520100_WinDialog_OnMouseMove.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00520100 <.text+0x11f100>:
  520100:	83 ec 18                                        	sub    esp,0x18
  520103:	56                                              	push   esi
  520104:	8b f1                                           	mov    esi,ecx
  520106:	85 f6                                           	test   esi,esi
  520108:	57                                              	push   edi
  520109:	74 05                                           	je     0x520110
  52010b:	8d 7e 04                                        	lea    edi,[esi+0x4]
  52010e:	eb 02                                           	jmp    0x520112
  520110:	33 ff                                           	xor    edi,edi
  520112:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  520115:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  520117:	8b 50 60                                        	mov    edx,DWORD PTR [eax+0x60]
  52011a:	6a 01                                           	push   0x1
  52011c:	ff d2                                           	call   edx
  52011e:	3b c7                                           	cmp    eax,edi
  520120:	0f 85 5a 05 00 00                               	jne    0x520680
  520126:	f3 0f 10 46 40                                  	movss  xmm0,DWORD PTR [esi+0x40]
  52012b:	8b 46 2c                                        	mov    eax,DWORD PTR [esi+0x2c]
  52012e:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  520131:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  520137:	f3 0f 10 46 44                                  	movss  xmm0,DWORD PTR [esi+0x44]
  52013c:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  520142:	f3 0f 10 46 48                                  	movss  xmm0,DWORD PTR [esi+0x48]
  520147:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  52014d:	f3 0f 10 46 4c                                  	movss  xmm0,DWORD PTR [esi+0x4c]
  520152:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  520158:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  52015a:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
  52015d:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  520160:	83 ec 08                                        	sub    esp,0x8
  520163:	54                                              	push   esp
  520164:	ff d0                                           	call   eax
  520166:	8b 97 c8 00 00 00                               	mov    edx,DWORD PTR [edi+0xc8]
  52016c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  520170:	51                                              	push   ecx
  520171:	8b 4e 2c                                        	mov    ecx,DWORD PTR [esi+0x2c]
  520174:	83 c1 04                                        	add    ecx,0x4
  520177:	ff d2                                           	call   edx
  520179:	8b 86 5c 02 00 00                               	mov    eax,DWORD PTR [esi+0x25c]
  52017f:	83 f8 09                                        	cmp    eax,0x9
  520182:	0f 87 e8 04 00 00                               	ja     0x520670
  520188:	ff 24 85 08 07 52 00                            	jmp    DWORD PTR [eax*4+0x520708]
  52018f:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  520195:	f3 0f 5c 86 60 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x260]
  52019d:	f3 0f 10 56 48                                  	movss  xmm2,DWORD PTR [esi+0x48]
  5201a2:	f3 0f 5c 56 40                                  	subss  xmm2,DWORD PTR [esi+0x40]
  5201a7:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
  5201ad:	f3 0f 5c 8e 64 02 00 00                         	subss  xmm1,DWORD PTR [esi+0x264]
  5201b5:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  5201b9:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5201bf:	f3 0f 10 46 4c                                  	movss  xmm0,DWORD PTR [esi+0x4c]
  5201c4:	f3 0f 5c 46 44                                  	subss  xmm0,DWORD PTR [esi+0x44]
  5201c9:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5201cf:	f3 0f 11 54 24 18                               	movss  DWORD PTR [esp+0x18],xmm2
  5201d5:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  5201d9:	e9 8c 04 00 00                                  	jmp    0x52066a
  5201de:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  5201e4:	f3 0f 5c 86 60 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x260]
  5201ec:	f3 0f 10 4c 24 18                               	movss  xmm1,DWORD PTR [esp+0x18]
  5201f2:	f3 0f 10 96 5c 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x35c]
  5201fa:	0f 28 d9                                        	movaps xmm3,xmm1
  5201fd:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  520201:	0f 2f d3                                        	comiss xmm2,xmm3
  520204:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  52020a:	76 0d                                           	jbe    0x520219
  52020c:	0f 28 c1                                        	movaps xmm0,xmm1
  52020f:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  520213:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  520219:	f3 0f 10 96 54 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x354]
  520221:	0f 28 d9                                        	movaps xmm3,xmm1
  520224:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  520228:	0f 2f da                                        	comiss xmm3,xmm2
  52022b:	0f 86 3f 04 00 00                               	jbe    0x520670
  520231:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  520234:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
  520237:	8d 7e 04                                        	lea    edi,[esi+0x4]
  52023a:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  52023e:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  520242:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  520248:	51                                              	push   ecx
  520249:	e9 a0 04 00 00                                  	jmp    0x5206ee
  52024e:	f3 0f 10 86 60 02 00 00                         	movss  xmm0,DWORD PTR [esi+0x260]
  520256:	f3 0f 58 44 24 08                               	addss  xmm0,DWORD PTR [esp+0x8]
  52025c:	f3 0f 10 54 24 10                               	movss  xmm2,DWORD PTR [esp+0x10]
  520262:	f3 0f 10 8e 5c 03 00 00                         	movss  xmm1,DWORD PTR [esi+0x35c]
  52026a:	0f 28 d8                                        	movaps xmm3,xmm0
  52026d:	f3 0f 5c da                                     	subss  xmm3,xmm2
  520271:	0f 2f cb                                        	comiss xmm1,xmm3
  520274:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  52027a:	76 0d                                           	jbe    0x520289
  52027c:	f3 0f 58 ca                                     	addss  xmm1,xmm2
  520280:	0f 28 c1                                        	movaps xmm0,xmm1
  520283:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  520289:	f3 0f 10 8e 54 03 00 00                         	movss  xmm1,DWORD PTR [esi+0x354]
  520291:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  520295:	0f 2f c1                                        	comiss xmm0,xmm1
  520298:	0f 86 d2 03 00 00                               	jbe    0x520670
  52029e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  5202a1:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
  5202a4:	8d 7e 04                                        	lea    edi,[esi+0x4]
  5202a7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5202ab:	f3 0f 58 ca                                     	addss  xmm1,xmm2
  5202af:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  5202b5:	51                                              	push   ecx
  5202b6:	e9 33 04 00 00                                  	jmp    0x5206ee
  5202bb:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5202c1:	f3 0f 5c 86 64 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x264]
  5202c9:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
  5202cf:	f3 0f 10 96 60 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x360]
  5202d7:	0f 28 d9                                        	movaps xmm3,xmm1
  5202da:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  5202de:	0f 2f d3                                        	comiss xmm2,xmm3
  5202e1:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  5202e7:	76 0d                                           	jbe    0x5202f6
  5202e9:	0f 28 c1                                        	movaps xmm0,xmm1
  5202ec:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  5202f0:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  5202f6:	f3 0f 10 96 58 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x358]
  5202fe:	0f 28 d9                                        	movaps xmm3,xmm1
  520301:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  520305:	0f 2f da                                        	comiss xmm3,xmm2
  520308:	0f 86 62 03 00 00                               	jbe    0x520670
  52030e:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  520311:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
  520314:	8d 7e 04                                        	lea    edi,[esi+0x4]
  520317:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  52031b:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  52031f:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  520325:	51                                              	push   ecx
  520326:	e9 c3 03 00 00                                  	jmp    0x5206ee
  52032b:	f3 0f 10 86 64 02 00 00                         	movss  xmm0,DWORD PTR [esi+0x264]
  520333:	f3 0f 58 44 24 0c                               	addss  xmm0,DWORD PTR [esp+0xc]
  520339:	f3 0f 10 54 24 14                               	movss  xmm2,DWORD PTR [esp+0x14]
  52033f:	f3 0f 10 8e 60 03 00 00                         	movss  xmm1,DWORD PTR [esi+0x360]
  520347:	0f 28 d8                                        	movaps xmm3,xmm0
  52034a:	f3 0f 5c da                                     	subss  xmm3,xmm2
  52034e:	0f 2f cb                                        	comiss xmm1,xmm3
  520351:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  520357:	76 0d                                           	jbe    0x520366
  520359:	f3 0f 58 ca                                     	addss  xmm1,xmm2
  52035d:	0f 28 c1                                        	movaps xmm0,xmm1
  520360:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  520366:	f3 0f 10 8e 58 03 00 00                         	movss  xmm1,DWORD PTR [esi+0x358]
  52036e:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  520372:	0f 2f c1                                        	comiss xmm0,xmm1
  520375:	0f 86 f5 02 00 00                               	jbe    0x520670
  52037b:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  52037e:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
  520381:	8d 7e 04                                        	lea    edi,[esi+0x4]
  520384:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  520388:	f3 0f 58 ca                                     	addss  xmm1,xmm2
  52038c:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  520392:	51                                              	push   ecx
  520393:	e9 56 03 00 00                                  	jmp    0x5206ee
  520398:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  52039e:	f3 0f 5c 86 60 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x260]
  5203a6:	f3 0f 10 54 24 18                               	movss  xmm2,DWORD PTR [esp+0x18]
  5203ac:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
  5203b2:	f3 0f 10 9e 5c 03 00 00                         	movss  xmm3,DWORD PTR [esi+0x35c]
  5203ba:	f3 0f 5c 8e 64 02 00 00                         	subss  xmm1,DWORD PTR [esi+0x264]
  5203c2:	0f 28 e2                                        	movaps xmm4,xmm2
  5203c5:	f3 0f 5c e0                                     	subss  xmm4,xmm0
  5203c9:	0f 2f dc                                        	comiss xmm3,xmm4
  5203cc:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5203d2:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5203d8:	76 0d                                           	jbe    0x5203e7
  5203da:	0f 28 c2                                        	movaps xmm0,xmm2
  5203dd:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  5203e1:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5203e7:	f3 0f 10 5c 24 1c                               	movss  xmm3,DWORD PTR [esp+0x1c]
  5203ed:	f3 0f 10 a6 60 03 00 00                         	movss  xmm4,DWORD PTR [esi+0x360]
  5203f5:	0f 28 eb                                        	movaps xmm5,xmm3
  5203f8:	f3 0f 5c e9                                     	subss  xmm5,xmm1
  5203fc:	0f 2f e5                                        	comiss xmm4,xmm5
  5203ff:	76 0d                                           	jbe    0x52040e
  520401:	0f 28 cb                                        	movaps xmm1,xmm3
  520404:	f3 0f 5c cc                                     	subss  xmm1,xmm4
  520408:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  52040e:	f3 0f 10 a6 54 03 00 00                         	movss  xmm4,DWORD PTR [esi+0x354]
  520416:	0f 28 ea                                        	movaps xmm5,xmm2
  520419:	f3 0f 5c e8                                     	subss  xmm5,xmm0
  52041d:	0f 2f ec                                        	comiss xmm5,xmm4
  520420:	76 0a                                           	jbe    0x52042c
  520422:	f3 0f 5c d4                                     	subss  xmm2,xmm4
  520426:	f3 0f 11 54 24 10                               	movss  DWORD PTR [esp+0x10],xmm2
  52042c:	f3 0f 10 86 58 03 00 00                         	movss  xmm0,DWORD PTR [esi+0x358]
  520434:	0f 28 d3                                        	movaps xmm2,xmm3
  520437:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  52043b:	0f 2f d0                                        	comiss xmm2,xmm0
  52043e:	0f 86 2c 02 00 00                               	jbe    0x520670
  520444:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  520447:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
  52044a:	8d 7e 04                                        	lea    edi,[esi+0x4]
  52044d:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  520451:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  520455:	f3 0f 11 5c 24 14                               	movss  DWORD PTR [esp+0x14],xmm3
  52045b:	51                                              	push   ecx
  52045c:	e9 8d 02 00 00                                  	jmp    0x5206ee
  520461:	f3 0f 10 86 60 02 00 00                         	movss  xmm0,DWORD PTR [esi+0x260]
  520469:	f3 0f 58 44 24 08                               	addss  xmm0,DWORD PTR [esp+0x8]
  52046f:	f3 0f 10 64 24 10                               	movss  xmm4,DWORD PTR [esp+0x10]
  520475:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
  52047b:	f3 0f 10 96 5c 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x35c]
  520483:	f3 0f 5c 8e 64 02 00 00                         	subss  xmm1,DWORD PTR [esi+0x264]
  52048b:	0f 28 d8                                        	movaps xmm3,xmm0
  52048e:	f3 0f 5c dc                                     	subss  xmm3,xmm4
  520492:	0f 2f d3                                        	comiss xmm2,xmm3
  520495:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  52049b:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5204a1:	76 0d                                           	jbe    0x5204b0
  5204a3:	f3 0f 58 d4                                     	addss  xmm2,xmm4
  5204a7:	0f 28 c2                                        	movaps xmm0,xmm2
  5204aa:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  5204b0:	f3 0f 10 54 24 1c                               	movss  xmm2,DWORD PTR [esp+0x1c]
  5204b6:	f3 0f 10 9e 60 03 00 00                         	movss  xmm3,DWORD PTR [esi+0x360]
  5204be:	0f 28 ea                                        	movaps xmm5,xmm2
  5204c1:	f3 0f 5c e9                                     	subss  xmm5,xmm1
  5204c5:	0f 2f dd                                        	comiss xmm3,xmm5
  5204c8:	76 0d                                           	jbe    0x5204d7
  5204ca:	0f 28 ca                                        	movaps xmm1,xmm2
  5204cd:	f3 0f 5c cb                                     	subss  xmm1,xmm3
  5204d1:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5204d7:	f3 0f 10 9e 54 03 00 00                         	movss  xmm3,DWORD PTR [esi+0x354]
  5204df:	f3 0f 5c c4                                     	subss  xmm0,xmm4
  5204e3:	0f 2f c3                                        	comiss xmm0,xmm3
  5204e6:	76 0a                                           	jbe    0x5204f2
  5204e8:	f3 0f 58 dc                                     	addss  xmm3,xmm4
  5204ec:	f3 0f 11 5c 24 18                               	movss  DWORD PTR [esp+0x18],xmm3
  5204f2:	f3 0f 10 86 58 03 00 00                         	movss  xmm0,DWORD PTR [esi+0x358]
  5204fa:	0f 28 da                                        	movaps xmm3,xmm2
  5204fd:	f3 0f 5c d9                                     	subss  xmm3,xmm1
  520501:	0f 2f d8                                        	comiss xmm3,xmm0
  520504:	0f 86 66 01 00 00                               	jbe    0x520670
  52050a:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  52050d:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
  520510:	8d 7e 04                                        	lea    edi,[esi+0x4]
  520513:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  520517:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  52051b:	f3 0f 11 54 24 14                               	movss  DWORD PTR [esp+0x14],xmm2
  520521:	51                                              	push   ecx
  520522:	e9 c7 01 00 00                                  	jmp    0x5206ee
  520527:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  52052d:	f3 0f 5c 86 60 02 00 00                         	subss  xmm0,DWORD PTR [esi+0x260]
  520535:	f3 0f 10 5c 24 18                               	movss  xmm3,DWORD PTR [esp+0x18]
  52053b:	f3 0f 10 8e 64 02 00 00                         	movss  xmm1,DWORD PTR [esi+0x264]
  520543:	f3 0f 10 96 5c 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x35c]
  52054b:	f3 0f 58 4c 24 0c                               	addss  xmm1,DWORD PTR [esp+0xc]
  520551:	0f 28 e3                                        	movaps xmm4,xmm3
  520554:	f3 0f 5c e0                                     	subss  xmm4,xmm0
  520558:	0f 2f d4                                        	comiss xmm2,xmm4
  52055b:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  520561:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  520567:	76 0d                                           	jbe    0x520576
  520569:	0f 28 c3                                        	movaps xmm0,xmm3
  52056c:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  520570:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  520576:	f3 0f 10 64 24 14                               	movss  xmm4,DWORD PTR [esp+0x14]
  52057c:	f3 0f 10 96 60 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x360]
  520584:	0f 28 e9                                        	movaps xmm5,xmm1
  520587:	f3 0f 5c ec                                     	subss  xmm5,xmm4
  52058b:	0f 2f d5                                        	comiss xmm2,xmm5
  52058e:	76 0d                                           	jbe    0x52059d
  520590:	f3 0f 58 d4                                     	addss  xmm2,xmm4
  520594:	0f 28 ca                                        	movaps xmm1,xmm2
  520597:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  52059d:	f3 0f 10 96 54 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x354]
  5205a5:	0f 28 eb                                        	movaps xmm5,xmm3
  5205a8:	f3 0f 5c e8                                     	subss  xmm5,xmm0
  5205ac:	0f 2f ea                                        	comiss xmm5,xmm2
  5205af:	0f 86 a0 00 00 00                               	jbe    0x520655
  5205b5:	f3 0f 5c da                                     	subss  xmm3,xmm2
  5205b9:	f3 0f 11 5c 24 10                               	movss  DWORD PTR [esp+0x10],xmm3
  5205bf:	e9 91 00 00 00                                  	jmp    0x520655
  5205c4:	f3 0f 10 86 60 02 00 00                         	movss  xmm0,DWORD PTR [esi+0x260]
  5205cc:	f3 0f 58 44 24 08                               	addss  xmm0,DWORD PTR [esp+0x8]
  5205d2:	f3 0f 10 5c 24 10                               	movss  xmm3,DWORD PTR [esp+0x10]
  5205d8:	f3 0f 10 8e 64 02 00 00                         	movss  xmm1,DWORD PTR [esi+0x264]
  5205e0:	f3 0f 10 96 5c 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x35c]
  5205e8:	f3 0f 58 4c 24 0c                               	addss  xmm1,DWORD PTR [esp+0xc]
  5205ee:	0f 28 e0                                        	movaps xmm4,xmm0
  5205f1:	f3 0f 5c e3                                     	subss  xmm4,xmm3
  5205f5:	0f 2f d4                                        	comiss xmm2,xmm4
  5205f8:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  5205fe:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  520604:	76 0d                                           	jbe    0x520613
  520606:	f3 0f 58 d3                                     	addss  xmm2,xmm3
  52060a:	0f 28 c2                                        	movaps xmm0,xmm2
  52060d:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  520613:	f3 0f 10 64 24 14                               	movss  xmm4,DWORD PTR [esp+0x14]
  520619:	f3 0f 10 96 60 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x360]
  520621:	0f 28 e9                                        	movaps xmm5,xmm1
  520624:	f3 0f 5c ec                                     	subss  xmm5,xmm4
  520628:	0f 2f d5                                        	comiss xmm2,xmm5
  52062b:	76 0d                                           	jbe    0x52063a
  52062d:	f3 0f 58 d4                                     	addss  xmm2,xmm4
  520631:	0f 28 ca                                        	movaps xmm1,xmm2
  520634:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  52063a:	f3 0f 10 96 54 03 00 00                         	movss  xmm2,DWORD PTR [esi+0x354]
  520642:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  520646:	0f 2f c2                                        	comiss xmm0,xmm2
  520649:	76 0a                                           	jbe    0x520655
  52064b:	f3 0f 58 d3                                     	addss  xmm2,xmm3
  52064f:	f3 0f 11 54 24 18                               	movss  DWORD PTR [esp+0x18],xmm2
  520655:	f3 0f 10 86 58 03 00 00                         	movss  xmm0,DWORD PTR [esi+0x358]
  52065d:	f3 0f 5c cc                                     	subss  xmm1,xmm4
  520661:	0f 2f c8                                        	comiss xmm1,xmm0
  520664:	76 0a                                           	jbe    0x520670
  520666:	f3 0f 58 c4                                     	addss  xmm0,xmm4
  52066a:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  520670:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  520673:	8b 50 64                                        	mov    edx,DWORD PTR [eax+0x64]
  520676:	8d 7e 04                                        	lea    edi,[esi+0x4]
  520679:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  52067d:	51                                              	push   ecx
  52067e:	eb 6e                                           	jmp    0x5206ee
  520680:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  520683:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  520686:	8d 7e 04                                        	lea    edi,[esi+0x4]
  520689:	8b cf                                           	mov    ecx,edi
  52068b:	ff d2                                           	call   edx
  52068d:	85 c0                                           	test   eax,eax
  52068f:	74 0a                                           	je     0x52069b
  520691:	05 ff ef ff ff                                  	add    eax,0xffffefff
  520696:	83 f8 0c                                        	cmp    eax,0xc
  520699:	77 57                                           	ja     0x5206f2
  52069b:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  52069f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5206a1:	8b 90 a4 00 00 00                               	mov    edx,DWORD PTR [eax+0xa4]
  5206a7:	83 ec 08                                        	sub    esp,0x8
  5206aa:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5206ae:	8b ce                                           	mov    ecx,esi
  5206b0:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  5206b4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5206b7:	ff d2                                           	call   edx
  5206b9:	83 c0 fe                                        	add    eax,0xfffffffe
  5206bc:	83 f8 07                                        	cmp    eax,0x7
  5206bf:	77 23                                           	ja     0x5206e4
  5206c1:	ff 24 85 30 07 52 00                            	jmp    DWORD PTR [eax*4+0x520730]
  5206c8:	68 08 10 00 00                                  	push   0x1008
  5206cd:	eb 1a                                           	jmp    0x5206e9
  5206cf:	68 09 10 00 00                                  	push   0x1009
  5206d4:	eb 13                                           	jmp    0x5206e9
  5206d6:	68 0a 10 00 00                                  	push   0x100a
  5206db:	eb 0c                                           	jmp    0x5206e9
  5206dd:	68 0b 10 00 00                                  	push   0x100b
  5206e2:	eb 05                                           	jmp    0x5206e9
  5206e4:	68 02 10 00 00                                  	push   0x1002
  5206e9:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5206eb:	8b 50 70                                        	mov    edx,DWORD PTR [eax+0x70]
  5206ee:	8b cf                                           	mov    ecx,edi
  5206f0:	ff d2                                           	call   edx
  5206f2:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5206f4:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
  5206fa:	8b cf                                           	mov    ecx,edi
  5206fc:	ff d2                                           	call   edx
  5206fe:	5f                                              	pop    edi
  5206ff:	b0 01                                           	mov    al,0x1
  520701:	5e                                              	pop    esi
  520702:	83 c4 18                                        	add    esp,0x18
  520705:	c2 0c 00                                        	ret    0xc
