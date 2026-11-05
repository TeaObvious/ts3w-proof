# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060d590 <.text+0x20c590>:
  60d590:	55                   	push   ebp
  60d591:	8b ec                	mov    ebp,esp
  60d593:	81 ec 84 00 00 00    	sub    esp,0x84
  60d599:	c7 45 b4 00 00 00 00 	mov    DWORD PTR [ebp-0x4c],0x0
  60d5a0:	c7 45 ac 00 00 00 00 	mov    DWORD PTR [ebp-0x54],0x0
  60d5a7:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  60d5aa:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60d5ad:	8b 10                	mov    edx,DWORD PTR [eax]
  60d5af:	3b 11                	cmp    edx,DWORD PTR [ecx]
  60d5b1:	73 0b                	jae    0x60d5be
  60d5b3:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  60d5b6:	89 85 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],eax
  60d5bc:	eb 09                	jmp    0x60d5c7
  60d5be:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60d5c1:	89 8d 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],ecx
  60d5c7:	8b 95 7c ff ff ff    	mov    edx,DWORD PTR [ebp-0x84]
  60d5cd:	89 55 88             	mov    DWORD PTR [ebp-0x78],edx
  60d5d0:	8b 45 88             	mov    eax,DWORD PTR [ebp-0x78]
  60d5d3:	8b 08                	mov    ecx,DWORD PTR [eax]
  60d5d5:	89 4d b0             	mov    DWORD PTR [ebp-0x50],ecx
  60d5d8:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  60d5db:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
  60d5de:	3b 42 04             	cmp    eax,DWORD PTR [edx+0x4]
  60d5e1:	73 05                	jae    0x60d5e8
  60d5e3:	e9 a2 01 00 00       	jmp    0x60d78a
  60d5e8:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  60d5eb:	8b 11                	mov    edx,DWORD PTR [ecx]
  60d5ed:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
  60d5f0:	c7 45 a8 00 00 00 00 	mov    DWORD PTR [ebp-0x58],0x0
  60d5f7:	eb 09                	jmp    0x60d602
  60d5f9:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  60d5fc:	83 c0 01             	add    eax,0x1
  60d5ff:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
  60d602:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  60d605:	8b 55 a8             	mov    edx,DWORD PTR [ebp-0x58]
  60d608:	3b 11                	cmp    edx,DWORD PTR [ecx]
  60d60a:	0f 83 88 00 00 00    	jae    0x60d698
  60d610:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  60d613:	50                   	push   eax
  60d614:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60d617:	8b 11                	mov    edx,DWORD PTR [ecx]
  60d619:	52                   	push   edx
  60d61a:	e8 c1 a8 00 00       	call   0x617ee0
  60d61f:	83 c4 08             	add    esp,0x8
  60d622:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
  60d625:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  60d628:	50                   	push   eax
  60d629:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  60d62c:	8b 11                	mov    edx,DWORD PTR [ecx]
  60d62e:	52                   	push   edx
  60d62f:	e8 ac a8 00 00       	call   0x617ee0
  60d634:	83 c4 08             	add    esp,0x8
  60d637:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  60d63a:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
  60d63d:	50                   	push   eax
  60d63e:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d641:	e8 7a a9 00 00       	call   0x617fc0
  60d646:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  60d649:	8b 4d a0             	mov    ecx,DWORD PTR [ebp-0x60]
  60d64c:	51                   	push   ecx
  60d64d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d650:	e8 6b a8 00 00       	call   0x617ec0
  60d655:	0f af 45 9c          	imul   eax,DWORD PTR [ebp-0x64]
  60d659:	03 45 b4             	add    eax,DWORD PTR [ebp-0x4c]
  60d65c:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
  60d65f:	8b 55 a8             	mov    edx,DWORD PTR [ebp-0x58]
  60d662:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  60d665:	89 44 95 b8          	mov    DWORD PTR [ebp+edx*4-0x48],eax
  60d669:	83 7d a4 08          	cmp    DWORD PTR [ebp-0x5c],0x8
  60d66d:	72 24                	jb     0x60d693
  60d66f:	83 7d a0 08          	cmp    DWORD PTR [ebp-0x60],0x8
  60d673:	72 1e                	jb     0x60d693
  60d675:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  60d678:	8b 11                	mov    edx,DWORD PTR [ecx]
  60d67a:	83 ea 01             	sub    edx,0x1
  60d67d:	39 55 a8             	cmp    DWORD PTR [ebp-0x58],edx
  60d680:	74 11                	je     0x60d693
  60d682:	8b 45 ac             	mov    eax,DWORD PTR [ebp-0x54]
  60d685:	3b 45 fc             	cmp    eax,DWORD PTR [ebp-0x4]
  60d688:	7d 09                	jge    0x60d693
  60d68a:	8b 4d ac             	mov    ecx,DWORD PTR [ebp-0x54]
  60d68d:	83 c1 01             	add    ecx,0x1
  60d690:	89 4d ac             	mov    DWORD PTR [ebp-0x54],ecx
  60d693:	e9 61 ff ff ff       	jmp    0x60d5f9
  60d698:	83 7d ac 00          	cmp    DWORD PTR [ebp-0x54],0x0
  60d69c:	75 05                	jne    0x60d6a3
  60d69e:	e9 e7 00 00 00       	jmp    0x60d78a
  60d6a3:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  60d6a6:	81 c2 80 00 00 00    	add    edx,0x80
  60d6ac:	89 55 b4             	mov    DWORD PTR [ebp-0x4c],edx
  60d6af:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  60d6b2:	8b 10                	mov    edx,DWORD PTR [eax]
  60d6b4:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  60d6b7:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  60d6ba:	ff d0                	call   eax
  60d6bc:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  60d6bf:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  60d6c2:	83 c1 10             	add    ecx,0x10
  60d6c5:	39 4d f8             	cmp    DWORD PTR [ebp-0x8],ecx
  60d6c8:	75 6e                	jne    0x60d738
  60d6ca:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  60d6cd:	e8 9e 06 ea ff       	call   0x4add70
  60d6d2:	89 45 98             	mov    DWORD PTR [ebp-0x68],eax
  60d6d5:	8b 55 98             	mov    edx,DWORD PTR [ebp-0x68]
  60d6d8:	03 55 b4             	add    edx,DWORD PTR [ebp-0x4c]
  60d6db:	89 55 90             	mov    DWORD PTR [ebp-0x70],edx
  60d6de:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
  60d6e1:	83 78 04 00          	cmp    DWORD PTR [eax+0x4],0x0
  60d6e5:	74 09                	je     0x60d6f0
  60d6e7:	8b 4d 90             	mov    ecx,DWORD PTR [ebp-0x70]
  60d6ea:	83 79 08 00          	cmp    DWORD PTR [ecx+0x8],0x0
  60d6ee:	75 05                	jne    0x60d6f5
  60d6f0:	e9 95 00 00 00       	jmp    0x60d78a
  60d6f5:	8b 55 90             	mov    edx,DWORD PTR [ebp-0x70]
  60d6f8:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60d6fb:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  60d6fe:	33 d2                	xor    edx,edx
  60d700:	f7 31                	div    DWORD PTR [ecx]
  60d702:	50                   	push   eax
  60d703:	e8 a8 b6 fb ff       	call   0x5c8db0
  60d708:	83 c4 04             	add    esp,0x4
  60d70b:	89 45 94             	mov    DWORD PTR [ebp-0x6c],eax
  60d70e:	8b 55 90             	mov    edx,DWORD PTR [ebp-0x70]
  60d711:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  60d714:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  60d717:	33 d2                	xor    edx,edx
  60d719:	f7 31                	div    DWORD PTR [ecx]
  60d71b:	50                   	push   eax
  60d71c:	e8 8f b6 fb ff       	call   0x5c8db0
  60d721:	83 c4 04             	add    esp,0x4
  60d724:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
  60d727:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
  60d72a:	2b 55 8c             	sub    edx,DWORD PTR [ebp-0x74]
  60d72d:	89 55 ac             	mov    DWORD PTR [ebp-0x54],edx
  60d730:	83 7d ac 00          	cmp    DWORD PTR [ebp-0x54],0x0
  60d734:	7f 02                	jg     0x60d738
  60d736:	eb 52                	jmp    0x60d78a
  60d738:	8b 45 ac             	mov    eax,DWORD PTR [ebp-0x54]
  60d73b:	50                   	push   eax
  60d73c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60d73f:	8b 11                	mov    edx,DWORD PTR [ecx]
  60d741:	52                   	push   edx
  60d742:	e8 99 a7 00 00       	call   0x617ee0
  60d747:	83 c4 08             	add    esp,0x8
  60d74a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60d74d:	89 01                	mov    DWORD PTR [ecx],eax
  60d74f:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
  60d752:	52                   	push   edx
  60d753:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  60d756:	8b 08                	mov    ecx,DWORD PTR [eax]
  60d758:	51                   	push   ecx
  60d759:	e8 82 a7 00 00       	call   0x617ee0
  60d75e:	83 c4 08             	add    esp,0x8
  60d761:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  60d764:	89 02                	mov    DWORD PTR [edx],eax
  60d766:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  60d769:	8b 08                	mov    ecx,DWORD PTR [eax]
  60d76b:	2b 4d ac             	sub    ecx,DWORD PTR [ebp-0x54]
  60d76e:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  60d771:	89 0a                	mov    DWORD PTR [edx],ecx
  60d773:	6a 01                	push   0x1
  60d775:	8b 45 ac             	mov    eax,DWORD PTR [ebp-0x54]
  60d778:	8b 4c 85 b4          	mov    ecx,DWORD PTR [ebp+eax*4-0x4c]
  60d77c:	51                   	push   ecx
  60d77d:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  60d780:	8b 02                	mov    eax,DWORD PTR [edx]
  60d782:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  60d785:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  60d788:	ff d2                	call   edx
  60d78a:	8b e5                	mov    esp,ebp
  60d78c:	5d                   	pop    ebp
  60d78d:	c3                   	ret
