# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006bbf50 <.text+0x2baf50>:
  6bbf50:	55                   	push   ebp
  6bbf51:	8b ec                	mov    ebp,esp
  6bbf53:	83 e4 f0             	and    esp,0xfffffff0
  6bbf56:	83 ec 18             	sub    esp,0x18
  6bbf59:	56                   	push   esi
  6bbf5a:	8b f1                	mov    esi,ecx
  6bbf5c:	81 be e4 01 00 00 ad 	cmp    DWORD PTR [esi+0x1e4],0xfeedbaad
  6bbf63:	ba ed fe 
  6bbf66:	57                   	push   edi
  6bbf67:	74 05                	je     0x6bbf6e
  6bbf69:	e8 52 c4 ff ff       	call   0x6b83c0
  6bbf6e:	8b 8e b0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b0]
  6bbf74:	85 c9                	test   ecx,ecx
  6bbf76:	0f 84 74 01 00 00    	je     0x6bc0f0
  6bbf7c:	f6 86 24 02 00 00 80 	test   BYTE PTR [esi+0x224],0x80
  6bbf83:	0f 84 67 01 00 00    	je     0x6bc0f0
  6bbf89:	8b 86 e0 01 00 00    	mov    eax,DWORD PTR [esi+0x1e0]
  6bbf8f:	50                   	push   eax
  6bbf90:	e8 8b a6 fe ff       	call   0x6a6620
  6bbf95:	8b f8                	mov    edi,eax
  6bbf97:	85 ff                	test   edi,edi
  6bbf99:	0f 84 43 01 00 00    	je     0x6bc0e2
  6bbf9f:	83 be e0 01 00 00 00 	cmp    DWORD PTR [esi+0x1e0],0x0
  6bbfa6:	0f 84 36 01 00 00    	je     0x6bc0e2
  6bbfac:	8b 0d 20 9d 15 01    	mov    ecx,DWORD PTR ds:0x1159d20
  6bbfb2:	8d 97 10 01 00 00    	lea    edx,[edi+0x110]
  6bbfb8:	52                   	push   edx
  6bbfb9:	89 0d 24 9d 15 01    	mov    DWORD PTR ds:0x1159d24,ecx
  6bbfbf:	8d 86 40 01 00 00    	lea    eax,[esi+0x140]
  6bbfc5:	50                   	push   eax
  6bbfc6:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  6bbfca:	51                   	push   ecx
  6bbfcb:	8b cf                	mov    ecx,edi
  6bbfcd:	e8 5e 58 fe ff       	call   0x6a1830
  6bbfd2:	50                   	push   eax
  6bbfd3:	8d 97 c8 00 00 00    	lea    edx,[edi+0xc8]
  6bbfd9:	52                   	push   edx
  6bbfda:	8d 47 30             	lea    eax,[edi+0x30]
  6bbfdd:	50                   	push   eax
  6bbfde:	8b ce                	mov    ecx,esi
  6bbfe0:	e8 7b f4 ff ff       	call   0x6bb460
  6bbfe5:	8b ce                	mov    ecx,esi
  6bbfe7:	e8 24 b5 ff ff       	call   0x6b7510
  6bbfec:	8b 0d 24 9d 15 01    	mov    ecx,DWORD PTR ds:0x1159d24
  6bbff2:	2b 0d 20 9d 15 01    	sub    ecx,DWORD PTR ds:0x1159d20
  6bbff8:	b8 ab aa aa 2a       	mov    eax,0x2aaaaaab
  6bbffd:	f7 e9                	imul   ecx
  6bbfff:	c1 fa 03             	sar    edx,0x3
  6bc002:	8b c2                	mov    eax,edx
  6bc004:	c1 e8 1f             	shr    eax,0x1f
  6bc007:	03 c2                	add    eax,edx
  6bc009:	50                   	push   eax
  6bc00a:	e8 a1 76 00 00       	call   0x6c36b0
  6bc00f:	8b c8                	mov    ecx,eax
  6bc011:	e8 6a 64 00 00       	call   0x6c2480
  6bc016:	b8 01 00 00 00       	mov    eax,0x1
  6bc01b:	39 86 d4 01 00 00    	cmp    DWORD PTR [esi+0x1d4],eax
  6bc021:	c7 44 24 18 04 00 00 	mov    DWORD PTR [esp+0x18],0x4
  6bc028:	00 
  6bc029:	75 13                	jne    0x6bc03e
  6bc02b:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  6bc02f:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  6bc033:	c7 44 24 14 03 00 00 	mov    DWORD PTR [esp+0x14],0x3
  6bc03a:	00 
  6bc03b:	51                   	push   ecx
  6bc03c:	eb 15                	jmp    0x6bc053
  6bc03e:	8d 54 24 10          	lea    edx,[esp+0x10]
  6bc042:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  6bc049:	00 
  6bc04a:	c7 44 24 14 04 00 00 	mov    DWORD PTR [esp+0x14],0x4
  6bc051:	00 
  6bc052:	52                   	push   edx
  6bc053:	8b ce                	mov    ecx,esi
  6bc055:	e8 66 fb ff ff       	call   0x6bbbc0
  6bc05a:	8b cf                	mov    ecx,edi
  6bc05c:	e8 ff 27 fe ff       	call   0x69e860
  6bc061:	84 c0                	test   al,al
  6bc063:	74 5f                	je     0x6bc0c4
  6bc065:	b9 50 1c 1d 01       	mov    ecx,0x11d1c50
  6bc06a:	e8 31 91 12 00       	call   0x7e51a0
  6bc06f:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  6bc073:	8d 86 d0 00 00 00    	lea    eax,[esi+0xd0]
  6bc079:	b9 04 00 00 00       	mov    ecx,0x4
  6bc07e:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6bc082:	0f 28 50 80          	movaps xmm2,XMMWORD PTR [eax-0x80]
  6bc086:	0f 28 c8             	movaps xmm1,xmm0
  6bc089:	0f 59 ca             	mulps  xmm1,xmm2
  6bc08c:	0f 29 48 80          	movaps XMMWORD PTR [eax-0x80],xmm1
  6bc090:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  6bc093:	0f 59 c8             	mulps  xmm1,xmm0
  6bc096:	0f 29 08             	movaps XMMWORD PTR [eax],xmm1
  6bc099:	83 c0 10             	add    eax,0x10
  6bc09c:	83 e9 01             	sub    ecx,0x1
  6bc09f:	75 e1                	jne    0x6bc082
  6bc0a1:	8d 86 10 01 00 00    	lea    eax,[esi+0x110]
  6bc0a7:	b9 03 00 00 00       	mov    ecx,0x3
  6bc0ac:	8d 64 24 00          	lea    esp,[esp+0x0]
  6bc0b0:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  6bc0b3:	0f 28 c8             	movaps xmm1,xmm0
  6bc0b6:	0f 59 ca             	mulps  xmm1,xmm2
  6bc0b9:	0f 29 08             	movaps XMMWORD PTR [eax],xmm1
  6bc0bc:	83 c0 10             	add    eax,0x10
  6bc0bf:	83 e9 01             	sub    ecx,0x1
  6bc0c2:	75 ec                	jne    0x6bc0b0
  6bc0c4:	8d 86 00 02 00 00    	lea    eax,[esi+0x200]
  6bc0ca:	50                   	push   eax
  6bc0cb:	8b ce                	mov    ecx,esi
  6bc0cd:	c7 86 f0 01 00 00 00 	mov    DWORD PTR [esi+0x1f0],0x0
  6bc0d4:	00 00 00 
  6bc0d7:	e8 54 c6 ff ff       	call   0x6b8730
  6bc0dc:	5f                   	pop    edi
  6bc0dd:	5e                   	pop    esi
  6bc0de:	8b e5                	mov    esp,ebp
  6bc0e0:	5d                   	pop    ebp
  6bc0e1:	c3                   	ret
  6bc0e2:	8b ce                	mov    ecx,esi
  6bc0e4:	e8 57 ea ff ff       	call   0x6bab40
  6bc0e9:	8b ce                	mov    ecx,esi
  6bc0eb:	e8 20 fc ff ff       	call   0x6bbd10
  6bc0f0:	5f                   	pop    edi
  6bc0f1:	5e                   	pop    esi
  6bc0f2:	8b e5                	mov    esp,ebp
  6bc0f4:	5d                   	pop    ebp
  6bc0f5:	c3                   	ret
