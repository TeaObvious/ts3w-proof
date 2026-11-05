# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006b8940 <.text+0x2b7940>:
  6b8940:	55                   	push   ebp
  6b8941:	8b ec                	mov    ebp,esp
  6b8943:	83 e4 f0             	and    esp,0xfffffff0
  6b8946:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  6b8949:	83 ec 34             	sub    esp,0x34
  6b894c:	53                   	push   ebx
  6b894d:	56                   	push   esi
  6b894e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  6b8951:	3b f0                	cmp    esi,eax
  6b8953:	57                   	push   edi
  6b8954:	0f 84 90 00 00 00    	je     0x6b89ea
  6b895a:	8d 56 30             	lea    edx,[esi+0x30]
  6b895d:	3b d0                	cmp    edx,eax
  6b895f:	0f 84 85 00 00 00    	je     0x6b89ea
  6b8965:	3b d6                	cmp    edx,esi
  6b8967:	8b 4a 2c             	mov    ecx,DWORD PTR [edx+0x2c]
  6b896a:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  6b896d:	0f 28 0a             	movaps xmm1,XMMWORD PTR [edx]
  6b8970:	0f 28 52 10          	movaps xmm2,XMMWORD PTR [edx+0x10]
  6b8974:	8b 7a 20             	mov    edi,DWORD PTR [edx+0x20]
  6b8977:	f3 0f 10 42 28       	movss  xmm0,DWORD PTR [edx+0x28]
  6b897c:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
  6b8980:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  6b8984:	8b ca                	mov    ecx,edx
  6b8986:	74 39                	je     0x6b89c1
  6b8988:	8d 42 f0             	lea    eax,[edx-0x10]
  6b898b:	0f 2f 40 08          	comiss xmm0,DWORD PTR [eax+0x8]
  6b898f:	76 30                	jbe    0x6b89c1
  6b8991:	0f 28 58 e0          	movaps xmm3,XMMWORD PTR [eax-0x20]
  6b8995:	0f 29 19             	movaps XMMWORD PTR [ecx],xmm3
  6b8998:	0f 28 58 f0          	movaps xmm3,XMMWORD PTR [eax-0x10]
  6b899c:	0f 29 58 20          	movaps XMMWORD PTR [eax+0x20],xmm3
  6b89a0:	8b 18                	mov    ebx,DWORD PTR [eax]
  6b89a2:	89 58 30             	mov    DWORD PTR [eax+0x30],ebx
  6b89a5:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
  6b89a8:	89 58 34             	mov    DWORD PTR [eax+0x34],ebx
  6b89ab:	d9 40 08             	fld    DWORD PTR [eax+0x8]
  6b89ae:	d9 58 38             	fstp   DWORD PTR [eax+0x38]
  6b89b1:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
  6b89b4:	89 58 3c             	mov    DWORD PTR [eax+0x3c],ebx
  6b89b7:	83 e9 30             	sub    ecx,0x30
  6b89ba:	83 e8 30             	sub    eax,0x30
  6b89bd:	3b ce                	cmp    ecx,esi
  6b89bf:	75 ca                	jne    0x6b898b
  6b89c1:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  6b89c5:	0f 29 09             	movaps XMMWORD PTR [ecx],xmm1
  6b89c8:	0f 29 51 10          	movaps XMMWORD PTR [ecx+0x10],xmm2
  6b89cc:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
  6b89cf:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  6b89d3:	83 c2 30             	add    edx,0x30
  6b89d6:	3b 55 0c             	cmp    edx,DWORD PTR [ebp+0xc]
  6b89d9:	89 79 20             	mov    DWORD PTR [ecx+0x20],edi
  6b89dc:	f3 0f 11 41 28       	movss  DWORD PTR [ecx+0x28],xmm0
  6b89e1:	89 41 2c             	mov    DWORD PTR [ecx+0x2c],eax
  6b89e4:	0f 85 7b ff ff ff    	jne    0x6b8965
  6b89ea:	5f                   	pop    edi
  6b89eb:	5e                   	pop    esi
  6b89ec:	5b                   	pop    ebx
  6b89ed:	8b e5                	mov    esp,ebp
  6b89ef:	5d                   	pop    ebp
  6b89f0:	c3                   	ret
