# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e540 (ScriptCore.CameraController::Camera_GetDistanceFromTargetToObject)
Paired Ghidra pseudocode: 0073E540_ScriptCore_CameraController_Camera_GetDistanceFromTargetToObject.c
Window: [0x0073e540, 0x0073e750) (528 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e540: 55 8b ec 83 e4 f0 83 ec 48 0f 57 c0 56 57 f3 0f
0073e550: 11 44 24 08 e8 77 b6 22 00 85 c0 0f 84 e3 01 00
0073e560: 00 8b c8 e8 88 3a 7e 00 85 c0 0f 84 d4 01 00 00
0073e570: 8b c8 e8 69 58 dd ff 85 c0 0f 84 c5 01 00 00 8b
0073e580: 40 0c 0f 28 40 60 f3 0f 10 1d cc 4c 0f 01 0f 29
0073e590: 44 24 40 0f 28 50 50 0f 57 c9 0f 28 c1 0f 5c c2
0073e5a0: 0f 28 d0 0f c6 d0 55 f3 0f 11 54 24 20 f3 0f 10
0073e5b0: 64 24 20 0f c6 db 00 f3 0f 11 5c 24 30 0f 2f 64
0073e5c0: 24 30 0f 29 44 24 10 76 19 0f 5c ca 0f 28 d1 0f
0073e5d0: 28 c8 0f c6 ca 00 0f c6 c8 e8 0f 28 c1 0f 29 44
0073e5e0: 24 10 f3 0f 10 0d 88 09 00 01 f3 0f 11 4c 24 08
0073e5f0: 0f 28 c8 0f c6 c8 55 0f c2 cb 00 0f 50 c1 83 f8
0073e600: 0f 0f 84 3d 01 00 00 e8 64 8f 1f 00 8b 4d 0c 8b
0073e610: 55 08 51 52 8b c8 e8 65 99 1f 00 8b f0 85 f6 0f
0073e620: 84 1f 01 00 00 8d 7e 04 8b c7 b9 01 00 00 00 f0
0073e630: 0f c1 08 8b 15 58 a1 1e 01 52 8b ce e8 1f 5c 1f
0073e640: 00 85 c0 0f 84 de 00 00 00 8d 4c 24 30 51 8b c8
0073e650: e8 db 93 21 00 0f 28 4c 24 30 0f 28 54 24 40 0f
0073e660: 28 74 24 20 0f 28 da 0f c6 da 55 0f 28 c1 0f c6
0073e670: c1 55 0f 5c c3 0f 28 5c 24 10 0f 28 e3 0f c6 e3
0073e680: 55 0f 5e c4 0f 29 44 24 30 f3 0f 10 64 24 30 0f
0073e690: 28 ea 0f c6 ea 00 0f 28 c3 0f c6 c3 00 0f c6 d2
0073e6a0: aa 0f c6 e4 00 0f 59 c4 0f 58 e8 0f c6 db aa 0f
0073e6b0: 59 dc 0f 58 d3 0f 28 c6 0f c6 c5 05 0f c6 c6 e2
0073e6c0: 0f 28 d8 0f c6 da 0f 0f c6 c3 24 0f 28 d8 0f c6
0073e6d0: d8 00 0f 28 d1 0f c6 d1 00 0f 5c d3 0f 29 54 24
0073e6e0: 20 0f c6 c0 aa 0f 28 d1 0f c6 d1 aa f3 0f 10 4c
0073e6f0: 24 20 0f 5c d0 0f 29 54 24 30 f3 0f 10 44 24 30
0073e700: f3 0f 59 c0 0f 28 d1 f3 0f 59 d1 f3 0f 58 c2 0f
0073e710: c6 c0 00 0f 51 c0 0f 29 44 24 30 f3 0f 10 44 24
0073e720: 30 f3 0f 11 44 24 08 8b d7 83 c8 ff f0 0f c1 02
0073e730: 48 75 11 b9 01 00 00 00 87 0f 8b 16 8b 02 6a 01
0073e740: 8b ce ff d0 d9 44 24 08 5f 5e 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
0073e540 <.text+0x33d540>:
  73e540:	55                                              	push   ebp
  73e541:	8b ec                                           	mov    ebp,esp
  73e543:	83 e4 f0                                        	and    esp,0xfffffff0
  73e546:	83 ec 48                                        	sub    esp,0x48
  73e549:	0f 57 c0                                        	xorps  xmm0,xmm0
  73e54c:	56                                              	push   esi
  73e54d:	57                                              	push   edi
  73e54e:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  73e554:	e8 77 b6 22 00                                  	call   0x969bd0
  73e559:	85 c0                                           	test   eax,eax
  73e55b:	0f 84 e3 01 00 00                               	je     0x73e744
  73e561:	8b c8                                           	mov    ecx,eax
  73e563:	e8 88 3a 7e 00                                  	call   0xf21ff0
  73e568:	85 c0                                           	test   eax,eax
  73e56a:	0f 84 d4 01 00 00                               	je     0x73e744
  73e570:	8b c8                                           	mov    ecx,eax
  73e572:	e8 69 58 dd ff                                  	call   0x513de0
  73e577:	85 c0                                           	test   eax,eax
  73e579:	0f 84 c5 01 00 00                               	je     0x73e744
  73e57f:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  73e582:	0f 28 40 60                                     	movaps xmm0,XMMWORD PTR [eax+0x60]
  73e586:	f3 0f 10 1d cc 4c 0f 01                         	movss  xmm3,DWORD PTR ds:0x10f4ccc
  73e58e:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  73e593:	0f 28 50 50                                     	movaps xmm2,XMMWORD PTR [eax+0x50]
  73e597:	0f 57 c9                                        	xorps  xmm1,xmm1
  73e59a:	0f 28 c1                                        	movaps xmm0,xmm1
  73e59d:	0f 5c c2                                        	subps  xmm0,xmm2
  73e5a0:	0f 28 d0                                        	movaps xmm2,xmm0
  73e5a3:	0f c6 d0 55                                     	shufps xmm2,xmm0,0x55
  73e5a7:	f3 0f 11 54 24 20                               	movss  DWORD PTR [esp+0x20],xmm2
  73e5ad:	f3 0f 10 64 24 20                               	movss  xmm4,DWORD PTR [esp+0x20]
  73e5b3:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  73e5b7:	f3 0f 11 5c 24 30                               	movss  DWORD PTR [esp+0x30],xmm3
  73e5bd:	0f 2f 64 24 30                                  	comiss xmm4,DWORD PTR [esp+0x30]
  73e5c2:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  73e5c7:	76 19                                           	jbe    0x73e5e2
  73e5c9:	0f 5c ca                                        	subps  xmm1,xmm2
  73e5cc:	0f 28 d1                                        	movaps xmm2,xmm1
  73e5cf:	0f 28 c8                                        	movaps xmm1,xmm0
  73e5d2:	0f c6 ca 00                                     	shufps xmm1,xmm2,0x0
  73e5d6:	0f c6 c8 e8                                     	shufps xmm1,xmm0,0xe8
  73e5da:	0f 28 c1                                        	movaps xmm0,xmm1
  73e5dd:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  73e5e2:	f3 0f 10 0d 88 09 00 01                         	movss  xmm1,DWORD PTR ds:0x1000988
  73e5ea:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  73e5f0:	0f 28 c8                                        	movaps xmm1,xmm0
  73e5f3:	0f c6 c8 55                                     	shufps xmm1,xmm0,0x55
  73e5f7:	0f c2 cb 00                                     	cmpeqps xmm1,xmm3
  73e5fb:	0f 50 c1                                        	movmskps eax,xmm1
  73e5fe:	83 f8 0f                                        	cmp    eax,0xf
  73e601:	0f 84 3d 01 00 00                               	je     0x73e744
  73e607:	e8 64 8f 1f 00                                  	call   0x937570
  73e60c:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  73e60f:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  73e612:	51                                              	push   ecx
  73e613:	52                                              	push   edx
  73e614:	8b c8                                           	mov    ecx,eax
  73e616:	e8 65 99 1f 00                                  	call   0x937f80
  73e61b:	8b f0                                           	mov    esi,eax
  73e61d:	85 f6                                           	test   esi,esi
  73e61f:	0f 84 1f 01 00 00                               	je     0x73e744
  73e625:	8d 7e 04                                        	lea    edi,[esi+0x4]
  73e628:	8b c7                                           	mov    eax,edi
  73e62a:	b9 01 00 00 00                                  	mov    ecx,0x1
  73e62f:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73e633:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  73e639:	52                                              	push   edx
  73e63a:	8b ce                                           	mov    ecx,esi
  73e63c:	e8 1f 5c 1f 00                                  	call   0x934260
  73e641:	85 c0                                           	test   eax,eax
  73e643:	0f 84 de 00 00 00                               	je     0x73e727
  73e649:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  73e64d:	51                                              	push   ecx
  73e64e:	8b c8                                           	mov    ecx,eax
  73e650:	e8 db 93 21 00                                  	call   0x957a30
  73e655:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
  73e65a:	0f 28 54 24 40                                  	movaps xmm2,XMMWORD PTR [esp+0x40]
  73e65f:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [esp+0x20]
  73e664:	0f 28 da                                        	movaps xmm3,xmm2
  73e667:	0f c6 da 55                                     	shufps xmm3,xmm2,0x55
  73e66b:	0f 28 c1                                        	movaps xmm0,xmm1
  73e66e:	0f c6 c1 55                                     	shufps xmm0,xmm1,0x55
  73e672:	0f 5c c3                                        	subps  xmm0,xmm3
  73e675:	0f 28 5c 24 10                                  	movaps xmm3,XMMWORD PTR [esp+0x10]
  73e67a:	0f 28 e3                                        	movaps xmm4,xmm3
  73e67d:	0f c6 e3 55                                     	shufps xmm4,xmm3,0x55
  73e681:	0f 5e c4                                        	divps  xmm0,xmm4
  73e684:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  73e689:	f3 0f 10 64 24 30                               	movss  xmm4,DWORD PTR [esp+0x30]
  73e68f:	0f 28 ea                                        	movaps xmm5,xmm2
  73e692:	0f c6 ea 00                                     	shufps xmm5,xmm2,0x0
  73e696:	0f 28 c3                                        	movaps xmm0,xmm3
  73e699:	0f c6 c3 00                                     	shufps xmm0,xmm3,0x0
  73e69d:	0f c6 d2 aa                                     	shufps xmm2,xmm2,0xaa
  73e6a1:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
  73e6a5:	0f 59 c4                                        	mulps  xmm0,xmm4
  73e6a8:	0f 58 e8                                        	addps  xmm5,xmm0
  73e6ab:	0f c6 db aa                                     	shufps xmm3,xmm3,0xaa
  73e6af:	0f 59 dc                                        	mulps  xmm3,xmm4
  73e6b2:	0f 58 d3                                        	addps  xmm2,xmm3
  73e6b5:	0f 28 c6                                        	movaps xmm0,xmm6
  73e6b8:	0f c6 c5 05                                     	shufps xmm0,xmm5,0x5
  73e6bc:	0f c6 c6 e2                                     	shufps xmm0,xmm6,0xe2
  73e6c0:	0f 28 d8                                        	movaps xmm3,xmm0
  73e6c3:	0f c6 da 0f                                     	shufps xmm3,xmm2,0xf
  73e6c7:	0f c6 c3 24                                     	shufps xmm0,xmm3,0x24
  73e6cb:	0f 28 d8                                        	movaps xmm3,xmm0
  73e6ce:	0f c6 d8 00                                     	shufps xmm3,xmm0,0x0
  73e6d2:	0f 28 d1                                        	movaps xmm2,xmm1
  73e6d5:	0f c6 d1 00                                     	shufps xmm2,xmm1,0x0
  73e6d9:	0f 5c d3                                        	subps  xmm2,xmm3
  73e6dc:	0f 29 54 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm2
  73e6e1:	0f c6 c0 aa                                     	shufps xmm0,xmm0,0xaa
  73e6e5:	0f 28 d1                                        	movaps xmm2,xmm1
  73e6e8:	0f c6 d1 aa                                     	shufps xmm2,xmm1,0xaa
  73e6ec:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
  73e6f2:	0f 5c d0                                        	subps  xmm2,xmm0
  73e6f5:	0f 29 54 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm2
  73e6fa:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  73e700:	f3 0f 59 c0                                     	mulss  xmm0,xmm0
  73e704:	0f 28 d1                                        	movaps xmm2,xmm1
  73e707:	f3 0f 59 d1                                     	mulss  xmm2,xmm1
  73e70b:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  73e70f:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  73e713:	0f 51 c0                                        	sqrtps xmm0,xmm0
  73e716:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  73e71b:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
  73e721:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  73e727:	8b d7                                           	mov    edx,edi
  73e729:	83 c8 ff                                        	or     eax,0xffffffff
  73e72c:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  73e730:	48                                              	dec    eax
  73e731:	75 11                                           	jne    0x73e744
  73e733:	b9 01 00 00 00                                  	mov    ecx,0x1
  73e738:	87 0f                                           	xchg   DWORD PTR [edi],ecx
  73e73a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73e73c:	8b 02                                           	mov    eax,DWORD PTR [edx]
  73e73e:	6a 01                                           	push   0x1
  73e740:	8b ce                                           	mov    ecx,esi
  73e742:	ff d0                                           	call   eax
  73e744:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  73e748:	5f                                              	pop    edi
  73e749:	5e                                              	pop    esi
  73e74a:	8b e5                                           	mov    esp,ebp
  73e74c:	5d                                              	pop    ebp
  73e74d:	c3                                              	ret
  73e74e:	cc                                              	int3
  73e74f:	cc                                              	int3
