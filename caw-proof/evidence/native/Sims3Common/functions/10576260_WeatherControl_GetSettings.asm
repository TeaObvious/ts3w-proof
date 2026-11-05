# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576260 (WeatherControl_GetSettings)
Paired Ghidra pseudocode: 10576260_WeatherControl_GetSettings.c
Window: [0x10576260, 0x105764d0) (624 bytes; stop exclusive)
Next defined Ghidra entry: 0x105764d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576260: a1 c4 00 c7 10 81 ec c0 00 00 00 85 c0 74 05 8b
10576270: 48 74 eb 02 33 c9 33 c0 85 c9 89 44 24 04 0f 84
10576280: 40 02 00 00 f3 0f 10 05 d4 b0 ac 10 f3 0f 10 0d
10576290: 84 e1 aa 10 89 44 24 08 89 44 24 14 88 44 24 2c
105762a0: 56 8d 44 24 0c f3 0f 11 44 24 10 0f 57 c0 50 f3
105762b0: 0f 11 44 24 18 f3 0f 11 44 24 20 f3 0f 11 44 24
105762c0: 24 f3 0f 11 44 24 28 f3 0f 11 44 24 2c f3 0f 11
105762d0: 44 24 30 f3 0f 11 44 24 38 c6 44 24 3c 01 f3 0f
105762e0: 11 44 24 40 f3 0f 11 4c 24 44 f3 0f 11 44 24 54
105762f0: f3 0f 11 44 24 58 f3 0f 11 44 24 5c f3 0f 11 44
10576300: 24 60 f3 0f 11 44 24 64 f3 0f 11 44 24 68 e8 5d
10576310: c9 dc ff db 44 24 0c 8b 4c 24 0c 85 c9 7d 06 d8
10576320: 05 90 e1 aa 10 8b 54 24 18 d9 5c 24 68 85 d2 db
10576330: 44 24 18 f3 0f 10 44 24 10 f3 0f 11 44 24 6c 7d
10576340: 06 d8 05 90 e1 aa 10 f3 0f 10 44 24 1c d9 5c 24
10576350: 70 8b 44 24 44 db 44 24 44 85 c0 f3 0f 11 44 24
10576360: 74 f3 0f 10 44 24 20 f3 0f 11 44 24 78 7d 06 d8
10576370: 05 90 e1 aa 10 8b 4c 24 48 d9 5c 24 7c 85 c9 db
10576380: 44 24 48 7d 06 d8 05 90 e1 aa 10 0f b7 54 24 4c
10576390: d9 9c 24 80 00 00 00 0f b6 44 24 38 0f b6 4c 24
105763a0: 30 f3 0f 2a c2 f3 0f 11 84 24 84 00 00 00 f3 0f
105763b0: 10 44 24 14 f3 0f 11 84 24 88 00 00 00 f3 0f 10
105763c0: 44 24 24 f3 0f 11 84 24 8c 00 00 00 f3 0f 10 44
105763d0: 24 28 f3 0f 11 84 24 90 00 00 00 f3 0f 10 44 24
105763e0: 2c f3 0f 11 84 24 94 00 00 00 f3 0f 10 44 24 34
105763f0: f3 0f 11 84 24 98 00 00 00 f3 0f 2a c0 f3 0f 11
10576400: 84 24 9c 00 00 00 f3 0f 10 44 24 3c f3 0f 11 84
10576410: 24 a0 00 00 00 f3 0f 10 44 24 50 f3 0f 11 84 24
10576420: a4 00 00 00 f3 0f 10 44 24 54 f3 0f 11 84 24 a8
10576430: 00 00 00 f3 0f 10 44 24 40 f3 0f 11 84 24 ac 00
10576440: 00 00 f3 0f 10 44 24 58 f3 0f 11 84 24 b0 00 00
10576450: 00 f3 0f 2a c1 f3 0f 11 84 24 b4 00 00 00 f3 0f
10576460: 10 44 24 5c f3 0f 11 84 24 b8 00 00 00 f3 0f 10
10576470: 44 24 60 f3 0f 11 84 24 bc 00 00 00 f3 0f 10 44
10576480: 24 64 f3 0f 11 84 24 c0 00 00 00 e8 90 4c fe ff
10576490: 8b f0 8b 16 8b 92 8c 00 00 00 6a 17 8d 44 24 0c
105764a0: 50 8b ce ff d2 8b 06 8b 80 a8 00 00 00 6a 17 6a
105764b0: 00 8d 4c 24 70 51 8d 54 24 14 52 8b ce ff d0 8b
105764c0: 44 24 08 5e 81 c4 c0 00 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10576260 <.text+0x575260>:
10576260:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10576265:	81 ec c0 00 00 00                               	sub    esp,0xc0
1057626b:	85 c0                                           	test   eax,eax
1057626d:	74 05                                           	je     0x10576274
1057626f:	8b 48 74                                        	mov    ecx,DWORD PTR [eax+0x74]
10576272:	eb 02                                           	jmp    0x10576276
10576274:	33 c9                                           	xor    ecx,ecx
10576276:	33 c0                                           	xor    eax,eax
10576278:	85 c9                                           	test   ecx,ecx
1057627a:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1057627e:	0f 84 40 02 00 00                               	je     0x105764c4
10576284:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1057628c:	f3 0f 10 0d 84 e1 aa 10                         	movss  xmm1,DWORD PTR ds:0x10aae184
10576294:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10576298:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1057629c:	88 44 24 2c                                     	mov    BYTE PTR [esp+0x2c],al
105762a0:	56                                              	push   esi
105762a1:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
105762a5:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
105762ab:	0f 57 c0                                        	xorps  xmm0,xmm0
105762ae:	50                                              	push   eax
105762af:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
105762b5:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
105762bb:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
105762c1:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
105762c7:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
105762cd:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
105762d3:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
105762d9:	c6 44 24 3c 01                                  	mov    BYTE PTR [esp+0x3c],0x1
105762de:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
105762e4:	f3 0f 11 4c 24 44                               	movss  DWORD PTR [esp+0x44],xmm1
105762ea:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
105762f0:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
105762f6:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
105762fc:	f3 0f 11 44 24 60                               	movss  DWORD PTR [esp+0x60],xmm0
10576302:	f3 0f 11 44 24 64                               	movss  DWORD PTR [esp+0x64],xmm0
10576308:	f3 0f 11 44 24 68                               	movss  DWORD PTR [esp+0x68],xmm0
1057630e:	e8 5d c9 dc ff                                  	call   0x10342c70
10576313:	db 44 24 0c                                     	fild   DWORD PTR [esp+0xc]
10576317:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057631b:	85 c9                                           	test   ecx,ecx
1057631d:	7d 06                                           	jge    0x10576325
1057631f:	d8 05 90 e1 aa 10                               	fadd   DWORD PTR ds:0x10aae190
10576325:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10576329:	d9 5c 24 68                                     	fstp   DWORD PTR [esp+0x68]
1057632d:	85 d2                                           	test   edx,edx
1057632f:	db 44 24 18                                     	fild   DWORD PTR [esp+0x18]
10576333:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
10576339:	f3 0f 11 44 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm0
1057633f:	7d 06                                           	jge    0x10576347
10576341:	d8 05 90 e1 aa 10                               	fadd   DWORD PTR ds:0x10aae190
10576347:	f3 0f 10 44 24 1c                               	movss  xmm0,DWORD PTR [esp+0x1c]
1057634d:	d9 5c 24 70                                     	fstp   DWORD PTR [esp+0x70]
10576351:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
10576355:	db 44 24 44                                     	fild   DWORD PTR [esp+0x44]
10576359:	85 c0                                           	test   eax,eax
1057635b:	f3 0f 11 44 24 74                               	movss  DWORD PTR [esp+0x74],xmm0
10576361:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
10576367:	f3 0f 11 44 24 78                               	movss  DWORD PTR [esp+0x78],xmm0
1057636d:	7d 06                                           	jge    0x10576375
1057636f:	d8 05 90 e1 aa 10                               	fadd   DWORD PTR ds:0x10aae190
10576375:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
10576379:	d9 5c 24 7c                                     	fstp   DWORD PTR [esp+0x7c]
1057637d:	85 c9                                           	test   ecx,ecx
1057637f:	db 44 24 48                                     	fild   DWORD PTR [esp+0x48]
10576383:	7d 06                                           	jge    0x1057638b
10576385:	d8 05 90 e1 aa 10                               	fadd   DWORD PTR ds:0x10aae190
1057638b:	0f b7 54 24 4c                                  	movzx  edx,WORD PTR [esp+0x4c]
10576390:	d9 9c 24 80 00 00 00                            	fstp   DWORD PTR [esp+0x80]
10576397:	0f b6 44 24 38                                  	movzx  eax,BYTE PTR [esp+0x38]
1057639c:	0f b6 4c 24 30                                  	movzx  ecx,BYTE PTR [esp+0x30]
105763a1:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
105763a5:	f3 0f 11 84 24 84 00 00 00                      	movss  DWORD PTR [esp+0x84],xmm0
105763ae:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
105763b4:	f3 0f 11 84 24 88 00 00 00                      	movss  DWORD PTR [esp+0x88],xmm0
105763bd:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
105763c3:	f3 0f 11 84 24 8c 00 00 00                      	movss  DWORD PTR [esp+0x8c],xmm0
105763cc:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
105763d2:	f3 0f 11 84 24 90 00 00 00                      	movss  DWORD PTR [esp+0x90],xmm0
105763db:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
105763e1:	f3 0f 11 84 24 94 00 00 00                      	movss  DWORD PTR [esp+0x94],xmm0
105763ea:	f3 0f 10 44 24 34                               	movss  xmm0,DWORD PTR [esp+0x34]
105763f0:	f3 0f 11 84 24 98 00 00 00                      	movss  DWORD PTR [esp+0x98],xmm0
105763f9:	f3 0f 2a c0                                     	cvtsi2ss xmm0,eax
105763fd:	f3 0f 11 84 24 9c 00 00 00                      	movss  DWORD PTR [esp+0x9c],xmm0
10576406:	f3 0f 10 44 24 3c                               	movss  xmm0,DWORD PTR [esp+0x3c]
1057640c:	f3 0f 11 84 24 a0 00 00 00                      	movss  DWORD PTR [esp+0xa0],xmm0
10576415:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
1057641b:	f3 0f 11 84 24 a4 00 00 00                      	movss  DWORD PTR [esp+0xa4],xmm0
10576424:	f3 0f 10 44 24 54                               	movss  xmm0,DWORD PTR [esp+0x54]
1057642a:	f3 0f 11 84 24 a8 00 00 00                      	movss  DWORD PTR [esp+0xa8],xmm0
10576433:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
10576439:	f3 0f 11 84 24 ac 00 00 00                      	movss  DWORD PTR [esp+0xac],xmm0
10576442:	f3 0f 10 44 24 58                               	movss  xmm0,DWORD PTR [esp+0x58]
10576448:	f3 0f 11 84 24 b0 00 00 00                      	movss  DWORD PTR [esp+0xb0],xmm0
10576451:	f3 0f 2a c1                                     	cvtsi2ss xmm0,ecx
10576455:	f3 0f 11 84 24 b4 00 00 00                      	movss  DWORD PTR [esp+0xb4],xmm0
1057645e:	f3 0f 10 44 24 5c                               	movss  xmm0,DWORD PTR [esp+0x5c]
10576464:	f3 0f 11 84 24 b8 00 00 00                      	movss  DWORD PTR [esp+0xb8],xmm0
1057646d:	f3 0f 10 44 24 60                               	movss  xmm0,DWORD PTR [esp+0x60]
10576473:	f3 0f 11 84 24 bc 00 00 00                      	movss  DWORD PTR [esp+0xbc],xmm0
1057647c:	f3 0f 10 44 24 64                               	movss  xmm0,DWORD PTR [esp+0x64]
10576482:	f3 0f 11 84 24 c0 00 00 00                      	movss  DWORD PTR [esp+0xc0],xmm0
1057648b:	e8 90 4c fe ff                                  	call   0x1055b120
10576490:	8b f0                                           	mov    esi,eax
10576492:	8b 16                                           	mov    edx,DWORD PTR [esi]
10576494:	8b 92 8c 00 00 00                               	mov    edx,DWORD PTR [edx+0x8c]
1057649a:	6a 17                                           	push   0x17
1057649c:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
105764a0:	50                                              	push   eax
105764a1:	8b ce                                           	mov    ecx,esi
105764a3:	ff d2                                           	call   edx
105764a5:	8b 06                                           	mov    eax,DWORD PTR [esi]
105764a7:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
105764ad:	6a 17                                           	push   0x17
105764af:	6a 00                                           	push   0x0
105764b1:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
105764b5:	51                                              	push   ecx
105764b6:	8d 54 24 14                                     	lea    edx,[esp+0x14]
105764ba:	52                                              	push   edx
105764bb:	8b ce                                           	mov    ecx,esi
105764bd:	ff d0                                           	call   eax
105764bf:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105764c3:	5e                                              	pop    esi
105764c4:	81 c4 c0 00 00 00                               	add    esp,0xc0
105764ca:	c3                                              	ret
105764cb:	cc                                              	int3
105764cc:	cc                                              	int3
105764cd:	cc                                              	int3
105764ce:	cc                                              	int3
105764cf:	cc                                              	int3
