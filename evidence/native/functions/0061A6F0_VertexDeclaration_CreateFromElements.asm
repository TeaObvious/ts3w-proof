# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0061a6f0 <.text+0x2196f0>:
  61a6f0:	55                   	push   ebp
  61a6f1:	8b ec                	mov    ebp,esp
  61a6f3:	51                   	push   ecx
  61a6f4:	53                   	push   ebx
  61a6f5:	56                   	push   esi
  61a6f6:	57                   	push   edi
  61a6f7:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  61a6fa:	33 db                	xor    ebx,ebx
  61a6fc:	33 c0                	xor    eax,eax
  61a6fe:	85 ff                	test   edi,edi
  61a700:	8b f1                	mov    esi,ecx
  61a702:	7e 13                	jle    0x61a717
  61a704:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  61a707:	0f b7 0c c1          	movzx  ecx,WORD PTR [ecx+eax*8]
  61a70b:	3b d9                	cmp    ebx,ecx
  61a70d:	0f 42 d9             	cmovb  ebx,ecx
  61a710:	83 c0 01             	add    eax,0x1
  61a713:	3b c7                	cmp    eax,edi
  61a715:	7c ed                	jl     0x61a704
  61a717:	83 c3 01             	add    ebx,0x1
  61a71a:	8d 14 7b             	lea    edx,[ebx+edi*2]
  61a71d:	03 d2                	add    edx,edx
  61a71f:	6a 00                	push   0x0
  61a721:	03 d2                	add    edx,edx
  61a723:	89 7e 1c             	mov    DWORD PTR [esi+0x1c],edi
  61a726:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  61a72c:	52                   	push   edx
  61a72d:	e8 ee c7 ec ff       	call   0x4e6f20
  61a732:	85 c0                	test   eax,eax
  61a734:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  61a737:	0f 84 40 01 00 00    	je     0x61a87d
  61a73d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  61a740:	03 ff                	add    edi,edi
  61a742:	03 ff                	add    edi,edi
  61a744:	03 ff                	add    edi,edi
  61a746:	57                   	push   edi
  61a747:	51                   	push   ecx
  61a748:	50                   	push   eax
  61a749:	e8 38 4b 96 00       	call   0xf7f286
  61a74e:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  61a751:	8d 0c 9d 00 00 00 00 	lea    ecx,[ebx*4+0x0]
  61a758:	51                   	push   ecx
  61a759:	8d 04 3a             	lea    eax,[edx+edi*1]
  61a75c:	6a 00                	push   0x0
  61a75e:	50                   	push   eax
  61a75f:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  61a762:	e8 31 4b 96 00       	call   0xf7f298
  61a767:	83 c4 18             	add    esp,0x18
  61a76a:	8d 47 08             	lea    eax,[edi+0x8]
  61a76d:	e8 3e 4b 96 00       	call   0xf7f2b0
  61a772:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  61a775:	85 c0                	test   eax,eax
  61a777:	8b dc                	mov    ebx,esp
  61a779:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  61a77c:	0f 8e 8c 00 00 00    	jle    0x61a80e
  61a782:	ba fc ff ff ff       	mov    edx,0xfffffffc
  61a787:	2b d3                	sub    edx,ebx
  61a789:	8d 4b 04             	lea    ecx,[ebx+0x4]
  61a78c:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
  61a78f:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  61a792:	eb 03                	jmp    0x61a797
  61a794:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  61a797:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  61a79a:	03 c2                	add    eax,edx
  61a79c:	0f b7 14 08          	movzx  edx,WORD PTR [eax+ecx*1]
  61a7a0:	03 c1                	add    eax,ecx
  61a7a2:	66 89 51 fc          	mov    WORD PTR [ecx-0x4],dx
  61a7a6:	0f b7 50 02          	movzx  edx,WORD PTR [eax+0x2]
  61a7aa:	66 89 51 fe          	mov    WORD PTR [ecx-0x2],dx
  61a7ae:	0f b6 50 04          	movzx  edx,BYTE PTR [eax+0x4]
  61a7b2:	0f b6 14 95 70 a5 fe 	movzx  edx,BYTE PTR [edx*4+0xfea570]
  61a7b9:	00 
  61a7ba:	88 11                	mov    BYTE PTR [ecx],dl
  61a7bc:	0f b6 50 05          	movzx  edx,BYTE PTR [eax+0x5]
  61a7c0:	0f b6 14 95 b4 a5 fe 	movzx  edx,BYTE PTR [edx*4+0xfea5b4]
  61a7c7:	00 
  61a7c8:	88 51 01             	mov    BYTE PTR [ecx+0x1],dl
  61a7cb:	0f b6 50 06          	movzx  edx,BYTE PTR [eax+0x6]
  61a7cf:	0f b6 14 95 b8 a5 fe 	movzx  edx,BYTE PTR [edx*4+0xfea5b8]
  61a7d6:	00 
  61a7d7:	88 51 02             	mov    BYTE PTR [ecx+0x2],dl
  61a7da:	0f b6 50 07          	movzx  edx,BYTE PTR [eax+0x7]
  61a7de:	88 51 03             	mov    BYTE PTR [ecx+0x3],dl
  61a7e1:	0f b6 50 04          	movzx  edx,BYTE PTR [eax+0x4]
  61a7e5:	0f b7 58 02          	movzx  ebx,WORD PTR [eax+0x2]
  61a7e9:	0f b6 92 d4 a5 fe 00 	movzx  edx,BYTE PTR [edx+0xfea5d4]
  61a7f0:	0f b7 00             	movzx  eax,WORD PTR [eax]
  61a7f3:	03 d3                	add    edx,ebx
  61a7f5:	8b 5e 20             	mov    ebx,DWORD PTR [esi+0x20]
  61a7f8:	39 14 83             	cmp    DWORD PTR [ebx+eax*4],edx
  61a7fb:	8d 04 83             	lea    eax,[ebx+eax*4]
  61a7fe:	73 02                	jae    0x61a802
  61a800:	89 10                	mov    DWORD PTR [eax],edx
  61a802:	83 c1 08             	add    ecx,0x8
  61a805:	83 6d 08 01          	sub    DWORD PTR [ebp+0x8],0x1
  61a809:	75 89                	jne    0x61a794
  61a80b:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
  61a80e:	33 c0                	xor    eax,eax
  61a810:	89 04 1f             	mov    DWORD PTR [edi+ebx*1],eax
  61a813:	89 44 1f 04          	mov    DWORD PTR [edi+ebx*1+0x4],eax
  61a817:	66 c7 04 1f ff 00    	mov    WORD PTR [edi+ebx*1],0xff
  61a81d:	c6 44 1f 04 11       	mov    BYTE PTR [edi+ebx*1+0x4],0x11
  61a822:	e8 e9 40 ff ff       	call   0x60e910
  61a827:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  61a82a:	8b 08                	mov    ecx,DWORD PTR [eax]
  61a82c:	8b 91 58 01 00 00    	mov    edx,DWORD PTR [ecx+0x158]
  61a832:	8d 7e 14             	lea    edi,[esi+0x14]
  61a835:	57                   	push   edi
  61a836:	53                   	push   ebx
  61a837:	50                   	push   eax
  61a838:	ff d2                	call   edx
  61a83a:	85 c0                	test   eax,eax
  61a83c:	8d 4e 08             	lea    ecx,[esi+0x8]
  61a83f:	7d 4a                	jge    0x61a88b
  61a841:	e8 ba 9e ff ff       	call   0x614700
  61a846:	33 db                	xor    ebx,ebx
  61a848:	39 1f                	cmp    DWORD PTR [edi],ebx
  61a84a:	74 18                	je     0x61a864
  61a84c:	8b 0d c8 fc 1c 01    	mov    ecx,DWORD PTR ds:0x11cfcc8
  61a852:	56                   	push   esi
  61a853:	e8 c8 4d ff ff       	call   0x60f620
  61a858:	8b 07                	mov    eax,DWORD PTR [edi]
  61a85a:	8b 08                	mov    ecx,DWORD PTR [eax]
  61a85c:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  61a85f:	50                   	push   eax
  61a860:	ff d2                	call   edx
  61a862:	89 1f                	mov    DWORD PTR [edi],ebx
  61a864:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  61a867:	3b c3                	cmp    eax,ebx
  61a869:	74 12                	je     0x61a87d
  61a86b:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  61a871:	50                   	push   eax
  61a872:	e8 f9 b5 ec ff       	call   0x4e5e70
  61a877:	89 5e 18             	mov    DWORD PTR [esi+0x18],ebx
  61a87a:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  61a87d:	32 c0                	xor    al,al
  61a87f:	8d 65 f0             	lea    esp,[ebp-0x10]
  61a882:	5f                   	pop    edi
  61a883:	5e                   	pop    esi
  61a884:	5b                   	pop    ebx
  61a885:	8b e5                	mov    esp,ebp
  61a887:	5d                   	pop    ebp
  61a888:	c2 08 00             	ret    0x8
  61a88b:	e8 50 9e ff ff       	call   0x6146e0
  61a890:	b0 01                	mov    al,0x1
  61a892:	8d 65 f0             	lea    esp,[ebp-0x10]
  61a895:	5f                   	pop    edi
  61a896:	5e                   	pop    esi
  61a897:	5b                   	pop    ebx
  61a898:	8b e5                	mov    esp,ebp
  61a89a:	5d                   	pop    ebp
  61a89b:	c2 08 00             	ret    0x8
