# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00ab71a0, 0x00ab7256); analyst name Lot_WorldPositionToLocalVector.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ab71a0 <.text+0x6b61a0>:
  ab71a0:	55                   	push   ebp
  ab71a1:	8b ec                	mov    ebp,esp
  ab71a3:	83 e4 f0             	and    esp,0xfffffff0
  ab71a6:	83 ec 20             	sub    esp,0x20
  ab71a9:	d9 81 a0 01 00 00    	fld    DWORD PTR [ecx+0x1a0]
  ab71af:	0f 28 89 90 01 00 00 	movaps xmm1,XMMWORD PTR [ecx+0x190]
  ab71b6:	d9 c0                	fld    st(0)
  ab71b8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  ab71bb:	d9 fe                	fsin
  ab71bd:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  ab71c0:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  ab71c3:	0f 5c c1             	subps  xmm0,xmm1
  ab71c6:	f3 0f 10 0d f0 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f0
  ab71ce:	0f 28 d8             	movaps xmm3,xmm0
  ab71d1:	0f c6 d8 12          	shufps xmm3,xmm0,0x12
  ab71d5:	0f c6 d8 08          	shufps xmm3,xmm0,0x8
  ab71d9:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  ab71dd:	f3 0f 10 54 24 0c    	movss  xmm2,DWORD PTR [esp+0xc]
  ab71e3:	d9 ff                	fcos
  ab71e5:	f3 0f 5c ca          	subss  xmm1,xmm2
  ab71e9:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  ab71ef:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  ab71f5:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  ab71fb:	0f 57 d2             	xorps  xmm2,xmm2
  ab71fe:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  ab7204:	0f 28 4c 24 10       	movaps xmm1,XMMWORD PTR [esp+0x10]
  ab7209:	0f 59 d9             	mulps  xmm3,xmm1
  ab720c:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  ab7210:	f3 0f 10 4c 24 08    	movss  xmm1,DWORD PTR [esp+0x8]
  ab7216:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  ab721c:	f3 0f 10 4c 24 08    	movss  xmm1,DWORD PTR [esp+0x8]
  ab7222:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  ab7228:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  ab7230:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  ab7236:	f3 0f 10 4c 24 08    	movss  xmm1,DWORD PTR [esp+0x8]
  ab723c:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  ab7242:	0f 28 4c 24 10       	movaps xmm1,XMMWORD PTR [esp+0x10]
  ab7247:	0f 59 c8             	mulps  xmm1,xmm0
  ab724a:	0f 58 d9             	addps  xmm3,xmm1
  ab724d:	0f 29 19             	movaps XMMWORD PTR [ecx],xmm3
  ab7250:	8b e5                	mov    esp,ebp
  ab7252:	5d                   	pop    ebp
  ab7253:	c2 08 00             	ret    0x8
