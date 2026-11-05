# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006bbbc0 <.text+0x2babc0>:
  6bbbc0:	55                   	push   ebp
  6bbbc1:	8b ec                	mov    ebp,esp
  6bbbc3:	83 e4 f0             	and    esp,0xfffffff0
  6bbbc6:	83 ec 24             	sub    esp,0x24
  6bbbc9:	53                   	push   ebx
  6bbbca:	56                   	push   esi
  6bbbcb:	8b f1                	mov    esi,ecx
  6bbbcd:	80 a6 24 02 00 00 fe 	and    BYTE PTR [esi+0x224],0xfe
  6bbbd4:	8a 86 24 02 00 00    	mov    al,BYTE PTR [esi+0x224]
  6bbbda:	57                   	push   edi
  6bbbdb:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  6bbbde:	83 3f 00             	cmp    DWORD PTR [edi],0x0
  6bbbe1:	c6 44 24 0f 00       	mov    BYTE PTR [esp+0xf],0x0
  6bbbe6:	0f 94 c3             	sete   bl
  6bbbe9:	a8 02                	test   al,0x2
  6bbbeb:	74 54                	je     0x6bbc41
  6bbbed:	0f 28 86 10 02 00 00 	movaps xmm0,XMMWORD PTR [esi+0x210]
  6bbbf4:	0f 28 8e 10 02 00 00 	movaps xmm1,XMMWORD PTR [esi+0x210]
  6bbbfb:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  6bbbff:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  6bbc03:	0f 58 c8             	addps  xmm1,xmm0
  6bbc06:	0f 28 86 10 02 00 00 	movaps xmm0,XMMWORD PTR [esi+0x210]
  6bbc0d:	0f 28 d0             	movaps xmm2,xmm0
  6bbc10:	0f c6 d0 aa          	shufps xmm2,xmm0,0xaa
  6bbc14:	f3 0f 10 05 ec e6 06 	movss  xmm0,DWORD PTR ds:0x106e6ec
  6bbc1b:	01 
  6bbc1c:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6bbc20:	0f 58 d1             	addps  xmm2,xmm1
  6bbc23:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  6bbc29:	f3 0f 11 54 24 10    	movss  DWORD PTR [esp+0x10],xmm2
  6bbc2f:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  6bbc35:	0f 2f 44 24 20       	comiss xmm0,DWORD PTR [esp+0x20]
  6bbc3a:	76 05                	jbe    0x6bbc41
  6bbc3c:	c6 44 24 0f 01       	mov    BYTE PTR [esp+0xf],0x1
  6bbc41:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  6bbc44:	85 c9                	test   ecx,ecx
  6bbc46:	74 13                	je     0x6bbc5b
  6bbc48:	80 3d 74 9d 15 01 00 	cmp    BYTE PTR ds:0x1159d74,0x0
  6bbc4f:	74 0a                	je     0x6bbc5b
  6bbc51:	68 20 9d 15 01       	push   0x1159d20
  6bbc56:	e8 15 fb ff ff       	call   0x6bb770
  6bbc5b:	80 a6 24 02 00 00 fe 	and    BYTE PTR [esi+0x224],0xfe
  6bbc62:	84 db                	test   bl,bl
  6bbc64:	74 19                	je     0x6bbc7f
  6bbc66:	83 7e 08 00          	cmp    DWORD PTR [esi+0x8],0x0
  6bbc6a:	75 13                	jne    0x6bbc7f
  6bbc6c:	80 7c 24 0f 00       	cmp    BYTE PTR [esp+0xf],0x0
  6bbc71:	75 0c                	jne    0x6bbc7f
  6bbc73:	68 20 9d 15 01       	push   0x1159d20
  6bbc78:	8b ce                	mov    ecx,esi
  6bbc7a:	e8 d1 f8 ff ff       	call   0x6bb550
  6bbc7f:	a1 24 9d 15 01       	mov    eax,ds:0x1159d24
  6bbc84:	8b 0d 20 9d 15 01    	mov    ecx,DWORD PTR ds:0x1159d20
  6bbc8a:	50                   	push   eax
  6bbc8b:	51                   	push   ecx
  6bbc8c:	e8 cf f6 ff ff       	call   0x6bb360
  6bbc91:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  6bbc94:	83 c4 08             	add    esp,0x8
  6bbc97:	85 c9                	test   ecx,ecx
  6bbc99:	74 13                	je     0x6bbcae
  6bbc9b:	80 3d 74 9d 15 01 00 	cmp    BYTE PTR ds:0x1159d74,0x0
  6bbca2:	74 0a                	je     0x6bbcae
  6bbca4:	68 20 9d 15 01       	push   0x1159d20
  6bbca9:	e8 92 f4 ff ff       	call   0x6bb140
  6bbcae:	83 7e 08 00          	cmp    DWORD PTR [esi+0x8],0x0
  6bbcb2:	74 15                	je     0x6bbcc9
  6bbcb4:	68 20 9d 15 01       	push   0x1159d20
  6bbcb9:	8b ce                	mov    ecx,esi
  6bbcbb:	e8 70 c0 ff ff       	call   0x6b7d30
  6bbcc0:	5f                   	pop    edi
  6bbcc1:	5e                   	pop    esi
  6bbcc2:	5b                   	pop    ebx
  6bbcc3:	8b e5                	mov    esp,ebp
  6bbcc5:	5d                   	pop    ebp
  6bbcc6:	c2 04 00             	ret    0x4
  6bbcc9:	80 3d 30 9d 15 01 00 	cmp    BYTE PTR ds:0x1159d30,0x0
  6bbcd0:	74 1f                	je     0x6bbcf1
  6bbcd2:	f6 86 24 02 00 00 20 	test   BYTE PTR [esi+0x224],0x20
  6bbcd9:	75 16                	jne    0x6bbcf1
  6bbcdb:	57                   	push   edi
  6bbcdc:	68 20 9d 15 01       	push   0x1159d20
  6bbce1:	8b ce                	mov    ecx,esi
  6bbce3:	e8 d8 bb ff ff       	call   0x6b78c0
  6bbce8:	5f                   	pop    edi
  6bbce9:	5e                   	pop    esi
  6bbcea:	5b                   	pop    ebx
  6bbceb:	8b e5                	mov    esp,ebp
  6bbced:	5d                   	pop    ebp
  6bbcee:	c2 04 00             	ret    0x4
  6bbcf1:	57                   	push   edi
  6bbcf2:	68 20 9d 15 01       	push   0x1159d20
  6bbcf7:	8b ce                	mov    ecx,esi
  6bbcf9:	e8 b2 e7 ff ff       	call   0x6ba4b0
  6bbcfe:	5f                   	pop    edi
  6bbcff:	5e                   	pop    esi
  6bbd00:	5b                   	pop    ebx
  6bbd01:	8b e5                	mov    esp,ebp
  6bbd03:	5d                   	pop    ebp
  6bbd04:	c2 04 00             	ret    0x4
