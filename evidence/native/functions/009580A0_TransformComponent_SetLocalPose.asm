# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009580a0, 0x0095814d); analyst name TransformComponent_SetLocalPose.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009580a0 <.text+0x5570a0>:
  9580a0:	55                   	push   ebp
  9580a1:	8b ec                	mov    ebp,esp
  9580a3:	83 e4 f0             	and    esp,0xfffffff0
  9580a6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  9580a9:	0f 28 18             	movaps xmm3,XMMWORD PTR [eax]
  9580ac:	f3 0f 10 15 1c 58 04 01 	movss  xmm2,DWORD PTR ds:0x104581c
  9580b4:	83 ec 2c             	sub    esp,0x2c
  9580b7:	56                   	push   esi
  9580b8:	8b f1                	mov    esi,ecx
  9580ba:	0f 28 46 10          	movaps xmm0,XMMWORD PTR [esi+0x10]
  9580be:	0f 28 cb             	movaps xmm1,xmm3
  9580c1:	0f 5c c8             	subps  xmm1,xmm0
  9580c4:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  9580cc:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9580d0:	0f 28 e0             	movaps xmm4,xmm0
  9580d3:	0f 59 e1             	mulps  xmm4,xmm1
  9580d6:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  9580da:	0f 5f e1             	maxps  xmm4,xmm1
  9580dd:	0f c2 e2 02          	cmpleps xmm4,xmm2
  9580e1:	0f 50 cc             	movmskps ecx,xmm4
  9580e4:	83 f9 0f             	cmp    ecx,0xf
  9580e7:	75 20                	jne    0x958109
  9580e9:	0f 28 66 20          	movaps xmm4,XMMWORD PTR [esi+0x20]
  9580ed:	0f 28 48 10          	movaps xmm1,XMMWORD PTR [eax+0x10]
  9580f1:	0f 5c cc             	subps  xmm1,xmm4
  9580f4:	0f 59 c1             	mulps  xmm0,xmm1
  9580f7:	0f 5f c1             	maxps  xmm0,xmm1
  9580fa:	0f c2 c2 02          	cmpleps xmm0,xmm2
  9580fe:	0f 50 d0             	movmskps edx,xmm0
  958101:	83 e2 07             	and    edx,0x7
  958104:	80 fa 07             	cmp    dl,0x7
  958107:	74 3d                	je     0x958146
  958109:	0f 29 5e 10          	movaps XMMWORD PTR [esi+0x10],xmm3
  95810d:	0f 28 40 10          	movaps xmm0,XMMWORD PTR [eax+0x10]
  958111:	0f 29 46 20          	movaps XMMWORD PTR [esi+0x20],xmm0
  958115:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  958118:	a8 04                	test   al,0x4
  95811a:	75 2a                	jne    0x958146
  95811c:	a8 03                	test   al,0x3
  95811e:	74 07                	je     0x958127
  958120:	8b ce                	mov    ecx,esi
  958122:	e8 39 ed ff ff       	call   0x956e60
  958127:	8d 44 24 10          	lea    eax,[esp+0x10]
  95812b:	50                   	push   eax
  95812c:	8b ce                	mov    ecx,esi
  95812e:	e8 dd f7 ff ff       	call   0x957910
  958133:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  958136:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  95813a:	51                   	push   ecx
  95813b:	52                   	push   edx
  95813c:	6a 0e                	push   0xe
  95813e:	e8 7d d5 fd ff       	call   0x9356c0
  958143:	83 c4 0c             	add    esp,0xc
  958146:	5e                   	pop    esi
  958147:	8b e5                	mov    esp,ebp
  958149:	5d                   	pop    ebp
  95814a:	c2 04 00             	ret    0x4
