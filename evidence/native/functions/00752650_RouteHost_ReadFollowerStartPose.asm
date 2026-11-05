# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00752650, 0x00752763); analyst name RouteHost_ReadFollowerStartPose.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00752650 <.text+0x351650>:
  752650:	55                   	push   ebp
  752651:	8b ec                	mov    ebp,esp
  752653:	83 e4 f0             	and    esp,0xfffffff0
  752656:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  752659:	83 ec 54             	sub    esp,0x54
  75265c:	53                   	push   ebx
  75265d:	56                   	push   esi
  75265e:	33 db                	xor    ebx,ebx
  752660:	3b c3                	cmp    eax,ebx
  752662:	57                   	push   edi
  752663:	8b f1                	mov    esi,ecx
  752665:	74 05                	je     0x75266c
  752667:	89 18                	mov    DWORD PTR [eax],ebx
  752669:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  75266c:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  752670:	e8 fb 4e 1e 00       	call   0x937570
  752675:	3b c3                	cmp    eax,ebx
  752677:	74 21                	je     0x75269a
  752679:	8b 4e 44             	mov    ecx,DWORD PTR [esi+0x44]
  75267c:	8b 56 40             	mov    edx,DWORD PTR [esi+0x40]
  75267f:	51                   	push   ecx
  752680:	52                   	push   edx
  752681:	8b c8                	mov    ecx,eax
  752683:	e8 f8 58 1e 00       	call   0x937f80
  752688:	50                   	push   eax
  752689:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  75268d:	e8 1e 29 12 00       	call   0x874fb0
  752692:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  752696:	3b fb                	cmp    edi,ebx
  752698:	75 0e                	jne    0x7526a8
  75269a:	b8 05 00 00 00       	mov    eax,0x5
  75269f:	5f                   	pop    edi
  7526a0:	5e                   	pop    esi
  7526a1:	5b                   	pop    ebx
  7526a2:	8b e5                	mov    esp,ebp
  7526a4:	5d                   	pop    ebp
  7526a5:	c2 0c 00             	ret    0xc
  7526a8:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  7526ad:	50                   	push   eax
  7526ae:	8b cf                	mov    ecx,edi
  7526b0:	e8 ab 1b 1e 00       	call   0x934260
  7526b5:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  7526b9:	8b d8                	mov    ebx,eax
  7526bb:	51                   	push   ecx
  7526bc:	8b cb                	mov    ecx,ebx
  7526be:	e8 6d 53 20 00       	call   0x957a30
  7526c3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  7526c6:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  7526c9:	6a 01                	push   0x1
  7526cb:	6a 00                	push   0x0
  7526cd:	81 c6 58 01 00 00    	add    esi,0x158
  7526d3:	68 00 02 00 00       	push   0x200
  7526d8:	8b ce                	mov    ecx,esi
  7526da:	0f 29 02             	movaps XMMWORD PTR [edx],xmm0
  7526dd:	e8 fe 9d 0c 00       	call   0x81c4e0
  7526e2:	84 c0                	test   al,al
  7526e4:	74 13                	je     0x7526f9
  7526e6:	8d 44 24 20          	lea    eax,[esp+0x20]
  7526ea:	50                   	push   eax
  7526eb:	8b cb                	mov    ecx,ebx
  7526ed:	e8 9e 53 20 00       	call   0x957a90
  7526f2:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [esp+0x40]
  7526f7:	eb 36                	jmp    0x75272f
  7526f9:	6a 01                	push   0x1
  7526fb:	6a 00                	push   0x0
  7526fd:	68 00 04 00 00       	push   0x400
  752702:	8b ce                	mov    ecx,esi
  752704:	e8 d7 9d 0c 00       	call   0x81c4e0
  752709:	84 c0                	test   al,al
  75270b:	74 1f                	je     0x75272c
  75270d:	8d 54 24 20          	lea    edx,[esp+0x20]
  752711:	52                   	push   edx
  752712:	8b cb                	mov    ecx,ebx
  752714:	e8 77 53 20 00       	call   0x957a90
  752719:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [esp+0x40]
  75271e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  752721:	0f 57 c9             	xorps  xmm1,xmm1
  752724:	0f 5c c8             	subps  xmm1,xmm0
  752727:	0f 29 08             	movaps XMMWORD PTR [eax],xmm1
  75272a:	eb 09                	jmp    0x752735
  75272c:	0f 57 c0             	xorps  xmm0,xmm0
  75272f:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  752732:	0f 29 01             	movaps XMMWORD PTR [ecx],xmm0
  752735:	8d 47 04             	lea    eax,[edi+0x4]
  752738:	8b d0                	mov    edx,eax
  75273a:	83 c9 ff             	or     ecx,0xffffffff
  75273d:	f0 0f c1 0a          	lock xadd DWORD PTR [edx],ecx
  752741:	49                   	dec    ecx
  752742:	75 11                	jne    0x752755
  752744:	ba 01 00 00 00       	mov    edx,0x1
  752749:	87 10                	xchg   DWORD PTR [eax],edx
  75274b:	8b 07                	mov    eax,DWORD PTR [edi]
  75274d:	8b 10                	mov    edx,DWORD PTR [eax]
  75274f:	6a 01                	push   0x1
  752751:	8b cf                	mov    ecx,edi
  752753:	ff d2                	call   edx
  752755:	5f                   	pop    edi
  752756:	5e                   	pop    esi
  752757:	b8 01 00 00 00       	mov    eax,0x1
  75275c:	5b                   	pop    ebx
  75275d:	8b e5                	mov    esp,ebp
  75275f:	5d                   	pop    ebp
  752760:	c2 0c 00             	ret    0xc
