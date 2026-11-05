# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00793420 (ScriptCore.World::World_FindPlaceOutsideLot)
Paired Ghidra pseudocode: 00793420_ScriptCore_World_World_FindPlaceOutsideLot.c
Window: [0x00793420, 0x00793760) (832 bytes; stop exclusive)
Next defined Ghidra entry: 0x00793760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00793420: 55 8b ec 83 e4 f0 83 ec 74 8b 0d c4 db 1e 01 85
00793430: c9 53 56 57 89 4c 24 14 0f 84 c0 02 00 00 8b 45
00793440: 0c 8b 55 08 6a 00 50 52 e8 c3 f3 4c 00 85 c0 0f
00793450: 84 a9 02 00 00 8d b8 34 01 00 00 bb 01 00 00 00
00793460: 8b f7 eb 0c 8d a4 24 00 00 00 00 eb 03 8d 49 00
00793470: f3 0f 10 3d b4 b5 f9 00 f3 0f 10 35 f0 98 f9 00
00793480: 8b c3 25 03 00 00 80 79 05 48 83 c8 fc 40 f3 0f
00793490: 10 6e 04 f3 0f 10 4c c7 04 f3 0f 10 26 f3 0f 10
007934a0: 04 c7 8d 04 c7 f3 0f 5c cd f3 0f 5c c4 f3 0f 11
007934b0: 44 24 28 0f 28 de f3 0f 5c d9 f3 0f 11 5c 24 30
007934c0: d9 44 24 30 8b 4c 24 14 dc c8 83 ec 08 d9 44 24
007934d0: 30 dc c8 de c1 d9 fa d9 e8 de f1 d9 5c 24 18 f3
007934e0: 0f 10 4c 24 18 0f 28 d1 f3 0f 59 c8 f3 0f 10 00
007934f0: f3 0f 59 d3 0f 28 d9 f3 0f 10 48 04 f3 0f 58 cd
00793500: f3 0f 58 c4 f3 0f 59 cf f3 0f 59 c7 f3 0f 58 cb
00793510: f3 0f 58 c2 f3 0f 11 4c 24 44 d9 44 24 44 f3 0f
00793520: 11 44 24 40 d9 5c 24 04 0f 28 c6 d9 44 24 40 f3
00793530: 0f 5c c2 d9 1c 24 f3 0f 11 5c 24 4c f3 0f 11 44
00793540: 24 54 e8 89 52 4d 00 85 c0 74 12 83 c3 01 8d 4b
00793550: ff 83 c6 08 83 f9 04 0f 8c 13 ff ff ff e8 fe 38
00793560: ef ff 8b 4c 24 14 f3 0f 10 81 c0 00 00 00 f3 0f
00793570: 10 89 bc 00 00 00 0f 2f c8 89 44 24 24 f3 0f 11
00793580: 44 24 18 f3 0f 11 4c 24 1c 8d 44 24 18 77 04 8d
00793590: 44 24 1c d9 00 8b 55 10 8b 1a d9 7c 24 10 0f b7
007935a0: 44 24 10 0d 00 0c 00 00 89 44 24 20 83 c3 01 d9
007935b0: 6c 24 20 df 7c 24 30 8b 44 24 30 3b d8 89 44 24
007935c0: 28 d9 6c 24 10 0f 83 33 01 00 00 8b 7d 14 eb 04
007935d0: 8b 4c 24 14 f6 c3 01 75 0a f3 0f 10 05 f8 98 f9
007935e0: 00 eb 08 f3 0f 10 05 18 b2 fa 00 8b c3 d1 e8 85
007935f0: c0 89 44 24 20 db 44 24 20 f3 0f 11 44 24 10 7d
00793600: 06 d8 05 48 99 f9 00 d8 4c 24 10 f3 0f 10 4c 24
00793610: 4c f3 0f 10 44 24 44 33 f6 56 d9 5c 24 24 f3 0f
00793620: 10 54 24 24 56 56 56 56 6a 01 f3 0f 59 c2 f3 0f
00793630: 58 44 24 50 f3 0f 59 ca f3 0f 58 4c 24 54 f3 0f
00793640: 11 4c 24 4c d9 44 24 4c f3 0f 11 44 24 48 f3 0f
00793650: 10 44 24 48 56 83 ec 08 d9 5c 24 04 f3 0f 11 84
00793660: 24 90 00 00 00 f3 0f 10 44 24 58 d9 44 24 54 d9
00793670: 1c 24 f3 0f 11 84 24 8c 00 00 00 e8 10 6a 4d 00
00793680: d9 5c 24 20 f3 0f 10 44 24 20 d9 e8 8d 4c 24 50
00793690: 51 6a 0c f3 0f 11 44 24 6c f3 0f 10 44 24 38 51
007936a0: 8b 4c 24 30 d9 1c 24 f3 0f 11 44 24 6c 0f 28 44
007936b0: 24 6c 8d 54 24 7c 52 0f 29 84 24 80 00 00 00 89
007936c0: 74 24 60 89 74 24 64 89 74 24 68 c7 44 24 6c ec
007936d0: 4d 00 01 e8 08 39 ef ff 84 c0 75 04 3b fe 75 27
007936e0: 8b 44 24 50 3b c6 74 09 50 e8 f2 0d d5 ff 83 c4
007936f0: 04 83 c3 01 3b 5c 24 28 0f 82 d2 fe ff ff 32 c0
00793700: 5f 5e 5b 8b e5 5d c3 0f 28 44 24 70 8b 45 10 0f
00793710: 29 44 24 60 f3 0f 10 4c 24 60 0f 29 44 24 60 f3
00793720: 0f 11 0f f3 0f 10 4c 24 64 0f 29 44 24 60 f3 0f
00793730: 10 44 24 68 f3 0f 11 4f 04 f3 0f 11 47 08 89 18
00793740: 8b 44 24 50 3b c6 74 09 50 e8 92 0d d5 ff 83 c4
00793750: 04 5f 5e b0 01 5b 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00793420 <.text+0x392420>:
  793420:	55                                              	push   ebp
  793421:	8b ec                                           	mov    ebp,esp
  793423:	83 e4 f0                                        	and    esp,0xfffffff0
  793426:	83 ec 74                                        	sub    esp,0x74
  793429:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  79342f:	85 c9                                           	test   ecx,ecx
  793431:	53                                              	push   ebx
  793432:	56                                              	push   esi
  793433:	57                                              	push   edi
  793434:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  793438:	0f 84 c0 02 00 00                               	je     0x7936fe
  79343e:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  793441:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  793444:	6a 00                                           	push   0x0
  793446:	50                                              	push   eax
  793447:	52                                              	push   edx
  793448:	e8 c3 f3 4c 00                                  	call   0xc62810
  79344d:	85 c0                                           	test   eax,eax
  79344f:	0f 84 a9 02 00 00                               	je     0x7936fe
  793455:	8d b8 34 01 00 00                               	lea    edi,[eax+0x134]
  79345b:	bb 01 00 00 00                                  	mov    ebx,0x1
  793460:	8b f7                                           	mov    esi,edi
  793462:	eb 0c                                           	jmp    0x793470
  793464:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  79346b:	eb 03                                           	jmp    0x793470
  79346d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  793470:	f3 0f 10 3d b4 b5 f9 00                         	movss  xmm7,DWORD PTR ds:0xf9b5b4
  793478:	f3 0f 10 35 f0 98 f9 00                         	movss  xmm6,DWORD PTR ds:0xf998f0
  793480:	8b c3                                           	mov    eax,ebx
  793482:	25 03 00 00 80                                  	and    eax,0x80000003
  793487:	79 05                                           	jns    0x79348e
  793489:	48                                              	dec    eax
  79348a:	83 c8 fc                                        	or     eax,0xfffffffc
  79348d:	40                                              	inc    eax
  79348e:	f3 0f 10 6e 04                                  	movss  xmm5,DWORD PTR [esi+0x4]
  793493:	f3 0f 10 4c c7 04                               	movss  xmm1,DWORD PTR [edi+eax*8+0x4]
  793499:	f3 0f 10 26                                     	movss  xmm4,DWORD PTR [esi]
  79349d:	f3 0f 10 04 c7                                  	movss  xmm0,DWORD PTR [edi+eax*8]
  7934a2:	8d 04 c7                                        	lea    eax,[edi+eax*8]
  7934a5:	f3 0f 5c cd                                     	subss  xmm1,xmm5
  7934a9:	f3 0f 5c c4                                     	subss  xmm0,xmm4
  7934ad:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  7934b3:	0f 28 de                                        	movaps xmm3,xmm6
  7934b6:	f3 0f 5c d9                                     	subss  xmm3,xmm1
  7934ba:	f3 0f 11 5c 24 30                               	movss  DWORD PTR [esp+0x30],xmm3
  7934c0:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  7934c4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7934c8:	dc c8                                           	fmul   st(0),st
  7934ca:	83 ec 08                                        	sub    esp,0x8
  7934cd:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  7934d1:	dc c8                                           	fmul   st(0),st
  7934d3:	de c1                                           	faddp  st(1),st
  7934d5:	d9 fa                                           	fsqrt
  7934d7:	d9 e8                                           	fld1
  7934d9:	de f1                                           	fdivrp st(1),st
  7934db:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  7934df:	f3 0f 10 4c 24 18                               	movss  xmm1,DWORD PTR [esp+0x18]
  7934e5:	0f 28 d1                                        	movaps xmm2,xmm1
  7934e8:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  7934ec:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  7934f0:	f3 0f 59 d3                                     	mulss  xmm2,xmm3
  7934f4:	0f 28 d9                                        	movaps xmm3,xmm1
  7934f7:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  7934fc:	f3 0f 58 cd                                     	addss  xmm1,xmm5
  793500:	f3 0f 58 c4                                     	addss  xmm0,xmm4
  793504:	f3 0f 59 cf                                     	mulss  xmm1,xmm7
  793508:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  79350c:	f3 0f 58 cb                                     	addss  xmm1,xmm3
  793510:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  793514:	f3 0f 11 4c 24 44                               	movss  DWORD PTR [esp+0x44],xmm1
  79351a:	d9 44 24 44                                     	fld    DWORD PTR [esp+0x44]
  79351e:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
  793524:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  793528:	0f 28 c6                                        	movaps xmm0,xmm6
  79352b:	d9 44 24 40                                     	fld    DWORD PTR [esp+0x40]
  79352f:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  793533:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  793536:	f3 0f 11 5c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm3
  79353c:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
  793542:	e8 89 52 4d 00                                  	call   0xc687d0
  793547:	85 c0                                           	test   eax,eax
  793549:	74 12                                           	je     0x79355d
  79354b:	83 c3 01                                        	add    ebx,0x1
  79354e:	8d 4b ff                                        	lea    ecx,[ebx-0x1]
  793551:	83 c6 08                                        	add    esi,0x8
  793554:	83 f9 04                                        	cmp    ecx,0x4
  793557:	0f 8c 13 ff ff ff                               	jl     0x793470
  79355d:	e8 fe 38 ef ff                                  	call   0x686e60
  793562:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  793566:	f3 0f 10 81 c0 00 00 00                         	movss  xmm0,DWORD PTR [ecx+0xc0]
  79356e:	f3 0f 10 89 bc 00 00 00                         	movss  xmm1,DWORD PTR [ecx+0xbc]
  793576:	0f 2f c8                                        	comiss xmm1,xmm0
  793579:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  79357d:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  793583:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  793589:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  79358d:	77 04                                           	ja     0x793593
  79358f:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  793593:	d9 00                                           	fld    DWORD PTR [eax]
  793595:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  793598:	8b 1a                                           	mov    ebx,DWORD PTR [edx]
  79359a:	d9 7c 24 10                                     	fnstcw WORD PTR [esp+0x10]
  79359e:	0f b7 44 24 10                                  	movzx  eax,WORD PTR [esp+0x10]
  7935a3:	0d 00 0c 00 00                                  	or     eax,0xc00
  7935a8:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  7935ac:	83 c3 01                                        	add    ebx,0x1
  7935af:	d9 6c 24 20                                     	fldcw  WORD PTR [esp+0x20]
  7935b3:	df 7c 24 30                                     	fistp  QWORD PTR [esp+0x30]
  7935b7:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  7935bb:	3b d8                                           	cmp    ebx,eax
  7935bd:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  7935c1:	d9 6c 24 10                                     	fldcw  WORD PTR [esp+0x10]
  7935c5:	0f 83 33 01 00 00                               	jae    0x7936fe
  7935cb:	8b 7d 14                                        	mov    edi,DWORD PTR [ebp+0x14]
  7935ce:	eb 04                                           	jmp    0x7935d4
  7935d0:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7935d4:	f6 c3 01                                        	test   bl,0x1
  7935d7:	75 0a                                           	jne    0x7935e3
  7935d9:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  7935e1:	eb 08                                           	jmp    0x7935eb
  7935e3:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  7935eb:	8b c3                                           	mov    eax,ebx
  7935ed:	d1 e8                                           	shr    eax,1
  7935ef:	85 c0                                           	test   eax,eax
  7935f1:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  7935f5:	db 44 24 20                                     	fild   DWORD PTR [esp+0x20]
  7935f9:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  7935ff:	7d 06                                           	jge    0x793607
  793601:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  793607:	d8 4c 24 10                                     	fmul   DWORD PTR [esp+0x10]
  79360b:	f3 0f 10 4c 24 4c                               	movss  xmm1,DWORD PTR [esp+0x4c]
  793611:	f3 0f 10 44 24 44                               	movss  xmm0,DWORD PTR [esp+0x44]
  793617:	33 f6                                           	xor    esi,esi
  793619:	56                                              	push   esi
  79361a:	d9 5c 24 24                                     	fstp   DWORD PTR [esp+0x24]
  79361e:	f3 0f 10 54 24 24                               	movss  xmm2,DWORD PTR [esp+0x24]
  793624:	56                                              	push   esi
  793625:	56                                              	push   esi
  793626:	56                                              	push   esi
  793627:	56                                              	push   esi
  793628:	6a 01                                           	push   0x1
  79362a:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  79362e:	f3 0f 58 44 24 50                               	addss  xmm0,DWORD PTR [esp+0x50]
  793634:	f3 0f 59 ca                                     	mulss  xmm1,xmm2
  793638:	f3 0f 58 4c 24 54                               	addss  xmm1,DWORD PTR [esp+0x54]
  79363e:	f3 0f 11 4c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm1
  793644:	d9 44 24 4c                                     	fld    DWORD PTR [esp+0x4c]
  793648:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  79364e:	f3 0f 10 44 24 48                               	movss  xmm0,DWORD PTR [esp+0x48]
  793654:	56                                              	push   esi
  793655:	83 ec 08                                        	sub    esp,0x8
  793658:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  79365c:	f3 0f 11 84 24 90 00 00 00                      	movss  DWORD PTR [esp+0x90],xmm0
  793665:	f3 0f 10 44 24 58                               	movss  xmm0,DWORD PTR [esp+0x58]
  79366b:	d9 44 24 54                                     	fld    DWORD PTR [esp+0x54]
  79366f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  793672:	f3 0f 11 84 24 8c 00 00 00                      	movss  DWORD PTR [esp+0x8c],xmm0
  79367b:	e8 10 6a 4d 00                                  	call   0xc6a090
  793680:	d9 5c 24 20                                     	fstp   DWORD PTR [esp+0x20]
  793684:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  79368a:	d9 e8                                           	fld1
  79368c:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  793690:	51                                              	push   ecx
  793691:	6a 0c                                           	push   0xc
  793693:	f3 0f 11 44 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm0
  793699:	f3 0f 10 44 24 38                               	movss  xmm0,DWORD PTR [esp+0x38]
  79369f:	51                                              	push   ecx
  7936a0:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  7936a4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7936a7:	f3 0f 11 44 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm0
  7936ad:	0f 28 44 24 6c                                  	movaps xmm0,XMMWORD PTR [esp+0x6c]
  7936b2:	8d 54 24 7c                                     	lea    edx,[esp+0x7c]
  7936b6:	52                                              	push   edx
  7936b7:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  7936bf:	89 74 24 60                                     	mov    DWORD PTR [esp+0x60],esi
  7936c3:	89 74 24 64                                     	mov    DWORD PTR [esp+0x64],esi
  7936c7:	89 74 24 68                                     	mov    DWORD PTR [esp+0x68],esi
  7936cb:	c7 44 24 6c ec 4d 00 01                         	mov    DWORD PTR [esp+0x6c],0x1004dec
  7936d3:	e8 08 39 ef ff                                  	call   0x686fe0
  7936d8:	84 c0                                           	test   al,al
  7936da:	75 04                                           	jne    0x7936e0
  7936dc:	3b fe                                           	cmp    edi,esi
  7936de:	75 27                                           	jne    0x793707
  7936e0:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  7936e4:	3b c6                                           	cmp    eax,esi
  7936e6:	74 09                                           	je     0x7936f1
  7936e8:	50                                              	push   eax
  7936e9:	e8 f2 0d d5 ff                                  	call   0x4e44e0
  7936ee:	83 c4 04                                        	add    esp,0x4
  7936f1:	83 c3 01                                        	add    ebx,0x1
  7936f4:	3b 5c 24 28                                     	cmp    ebx,DWORD PTR [esp+0x28]
  7936f8:	0f 82 d2 fe ff ff                               	jb     0x7935d0
  7936fe:	32 c0                                           	xor    al,al
  793700:	5f                                              	pop    edi
  793701:	5e                                              	pop    esi
  793702:	5b                                              	pop    ebx
  793703:	8b e5                                           	mov    esp,ebp
  793705:	5d                                              	pop    ebp
  793706:	c3                                              	ret
  793707:	0f 28 44 24 70                                  	movaps xmm0,XMMWORD PTR [esp+0x70]
  79370c:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  79370f:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  793714:	f3 0f 10 4c 24 60                               	movss  xmm1,DWORD PTR [esp+0x60]
  79371a:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  79371f:	f3 0f 11 0f                                     	movss  DWORD PTR [edi],xmm1
  793723:	f3 0f 10 4c 24 64                               	movss  xmm1,DWORD PTR [esp+0x64]
  793729:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  79372e:	f3 0f 10 44 24 68                               	movss  xmm0,DWORD PTR [esp+0x68]
  793734:	f3 0f 11 4f 04                                  	movss  DWORD PTR [edi+0x4],xmm1
  793739:	f3 0f 11 47 08                                  	movss  DWORD PTR [edi+0x8],xmm0
  79373e:	89 18                                           	mov    DWORD PTR [eax],ebx
  793740:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  793744:	3b c6                                           	cmp    eax,esi
  793746:	74 09                                           	je     0x793751
  793748:	50                                              	push   eax
  793749:	e8 92 0d d5 ff                                  	call   0x4e44e0
  79374e:	83 c4 04                                        	add    esp,0x4
  793751:	5f                                              	pop    edi
  793752:	5e                                              	pop    esi
  793753:	b0 01                                           	mov    al,0x1
  793755:	5b                                              	pop    ebx
  793756:	8b e5                                           	mov    esp,ebp
  793758:	5d                                              	pop    ebp
  793759:	c3                                              	ret
  79375a:	cc                                              	int3
  79375b:	cc                                              	int3
  79375c:	cc                                              	int3
  79375d:	cc                                              	int3
  79375e:	cc                                              	int3
  79375f:	cc                                              	int3
