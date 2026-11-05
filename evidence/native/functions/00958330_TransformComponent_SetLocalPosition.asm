# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00958330, 0x009583a3); analyst name TransformComponent_SetLocalPosition.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00958330 <.text+0x557330>:
  958330:	55                   	push   ebp
  958331:	8b ec                	mov    ebp,esp
  958333:	83 e4 f0             	and    esp,0xfffffff0
  958336:	83 ec 08             	sub    esp,0x8
  958339:	56                   	push   esi
  95833a:	57                   	push   edi
  95833b:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  95833e:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  958341:	8b f1                	mov    esi,ecx
  958343:	0f 28 46 20          	movaps xmm0,XMMWORD PTR [esi+0x20]
  958347:	0f 5c c8             	subps  xmm1,xmm0
  95834a:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  958352:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  958356:	0f 59 c1             	mulps  xmm0,xmm1
  958359:	0f 5f c1             	maxps  xmm0,xmm1
  95835c:	f3 0f 10 0d 1c 58 04 01 	movss  xmm1,DWORD PTR ds:0x104581c
  958364:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  958368:	0f c2 c1 02          	cmpleps xmm0,xmm1
  95836c:	0f 50 c0             	movmskps eax,xmm0
  95836f:	83 e0 07             	and    eax,0x7
  958372:	3c 07                	cmp    al,0x7
  958374:	74 25                	je     0x95839b
  958376:	57                   	push   edi
  958377:	e8 c4 db ff ff       	call   0x955f40
  95837c:	83 c4 04             	add    esp,0x4
  95837f:	84 c0                	test   al,al
  958381:	74 18                	je     0x95839b
  958383:	57                   	push   edi
  958384:	8b ce                	mov    ecx,esi
  958386:	e8 15 de ff ff       	call   0x9561a0
  95838b:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  95838e:	6a 00                	push   0x0
  958390:	8b ce                	mov    ecx,esi
  958392:	0f 29 46 20          	movaps XMMWORD PTR [esi+0x20],xmm0
  958396:	e8 45 f8 ff ff       	call   0x957be0
  95839b:	5f                   	pop    edi
  95839c:	5e                   	pop    esi
  95839d:	8b e5                	mov    esp,ebp
  95839f:	5d                   	pop    ebp
  9583a0:	c2 04 00             	ret    0x4
