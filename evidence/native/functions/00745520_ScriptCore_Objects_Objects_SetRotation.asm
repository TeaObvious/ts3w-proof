# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00745520, 0x007456ec); analyst name Objects_SetRotation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00745520 <.text+0x344520>:
  745520:	55                   	push   ebp
  745521:	8b ec                	mov    ebp,esp
  745523:	83 e4 f0             	and    esp,0xfffffff0
  745526:	83 ec 64             	sub    esp,0x64
  745529:	53                   	push   ebx
  74552a:	56                   	push   esi
  74552b:	57                   	push   edi
  74552c:	e8 3f 20 1f 00       	call   0x937570
  745531:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  745534:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  745537:	51                   	push   ecx
  745538:	52                   	push   edx
  745539:	8b c8                	mov    ecx,eax
  74553b:	e8 40 2a 1f 00       	call   0x937f80
  745540:	8b f0                	mov    esi,eax
  745542:	85 f6                	test   esi,esi
  745544:	0f 84 9b 01 00 00    	je     0x7456e5
  74554a:	a1 84 d4 1d 01       	mov    eax,ds:0x11dd484
  74554f:	50                   	push   eax
  745550:	8b ce                	mov    ecx,esi
  745552:	e8 09 ed 1e 00       	call   0x934260
  745557:	85 c0                	test   eax,eax
  745559:	74 0d                	je     0x745568
  74555b:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  74555e:	8d 48 08             	lea    ecx,[eax+0x8]
  745561:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
  745564:	ff d0                	call   eax
  745566:	eb 19                	jmp    0x745581
  745568:	8b 0d 58 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea158
  74556e:	51                   	push   ecx
  74556f:	8b ce                	mov    ecx,esi
  745571:	e8 ea ec 1e 00       	call   0x934260
  745576:	85 c0                	test   eax,eax
  745578:	74 07                	je     0x745581
  74557a:	8b c8                	mov    ecx,eax
  74557c:	e8 4f 09 21 00       	call   0x955ed0
  745581:	8b 15 08 df 1e 01    	mov    edx,DWORD PTR ds:0x11edf08
  745587:	52                   	push   edx
  745588:	8b ce                	mov    ecx,esi
  74558a:	e8 d1 ec 1e 00       	call   0x934260
  74558f:	85 c0                	test   eax,eax
  745591:	74 04                	je     0x745597
  745593:	83 48 2c 10          	or     DWORD PTR [eax+0x2c],0x10
  745597:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  74559c:	50                   	push   eax
  74559d:	8b ce                	mov    ecx,esi
  74559f:	e8 bc ec 1e 00       	call   0x934260
  7455a4:	85 c0                	test   eax,eax
  7455a6:	0f 84 c3 00 00 00    	je     0x74566f
  7455ac:	0f 57 c0             	xorps  xmm0,xmm0
  7455af:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  7455b7:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  7455bd:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  7455c3:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  7455c9:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  7455cf:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  7455d4:	f3 0f 10 0d 88 fd 03 01 	movss  xmm1,DWORD PTR ds:0x103fd88
  7455dc:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  7455e1:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  7455e6:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  7455ea:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  7455ee:	0f 5e c1             	divps  xmm0,xmm1
  7455f1:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  7455f6:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  7455fa:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  7455ff:	d9 fe                	fsin
  745601:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  745605:	51                   	push   ecx
  745606:	8b c8                	mov    ecx,eax
  745608:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  74560c:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  745610:	d9 ff                	fcos
  745612:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  745618:	0f 28 44 24 24       	movaps xmm0,XMMWORD PTR [esp+0x24]
  74561d:	0f 28 d0             	movaps xmm2,xmm0
  745620:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  745624:	0f 28 d8             	movaps xmm3,xmm0
  745627:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  74562b:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  74562f:	0f 59 d1             	mulps  xmm2,xmm1
  745632:	0f 59 d9             	mulps  xmm3,xmm1
  745635:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  745639:	0f 59 c1             	mulps  xmm0,xmm1
  74563c:	0f 29 44 24 64       	movaps XMMWORD PTR [esp+0x64],xmm0
  745641:	0f 29 54 24 44       	movaps XMMWORD PTR [esp+0x44],xmm2
  745646:	0f 29 5c 24 54       	movaps XMMWORD PTR [esp+0x54],xmm3
  74564b:	0f c6 c3 10          	shufps xmm0,xmm3,0x10
  74564f:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  745653:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  745659:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  74565d:	0f c6 d1 32          	shufps xmm2,xmm1,0x32
  745661:	0f c6 c2 88          	shufps xmm0,xmm2,0x88
  745665:	0f 29 44 24 34       	movaps XMMWORD PTR [esp+0x34],xmm0
  74566a:	e8 a1 2f 21 00       	call   0x958610
  74566f:	8b 15 fc a0 1e 01    	mov    edx,DWORD PTR ds:0x11ea0fc
  745675:	52                   	push   edx
  745676:	8b ce                	mov    ecx,esi
  745678:	e8 e3 eb 1e 00       	call   0x934260
  74567d:	8b f8                	mov    edi,eax
  74567f:	a1 38 a1 1e 01       	mov    eax,ds:0x11ea138
  745684:	50                   	push   eax
  745685:	8b ce                	mov    ecx,esi
  745687:	e8 d4 eb 1e 00       	call   0x934260
  74568c:	85 ff                	test   edi,edi
  74568e:	8b d8                	mov    ebx,eax
  745690:	75 46                	jne    0x7456d8
  745692:	85 db                	test   ebx,ebx
  745694:	74 0b                	je     0x7456a1
  745696:	8b cb                	mov    ecx,ebx
  745698:	e8 53 cb 20 00       	call   0x9521f0
  74569d:	84 c0                	test   al,al
  74569f:	75 37                	jne    0x7456d8
  7456a1:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  7456a7:	51                   	push   ecx
  7456a8:	8b ce                	mov    ecx,esi
  7456aa:	e8 b1 eb 1e 00       	call   0x934260
  7456af:	85 c0                	test   eax,eax
  7456b1:	74 25                	je     0x7456d8
  7456b3:	8b ce                	mov    ecx,esi
  7456b5:	e8 76 9a f4 ff       	call   0x68f130
  7456ba:	85 c0                	test   eax,eax
  7456bc:	74 1a                	je     0x7456d8
  7456be:	8b 10                	mov    edx,DWORD PTR [eax]
  7456c0:	8b c8                	mov    ecx,eax
  7456c2:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  7456c5:	68 0e 6b 56 90       	push   0x90566b0e
  7456ca:	ff d0                	call   eax
  7456cc:	85 c0                	test   eax,eax
  7456ce:	74 08                	je     0x7456d8
  7456d0:	56                   	push   esi
  7456d1:	8b c8                	mov    ecx,eax
  7456d3:	e8 38 7b 38 00       	call   0xacd210
  7456d8:	85 db                	test   ebx,ebx
  7456da:	74 09                	je     0x7456e5
  7456dc:	8b 13                	mov    edx,DWORD PTR [ebx]
  7456de:	8b 42 38             	mov    eax,DWORD PTR [edx+0x38]
  7456e1:	8b cb                	mov    ecx,ebx
  7456e3:	ff d0                	call   eax
  7456e5:	5f                   	pop    edi
  7456e6:	5e                   	pop    esi
  7456e7:	5b                   	pop    ebx
  7456e8:	8b e5                	mov    esp,ebp
  7456ea:	5d                   	pop    ebp
  7456eb:	c3                   	ret
