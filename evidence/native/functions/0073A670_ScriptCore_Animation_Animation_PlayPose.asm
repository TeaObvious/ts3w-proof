# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0073a670, 0x0073a864); analyst name Animation_PlayPose.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0073a670 <.text+0x339670>:
  73a670:	83 ec 14             	sub    esp,0x14
  73a673:	56                   	push   esi
  73a674:	e8 f7 ce 1f 00       	call   0x937570
  73a679:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  73a67d:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  73a681:	51                   	push   ecx
  73a682:	52                   	push   edx
  73a683:	8b c8                	mov    ecx,eax
  73a685:	e8 f6 d8 1f 00       	call   0x937f80
  73a68a:	8b f0                	mov    esi,eax
  73a68c:	85 f6                	test   esi,esi
  73a68e:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  73a692:	0f 84 b2 01 00 00    	je     0x73a84a
  73a698:	55                   	push   ebp
  73a699:	8d 46 04             	lea    eax,[esi+0x4]
  73a69c:	b9 01 00 00 00       	mov    ecx,0x1
  73a6a1:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  73a6a5:	8b 15 84 d4 1d 01    	mov    edx,DWORD PTR ds:0x11dd484
  73a6ab:	52                   	push   edx
  73a6ac:	8b ce                	mov    ecx,esi
  73a6ae:	e8 ad 9b 1f 00       	call   0x934260
  73a6b3:	8b e8                	mov    ebp,eax
  73a6b5:	85 ed                	test   ebp,ebp
  73a6b7:	0f 84 6c 01 00 00    	je     0x73a829
  73a6bd:	53                   	push   ebx
  73a6be:	6a 00                	push   0x0
  73a6c0:	6a 00                	push   0x0
  73a6c2:	6a 00                	push   0x0
  73a6c4:	6a 00                	push   0x0
  73a6c6:	68 e0 fd ff 00       	push   0xfffde0
  73a6cb:	68 00 06 00 00       	push   0x600
  73a6d0:	e8 2b 9e da ff       	call   0x4e4500
  73a6d5:	83 c4 18             	add    esp,0x18
  73a6d8:	85 c0                	test   eax,eax
  73a6da:	0f 84 6f 01 00 00    	je     0x73a84f
  73a6e0:	d9 ee                	fldz
  73a6e2:	51                   	push   ecx
  73a6e3:	8d 4d 08             	lea    ecx,[ebp+0x8]
  73a6e6:	d9 1c 24             	fstp   DWORD PTR [esp]
  73a6e9:	51                   	push   ecx
  73a6ea:	8b c8                	mov    ecx,eax
  73a6ec:	e8 6f e5 e2 ff       	call   0x568c60
  73a6f1:	8b d8                	mov    ebx,eax
  73a6f3:	85 db                	test   ebx,ebx
  73a6f5:	74 04                	je     0x73a6fb
  73a6f7:	83 43 04 01          	add    DWORD PTR [ebx+0x4],0x1
  73a6fb:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  73a6ff:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  73a703:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  73a707:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  73a70b:	57                   	push   edi
  73a70c:	8d 54 24 14          	lea    edx,[esp+0x14]
  73a710:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  73a714:	52                   	push   edx
  73a715:	8b cb                	mov    ecx,ebx
  73a717:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  73a71b:	c7 44 24 20 f3 c4 20 6b 	mov    DWORD PTR [esp+0x20],0x6b20c4f3
  73a723:	e8 48 fa e2 ff       	call   0x56a170
  73a728:	6a 00                	push   0x0
  73a72a:	6a 00                	push   0x0
  73a72c:	6a 00                	push   0x0
  73a72e:	6a 00                	push   0x0
  73a730:	68 c0 fd ff 00       	push   0xfffdc0
  73a735:	6a 38                	push   0x38
  73a737:	e8 c4 9d da ff       	call   0x4e4500
  73a73c:	83 c4 18             	add    esp,0x18
  73a73f:	85 c0                	test   eax,eax
  73a741:	0f 84 0f 01 00 00    	je     0x73a856
  73a747:	d9 ee                	fldz
  73a749:	51                   	push   ecx
  73a74a:	d9 1c 24             	fstp   DWORD PTR [esp]
  73a74d:	8d 4d 08             	lea    ecx,[ebp+0x8]
  73a750:	53                   	push   ebx
  73a751:	51                   	push   ecx
  73a752:	8b c8                	mov    ecx,eax
  73a754:	e8 77 53 e3 ff       	call   0x56fad0
  73a759:	8b f8                	mov    edi,eax
  73a75b:	85 ff                	test   edi,edi
  73a75d:	74 04                	je     0x73a763
  73a75f:	83 47 04 01          	add    DWORD PTR [edi+0x4],0x1
  73a763:	6a 00                	push   0x0
  73a765:	6a 00                	push   0x0
  73a767:	6a 00                	push   0x0
  73a769:	6a 00                	push   0x0
  73a76b:	68 9c fd ff 00       	push   0xfffd9c
  73a770:	6a 30                	push   0x30
  73a772:	e8 89 9d da ff       	call   0x4e4500
  73a777:	83 c4 18             	add    esp,0x18
  73a77a:	85 c0                	test   eax,eax
  73a77c:	0f 84 db 00 00 00    	je     0x73a85d
  73a782:	57                   	push   edi
  73a783:	8d 55 08             	lea    edx,[ebp+0x8]
  73a786:	52                   	push   edx
  73a787:	8b c8                	mov    ecx,eax
  73a789:	e8 52 56 e3 ff       	call   0x56fde0
  73a78e:	8b f0                	mov    esi,eax
  73a790:	85 f6                	test   esi,esi
  73a792:	74 04                	je     0x73a798
  73a794:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  73a798:	d9 05 18 b2 fa 00    	fld    DWORD PTR ds:0xfab218
  73a79e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  73a7a1:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  73a7a5:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
  73a7a8:	6a 01                	push   0x1
  73a7aa:	6a 00                	push   0x0
  73a7ac:	6a 00                	push   0x0
  73a7ae:	6a 01                	push   0x1
  73a7b0:	83 ec 08             	sub    esp,0x8
  73a7b3:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  73a7b7:	8d 4d 08             	lea    ecx,[ebp+0x8]
  73a7ba:	d9 1c 24             	fstp   DWORD PTR [esp]
  73a7bd:	6a 02                	push   0x2
  73a7bf:	56                   	push   esi
  73a7c0:	52                   	push   edx
  73a7c1:	ff d0                	call   eax
  73a7c3:	85 f6                	test   esi,esi
  73a7c5:	74 1c                	je     0x73a7e3
  73a7c7:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  73a7ca:	83 c0 ff             	add    eax,0xffffffff
  73a7cd:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  73a7d0:	75 11                	jne    0x73a7e3
  73a7d2:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  73a7d9:	8b 16                	mov    edx,DWORD PTR [esi]
  73a7db:	8b 02                	mov    eax,DWORD PTR [edx]
  73a7dd:	6a 01                	push   0x1
  73a7df:	8b ce                	mov    ecx,esi
  73a7e1:	ff d0                	call   eax
  73a7e3:	85 ff                	test   edi,edi
  73a7e5:	74 1c                	je     0x73a803
  73a7e7:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  73a7ea:	83 c0 ff             	add    eax,0xffffffff
  73a7ed:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  73a7f0:	75 11                	jne    0x73a803
  73a7f2:	c7 47 04 01 00 00 00 	mov    DWORD PTR [edi+0x4],0x1
  73a7f9:	8b 17                	mov    edx,DWORD PTR [edi]
  73a7fb:	8b 02                	mov    eax,DWORD PTR [edx]
  73a7fd:	6a 01                	push   0x1
  73a7ff:	8b cf                	mov    ecx,edi
  73a801:	ff d0                	call   eax
  73a803:	85 db                	test   ebx,ebx
  73a805:	5f                   	pop    edi
  73a806:	74 1c                	je     0x73a824
  73a808:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  73a80b:	83 c0 ff             	add    eax,0xffffffff
  73a80e:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  73a811:	75 11                	jne    0x73a824
  73a813:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
  73a81a:	8b 13                	mov    edx,DWORD PTR [ebx]
  73a81c:	8b 02                	mov    eax,DWORD PTR [edx]
  73a81e:	6a 01                	push   0x1
  73a820:	8b cb                	mov    ecx,ebx
  73a822:	ff d0                	call   eax
  73a824:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  73a828:	5b                   	pop    ebx
  73a829:	8d 46 04             	lea    eax,[esi+0x4]
  73a82c:	8b c8                	mov    ecx,eax
  73a82e:	83 ca ff             	or     edx,0xffffffff
  73a831:	5d                   	pop    ebp
  73a832:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  73a836:	4a                   	dec    edx
  73a837:	75 11                	jne    0x73a84a
  73a839:	b9 01 00 00 00       	mov    ecx,0x1
  73a83e:	87 08                	xchg   DWORD PTR [eax],ecx
  73a840:	8b 16                	mov    edx,DWORD PTR [esi]
  73a842:	8b 02                	mov    eax,DWORD PTR [edx]
  73a844:	6a 01                	push   0x1
  73a846:	8b ce                	mov    ecx,esi
  73a848:	ff d0                	call   eax
  73a84a:	5e                   	pop    esi
  73a84b:	83 c4 14             	add    esp,0x14
  73a84e:	c3                   	ret
  73a84f:	33 db                	xor    ebx,ebx
  73a851:	e9 a5 fe ff ff       	jmp    0x73a6fb
  73a856:	33 ff                	xor    edi,edi
  73a858:	e9 06 ff ff ff       	jmp    0x73a763
  73a85d:	33 f6                	xor    esi,esi
  73a85f:	e9 34 ff ff ff       	jmp    0x73a798
