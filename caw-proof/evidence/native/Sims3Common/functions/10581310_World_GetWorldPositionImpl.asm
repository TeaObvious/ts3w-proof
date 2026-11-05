# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581310 (World_GetWorldPositionImpl)
Paired Ghidra pseudocode: 10581310_World_GetWorldPositionImpl.c
Window: [0x10581310, 0x105813d0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x105813d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581310: 55 8b ec 83 e4 f0 83 ec 2c 8b 0d c4 00 c7 10 85
10581320: c9 0f 57 c0 56 0f 29 44 24 10 74 6c 8b 45 0c 8b
10581330: 55 08 6a 00 50 52 e8 d5 5c cb ff 8b f0 85 f6 74
10581340: 52 f3 0f 10 05 ec 10 b3 10 f3 0f 2a 4d 10 0f be
10581350: 45 18 8d 4c 24 20 f3 0f 58 c8 51 8d 54 24 08 f3
10581360: 0f 11 4c 24 08 f3 0f 2a 4d 14 52 f3 0f 58 c8 56
10581370: f3 0f 11 4c 24 14 89 44 24 18 e8 51 1c b2 ff 83
10581380: c4 0c 8d 44 24 10 50 8d 4c 24 24 51 8b ce e8 cd
10581390: b1 af ff 0f 28 44 24 10 8b 45 1c 0f 29 44 24 20
105813a0: f3 0f 10 4c 24 20 0f 29 44 24 20 f3 0f 11 08 f3
105813b0: 0f 10 4c 24 24 0f 29 44 24 20 f3 0f 10 44 24 28
105813c0: f3 0f 11 48 04 f3 0f 11 40 08 5e 8b e5 5d c3 cc

LINEAR DISASSEMBLY
10581310 <.text+0x580310>:
10581310:	55                                              	push   ebp
10581311:	8b ec                                           	mov    ebp,esp
10581313:	83 e4 f0                                        	and    esp,0xfffffff0
10581316:	83 ec 2c                                        	sub    esp,0x2c
10581319:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1058131f:	85 c9                                           	test   ecx,ecx
10581321:	0f 57 c0                                        	xorps  xmm0,xmm0
10581324:	56                                              	push   esi
10581325:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1058132a:	74 6c                                           	je     0x10581398
1058132c:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1058132f:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10581332:	6a 00                                           	push   0x0
10581334:	50                                              	push   eax
10581335:	52                                              	push   edx
10581336:	e8 d5 5c cb ff                                  	call   0x10237010
1058133b:	8b f0                                           	mov    esi,eax
1058133d:	85 f6                                           	test   esi,esi
1058133f:	74 52                                           	je     0x10581393
10581341:	f3 0f 10 05 ec 10 b3 10                         	movss  xmm0,DWORD PTR ds:0x10b310ec
10581349:	f3 0f 2a 4d 10                                  	cvtsi2ss xmm1,DWORD PTR [ebp+0x10]
1058134e:	0f be 45 18                                     	movsx  eax,BYTE PTR [ebp+0x18]
10581352:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10581356:	f3 0f 58 c8                                     	addss  xmm1,xmm0
1058135a:	51                                              	push   ecx
1058135b:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1058135f:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10581365:	f3 0f 2a 4d 14                                  	cvtsi2ss xmm1,DWORD PTR [ebp+0x14]
1058136a:	52                                              	push   edx
1058136b:	f3 0f 58 c8                                     	addss  xmm1,xmm0
1058136f:	56                                              	push   esi
10581370:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10581376:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1058137a:	e8 51 1c b2 ff                                  	call   0x100a2fd0
1058137f:	83 c4 0c                                        	add    esp,0xc
10581382:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10581386:	50                                              	push   eax
10581387:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1058138b:	51                                              	push   ecx
1058138c:	8b ce                                           	mov    ecx,esi
1058138e:	e8 cd b1 af ff                                  	call   0x1007c560
10581393:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10581398:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
1058139b:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
105813a0:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
105813a6:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
105813ab:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
105813af:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
105813b5:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
105813ba:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
105813c0:	f3 0f 11 48 04                                  	movss  DWORD PTR [eax+0x4],xmm1
105813c5:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
105813ca:	5e                                              	pop    esi
105813cb:	8b e5                                           	mov    esp,ebp
105813cd:	5d                                              	pop    ebp
105813ce:	c3                                              	ret
105813cf:	cc                                              	int3
