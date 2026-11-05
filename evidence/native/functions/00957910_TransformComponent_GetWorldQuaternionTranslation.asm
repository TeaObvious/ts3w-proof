# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00957910, 0x00957a2c); analyst name TransformComponent_GetWorldQuaternionTranslation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00957910 <.text+0x556910>:
  957910:	55                   	push   ebp
  957911:	8b ec                	mov    ebp,esp
  957913:	83 e4 f0             	and    esp,0xfffffff0
  957916:	83 ec 2c             	sub    esp,0x2c
  957919:	56                   	push   esi
  95791a:	8b f1                	mov    esi,ecx
  95791c:	83 7e 30 00          	cmp    DWORD PTR [esi+0x30],0x0
  957920:	75 19                	jne    0x95793b
  957922:	0f 28 46 10          	movaps xmm0,XMMWORD PTR [esi+0x10]
  957926:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  957929:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  95792c:	0f 28 46 20          	movaps xmm0,XMMWORD PTR [esi+0x20]
  957930:	0f 29 40 10          	movaps XMMWORD PTR [eax+0x10],xmm0
  957934:	5e                   	pop    esi
  957935:	8b e5                	mov    esp,ebp
  957937:	5d                   	pop    ebp
  957938:	c2 04 00             	ret    0x4
  95793b:	8d 44 24 10          	lea    eax,[esp+0x10]
  95793f:	50                   	push   eax
  957940:	e8 4b f6 ff ff       	call   0x956f90
  957945:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  957948:	0f 28 4e 20          	movaps xmm1,XMMWORD PTR [esi+0x20]
  95794c:	0f 28 d9             	movaps xmm3,xmm1
  95794f:	0f c6 d9 09          	shufps xmm3,xmm1,0x9
  957953:	0f 28 c1             	movaps xmm0,xmm1
  957956:	0f c6 c1 12          	shufps xmm0,xmm1,0x12
  95795a:	0f 28 ea             	movaps xmm5,xmm2
  95795d:	0f c6 ea 09          	shufps xmm5,xmm2,0x9
  957961:	0f 59 c5             	mulps  xmm0,xmm5
  957964:	0f 28 f2             	movaps xmm6,xmm2
  957967:	0f c6 f2 12          	shufps xmm6,xmm2,0x12
  95796b:	0f 59 de             	mulps  xmm3,xmm6
  95796e:	0f 5c c3             	subps  xmm0,xmm3
  957971:	0f 28 fa             	movaps xmm7,xmm2
  957974:	0f c6 fa ff          	shufps xmm7,xmm2,0xff
  957978:	0f 28 df             	movaps xmm3,xmm7
  95797b:	0f 59 d9             	mulps  xmm3,xmm1
  95797e:	0f 58 c3             	addps  xmm0,xmm3
  957981:	0f 28 e0             	movaps xmm4,xmm0
  957984:	0f c6 e0 09          	shufps xmm4,xmm0,0x9
  957988:	0f 28 d8             	movaps xmm3,xmm0
  95798b:	0f c6 d8 12          	shufps xmm3,xmm0,0x12
  95798f:	f3 0f 10 05 88 fd 03 01 	movss  xmm0,DWORD PTR ds:0x103fd88
  957997:	0f 59 dd             	mulps  xmm3,xmm5
  95799a:	0f 59 e6             	mulps  xmm4,xmm6
  95799d:	0f 5c dc             	subps  xmm3,xmm4
  9579a0:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9579a4:	0f 59 d8             	mulps  xmm3,xmm0
  9579a7:	0f 28 40 10          	movaps xmm0,XMMWORD PTR [eax+0x10]
  9579ab:	0f 58 d9             	addps  xmm3,xmm1
  9579ae:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  9579b1:	0f 58 d8             	addps  xmm3,xmm0
  9579b4:	0f 28 46 10          	movaps xmm0,XMMWORD PTR [esi+0x10]
  9579b8:	0f 28 c8             	movaps xmm1,xmm0
  9579bb:	0f c6 c8 09          	shufps xmm1,xmm0,0x9
  9579bf:	0f 59 ce             	mulps  xmm1,xmm6
  9579c2:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  9579c7:	0f 28 c8             	movaps xmm1,xmm0
  9579ca:	0f c6 c8 12          	shufps xmm1,xmm0,0x12
  9579ce:	0f 59 cd             	mulps  xmm1,xmm5
  9579d1:	0f 28 6c 24 10       	movaps xmm5,XMMWORD PTR [esp+0x10]
  9579d6:	0f 5c cd             	subps  xmm1,xmm5
  9579d9:	0f 28 e8             	movaps xmm5,xmm0
  9579dc:	0f 59 ef             	mulps  xmm5,xmm7
  9579df:	0f 58 cd             	addps  xmm1,xmm5
  9579e2:	0f 28 ea             	movaps xmm5,xmm2
  9579e5:	0f 28 e0             	movaps xmm4,xmm0
  9579e8:	0f c6 e0 ff          	shufps xmm4,xmm0,0xff
  9579ec:	0f 59 c2             	mulps  xmm0,xmm2
  9579ef:	0f 59 ec             	mulps  xmm5,xmm4
  9579f2:	0f 58 cd             	addps  xmm1,xmm5
  9579f5:	0f 28 d0             	movaps xmm2,xmm0
  9579f8:	0f c6 d0 02          	shufps xmm2,xmm0,0x2
  9579fc:	0f 28 e8             	movaps xmm5,xmm0
  9579ff:	0f c6 e8 01          	shufps xmm5,xmm0,0x1
  957a03:	0f 58 d5             	addps  xmm2,xmm5
  957a06:	0f 58 d0             	addps  xmm2,xmm0
  957a09:	0f 28 c1             	movaps xmm0,xmm1
  957a0c:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  957a10:	0f 59 e7             	mulps  xmm4,xmm7
  957a13:	0f 5c e2             	subps  xmm4,xmm2
  957a16:	0f c6 c4 0a          	shufps xmm0,xmm4,0xa
  957a1a:	0f c6 c8 84          	shufps xmm1,xmm0,0x84
  957a1e:	0f 29 08             	movaps XMMWORD PTR [eax],xmm1
  957a21:	0f 29 58 10          	movaps XMMWORD PTR [eax+0x10],xmm3
  957a25:	5e                   	pop    esi
  957a26:	8b e5                	mov    esp,ebp
  957a28:	5d                   	pop    ebp
  957a29:	c2 04 00             	ret    0x4
