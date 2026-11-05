# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00b0e520, 0x00b0e754); analyst name Geometry_TransformPolygonXZByMatrix3.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b0e520 <.text+0x70d520>:
  b0e520:	83 ec 08             	sub    esp,0x8
  b0e523:	53                   	push   ebx
  b0e524:	55                   	push   ebp
  b0e525:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  b0e529:	56                   	push   esi
  b0e52a:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  b0e52e:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b0e531:	8b 06                	mov    eax,DWORD PTR [esi]
  b0e533:	57                   	push   edi
  b0e534:	8b 7d 04             	mov    edi,DWORD PTR [ebp+0x4]
  b0e537:	2b 7d 00             	sub    edi,DWORD PTR [ebp+0x0]
  b0e53a:	8b d1                	mov    edx,ecx
  b0e53c:	2b d0                	sub    edx,eax
  b0e53e:	c1 ff 03             	sar    edi,0x3
  b0e541:	c1 fa 03             	sar    edx,0x3
  b0e544:	3b fa                	cmp    edi,edx
  b0e546:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  b0e54a:	76 1b                	jbe    0xb0e567
  b0e54c:	8d 54 24 10          	lea    edx,[esp+0x10]
  b0e550:	52                   	push   edx
  b0e551:	8b d1                	mov    edx,ecx
  b0e553:	2b d0                	sub    edx,eax
  b0e555:	c1 fa 03             	sar    edx,0x3
  b0e558:	8b c7                	mov    eax,edi
  b0e55a:	2b c2                	sub    eax,edx
  b0e55c:	50                   	push   eax
  b0e55d:	51                   	push   ecx
  b0e55e:	8b ce                	mov    ecx,esi
  b0e560:	e8 0b b6 b1 ff       	call   0x629b70
  b0e565:	eb 0c                	jmp    0xb0e573
  b0e567:	51                   	push   ecx
  b0e568:	8d 0c f8             	lea    ecx,[eax+edi*8]
  b0e56b:	51                   	push   ecx
  b0e56c:	8b ce                	mov    ecx,esi
  b0e56e:	e8 8d b3 b1 ff       	call   0x629900
  b0e573:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  b0e577:	33 db                	xor    ebx,ebx
  b0e579:	83 ff 04             	cmp    edi,0x4
  b0e57c:	0f 8c 66 01 00 00    	jl     0xb0e6e8
  b0e582:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  b0e585:	8b 3e                	mov    edi,DWORD PTR [esi]
  b0e587:	8d 14 dd 00 00 00 00 	lea    edx,[ebx*8+0x0]
  b0e58e:	f3 0f 10 04 11       	movss  xmm0,DWORD PTR [ecx+edx*1]
  b0e593:	f3 0f 59 00          	mulss  xmm0,DWORD PTR [eax]
  b0e597:	f3 0f 10 4c 11 04    	movss  xmm1,DWORD PTR [ecx+edx*1+0x4]
  b0e59d:	f3 0f 59 48 0c       	mulss  xmm1,DWORD PTR [eax+0xc]
  b0e5a2:	f3 0f 58 c1          	addss  xmm0,xmm1
  b0e5a6:	f3 0f 58 40 18       	addss  xmm0,DWORD PTR [eax+0x18]
  b0e5ab:	f3 0f 11 04 17       	movss  DWORD PTR [edi+edx*1],xmm0
  b0e5b0:	f3 0f 10 44 11 04    	movss  xmm0,DWORD PTR [ecx+edx*1+0x4]
  b0e5b6:	f3 0f 59 40 10       	mulss  xmm0,DWORD PTR [eax+0x10]
  b0e5bb:	f3 0f 10 0c 11       	movss  xmm1,DWORD PTR [ecx+edx*1]
  b0e5c0:	f3 0f 59 48 04       	mulss  xmm1,DWORD PTR [eax+0x4]
  b0e5c5:	f3 0f 58 c1          	addss  xmm0,xmm1
  b0e5c9:	f3 0f 58 40 1c       	addss  xmm0,DWORD PTR [eax+0x1c]
  b0e5ce:	f3 0f 11 44 17 04    	movss  DWORD PTR [edi+edx*1+0x4],xmm0
  b0e5d4:	03 ca                	add    ecx,edx
  b0e5d6:	8b 0e                	mov    ecx,DWORD PTR [esi]
  b0e5d8:	03 fa                	add    edi,edx
  b0e5da:	8d 7c 0a 08          	lea    edi,[edx+ecx*1+0x8]
  b0e5de:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  b0e5e1:	f3 0f 10 44 11 08    	movss  xmm0,DWORD PTR [ecx+edx*1+0x8]
  b0e5e7:	f3 0f 59 00          	mulss  xmm0,DWORD PTR [eax]
  b0e5eb:	f3 0f 10 4c 11 0c    	movss  xmm1,DWORD PTR [ecx+edx*1+0xc]
  b0e5f1:	f3 0f 59 48 0c       	mulss  xmm1,DWORD PTR [eax+0xc]
  b0e5f6:	f3 0f 58 c1          	addss  xmm0,xmm1
  b0e5fa:	f3 0f 58 40 18       	addss  xmm0,DWORD PTR [eax+0x18]
  b0e5ff:	f3 0f 11 07          	movss  DWORD PTR [edi],xmm0
  b0e603:	f3 0f 10 44 11 0c    	movss  xmm0,DWORD PTR [ecx+edx*1+0xc]
  b0e609:	f3 0f 59 40 10       	mulss  xmm0,DWORD PTR [eax+0x10]
  b0e60e:	f3 0f 10 4c 11 08    	movss  xmm1,DWORD PTR [ecx+edx*1+0x8]
  b0e614:	f3 0f 59 48 04       	mulss  xmm1,DWORD PTR [eax+0x4]
  b0e619:	f3 0f 58 c1          	addss  xmm0,xmm1
  b0e61d:	f3 0f 58 40 1c       	addss  xmm0,DWORD PTR [eax+0x1c]
  b0e622:	f3 0f 11 47 04       	movss  DWORD PTR [edi+0x4],xmm0
  b0e627:	8d 4c 11 08          	lea    ecx,[ecx+edx*1+0x8]
  b0e62b:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  b0e62e:	83 c2 18             	add    edx,0x18
  b0e631:	8d 7a f8             	lea    edi,[edx-0x8]
  b0e634:	f3 0f 10 04 39       	movss  xmm0,DWORD PTR [ecx+edi*1]
  b0e639:	f3 0f 59 00          	mulss  xmm0,DWORD PTR [eax]
  b0e63d:	f3 0f 10 4c 39 04    	movss  xmm1,DWORD PTR [ecx+edi*1+0x4]
  b0e643:	f3 0f 59 48 0c       	mulss  xmm1,DWORD PTR [eax+0xc]
  b0e648:	f3 0f 58 c1          	addss  xmm0,xmm1
  b0e64c:	f3 0f 58 40 18       	addss  xmm0,DWORD PTR [eax+0x18]
  b0e651:	03 cf                	add    ecx,edi
  b0e653:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  b0e657:	8b 16                	mov    edx,DWORD PTR [esi]
  b0e659:	f3 0f 11 04 3a       	movss  DWORD PTR [edx+edi*1],xmm0
  b0e65e:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [ecx+0x4]
  b0e663:	f3 0f 59 40 10       	mulss  xmm0,DWORD PTR [eax+0x10]
  b0e668:	f3 0f 10 09          	movss  xmm1,DWORD PTR [ecx]
  b0e66c:	f3 0f 59 48 04       	mulss  xmm1,DWORD PTR [eax+0x4]
  b0e671:	f3 0f 58 c1          	addss  xmm0,xmm1
  b0e675:	f3 0f 58 40 1c       	addss  xmm0,DWORD PTR [eax+0x1c]
  b0e67a:	f3 0f 11 44 3a 04    	movss  DWORD PTR [edx+edi*1+0x4],xmm0
  b0e680:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  b0e683:	03 d7                	add    edx,edi
  b0e685:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
  b0e689:	f3 0f 10 04 39       	movss  xmm0,DWORD PTR [ecx+edi*1]
  b0e68e:	f3 0f 59 00          	mulss  xmm0,DWORD PTR [eax]
  b0e692:	f3 0f 10 4c 39 04    	movss  xmm1,DWORD PTR [ecx+edi*1+0x4]
  b0e698:	f3 0f 59 48 0c       	mulss  xmm1,DWORD PTR [eax+0xc]
  b0e69d:	8b 16                	mov    edx,DWORD PTR [esi]
  b0e69f:	03 cf                	add    ecx,edi
  b0e6a1:	f3 0f 58 c1          	addss  xmm0,xmm1
  b0e6a5:	f3 0f 58 40 18       	addss  xmm0,DWORD PTR [eax+0x18]
  b0e6aa:	f3 0f 11 04 3a       	movss  DWORD PTR [edx+edi*1],xmm0
  b0e6af:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [ecx+0x4]
  b0e6b4:	f3 0f 10 09          	movss  xmm1,DWORD PTR [ecx]
  b0e6b8:	f3 0f 59 40 10       	mulss  xmm0,DWORD PTR [eax+0x10]
  b0e6bd:	f3 0f 59 48 04       	mulss  xmm1,DWORD PTR [eax+0x4]
  b0e6c2:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  b0e6c6:	03 d7                	add    edx,edi
  b0e6c8:	f3 0f 58 c1          	addss  xmm0,xmm1
  b0e6cc:	f3 0f 58 40 1c       	addss  xmm0,DWORD PTR [eax+0x1c]
  b0e6d1:	83 c3 04             	add    ebx,0x4
  b0e6d4:	83 c1 fd             	add    ecx,0xfffffffd
  b0e6d7:	f3 0f 11 42 04       	movss  DWORD PTR [edx+0x4],xmm0
  b0e6dc:	3b d9                	cmp    ebx,ecx
  b0e6de:	0f 82 9e fe ff ff    	jb     0xb0e582
  b0e6e4:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  b0e6e8:	3b df                	cmp    ebx,edi
  b0e6ea:	73 60                	jae    0xb0e74c
  b0e6ec:	8d 64 24 00          	lea    esp,[esp+0x0]
  b0e6f0:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  b0e6f3:	8b 16                	mov    edx,DWORD PTR [esi]
  b0e6f5:	8d 3c dd 00 00 00 00 	lea    edi,[ebx*8+0x0]
  b0e6fc:	f3 0f 10 04 39       	movss  xmm0,DWORD PTR [ecx+edi*1]
  b0e701:	f3 0f 59 00          	mulss  xmm0,DWORD PTR [eax]
  b0e705:	f3 0f 10 4c 39 04    	movss  xmm1,DWORD PTR [ecx+edi*1+0x4]
  b0e70b:	f3 0f 59 48 0c       	mulss  xmm1,DWORD PTR [eax+0xc]
  b0e710:	03 cf                	add    ecx,edi
  b0e712:	f3 0f 58 c1          	addss  xmm0,xmm1
  b0e716:	f3 0f 58 40 18       	addss  xmm0,DWORD PTR [eax+0x18]
  b0e71b:	f3 0f 11 04 3a       	movss  DWORD PTR [edx+edi*1],xmm0
  b0e720:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [ecx+0x4]
  b0e725:	f3 0f 59 40 10       	mulss  xmm0,DWORD PTR [eax+0x10]
  b0e72a:	f3 0f 10 09          	movss  xmm1,DWORD PTR [ecx]
  b0e72e:	f3 0f 59 48 04       	mulss  xmm1,DWORD PTR [eax+0x4]
  b0e733:	03 d7                	add    edx,edi
  b0e735:	83 c3 01             	add    ebx,0x1
  b0e738:	3b 5c 24 1c          	cmp    ebx,DWORD PTR [esp+0x1c]
  b0e73c:	f3 0f 58 c1          	addss  xmm0,xmm1
  b0e740:	f3 0f 58 40 1c       	addss  xmm0,DWORD PTR [eax+0x1c]
  b0e745:	f3 0f 11 42 04       	movss  DWORD PTR [edx+0x4],xmm0
  b0e74a:	72 a4                	jb     0xb0e6f0
  b0e74c:	5f                   	pop    edi
  b0e74d:	5e                   	pop    esi
  b0e74e:	5d                   	pop    ebp
  b0e74f:	5b                   	pop    ebx
  b0e750:	83 c4 08             	add    esp,0x8
  b0e753:	c3                   	ret
