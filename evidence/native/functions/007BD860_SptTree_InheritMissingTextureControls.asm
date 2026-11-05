# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007bd860 <.text+0x3bc860>:
  7bd860:	8b c1                	mov    eax,ecx
  7bd862:	8b 48 5c             	mov    ecx,DWORD PTR [eax+0x5c]
  7bd865:	2b 48 58             	sub    ecx,DWORD PTR [eax+0x58]
  7bd868:	33 d2                	xor    edx,edx
  7bd86a:	c1 f9 02             	sar    ecx,0x2
  7bd86d:	0f 84 ef 00 00 00    	je     0x7bd962
  7bd873:	56                   	push   esi
  7bd874:	57                   	push   edi
  7bd875:	eb 09                	jmp    0x7bd880
  7bd877:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  7bd87e:	8b ff                	mov    edi,edi
  7bd880:	8b 48 58             	mov    ecx,DWORD PTR [eax+0x58]
  7bd883:	8b 0c 91             	mov    ecx,DWORD PTR [ecx+edx*4]
  7bd886:	80 b9 a5 36 01 00 00 	cmp    BYTE PTR [ecx+0x136a5],0x0
  7bd88d:	74 13                	je     0x7bd8a2
  7bd88f:	8d b1 50 36 01 00    	lea    esi,[ecx+0x13650]
  7bd895:	8d b9 7c 36 01 00    	lea    edi,[ecx+0x1367c]
  7bd89b:	b9 0b 00 00 00       	mov    ecx,0xb
  7bd8a0:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7bd8a2:	8b 48 58             	mov    ecx,DWORD PTR [eax+0x58]
  7bd8a5:	8b 0c 91             	mov    ecx,DWORD PTR [ecx+edx*4]
  7bd8a8:	80 b9 d1 36 01 00 00 	cmp    BYTE PTR [ecx+0x136d1],0x0
  7bd8af:	74 13                	je     0x7bd8c4
  7bd8b1:	8d b1 50 36 01 00    	lea    esi,[ecx+0x13650]
  7bd8b7:	8d b9 a8 36 01 00    	lea    edi,[ecx+0x136a8]
  7bd8bd:	b9 0b 00 00 00       	mov    ecx,0xb
  7bd8c2:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7bd8c4:	8b 48 58             	mov    ecx,DWORD PTR [eax+0x58]
  7bd8c7:	8b 0c 91             	mov    ecx,DWORD PTR [ecx+edx*4]
  7bd8ca:	80 b9 fd 36 01 00 00 	cmp    BYTE PTR [ecx+0x136fd],0x0
  7bd8d1:	74 13                	je     0x7bd8e6
  7bd8d3:	8d b1 50 36 01 00    	lea    esi,[ecx+0x13650]
  7bd8d9:	8d b9 d4 36 01 00    	lea    edi,[ecx+0x136d4]
  7bd8df:	b9 0b 00 00 00       	mov    ecx,0xb
  7bd8e4:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7bd8e6:	8b 48 58             	mov    ecx,DWORD PTR [eax+0x58]
  7bd8e9:	8b 0c 91             	mov    ecx,DWORD PTR [ecx+edx*4]
  7bd8ec:	80 b9 29 37 01 00 00 	cmp    BYTE PTR [ecx+0x13729],0x0
  7bd8f3:	74 13                	je     0x7bd908
  7bd8f5:	8d b1 50 36 01 00    	lea    esi,[ecx+0x13650]
  7bd8fb:	8d b9 00 37 01 00    	lea    edi,[ecx+0x13700]
  7bd901:	b9 0b 00 00 00       	mov    ecx,0xb
  7bd906:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7bd908:	8b 48 58             	mov    ecx,DWORD PTR [eax+0x58]
  7bd90b:	8b 0c 91             	mov    ecx,DWORD PTR [ecx+edx*4]
  7bd90e:	80 b9 55 37 01 00 00 	cmp    BYTE PTR [ecx+0x13755],0x0
  7bd915:	74 13                	je     0x7bd92a
  7bd917:	8d b1 50 36 01 00    	lea    esi,[ecx+0x13650]
  7bd91d:	8d b9 2c 37 01 00    	lea    edi,[ecx+0x1372c]
  7bd923:	b9 0b 00 00 00       	mov    ecx,0xb
  7bd928:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7bd92a:	8b 48 58             	mov    ecx,DWORD PTR [eax+0x58]
  7bd92d:	8b 0c 91             	mov    ecx,DWORD PTR [ecx+edx*4]
  7bd930:	80 b9 81 37 01 00 00 	cmp    BYTE PTR [ecx+0x13781],0x0
  7bd937:	74 13                	je     0x7bd94c
  7bd939:	8d b1 50 36 01 00    	lea    esi,[ecx+0x13650]
  7bd93f:	8d b9 58 37 01 00    	lea    edi,[ecx+0x13758]
  7bd945:	b9 0b 00 00 00       	mov    ecx,0xb
  7bd94a:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7bd94c:	8b 48 5c             	mov    ecx,DWORD PTR [eax+0x5c]
  7bd94f:	2b 48 58             	sub    ecx,DWORD PTR [eax+0x58]
  7bd952:	83 c2 01             	add    edx,0x1
  7bd955:	c1 f9 02             	sar    ecx,0x2
  7bd958:	3b d1                	cmp    edx,ecx
  7bd95a:	0f 82 20 ff ff ff    	jb     0x7bd880
  7bd960:	5f                   	pop    edi
  7bd961:	5e                   	pop    esi
  7bd962:	c3                   	ret
