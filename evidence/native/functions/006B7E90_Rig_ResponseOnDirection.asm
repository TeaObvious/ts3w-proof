# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006b7e90 <.text+0x2b6e90>:
  6b7e90:	55                   	push   ebp
  6b7e91:	8b ec                	mov    ebp,esp
  6b7e93:	83 e4 f0             	and    esp,0xfffffff0
  6b7e96:	83 ec 14             	sub    esp,0x14
  6b7e99:	0f 57 c0             	xorps  xmm0,xmm0
  6b7e9c:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  6b7e9f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6b7ea2:	53                   	push   ebx
  6b7ea3:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  6b7ea6:	56                   	push   esi
  6b7ea7:	8b 32                	mov    esi,DWORD PTR [edx]
  6b7ea9:	83 fe 04             	cmp    esi,0x4
  6b7eac:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6b7eb2:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  6b7eb8:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6b7ebe:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  6b7ec4:	0f 28 54 24 0c       	movaps xmm2,XMMWORD PTR [esp+0xc]
  6b7ec9:	57                   	push   edi
  6b7eca:	0f 29 10             	movaps XMMWORD PTR [eax],xmm2
  6b7ecd:	0f 83 b9 00 00 00    	jae    0x6b7f8c
  6b7ed3:	0f 28 1b             	movaps xmm3,XMMWORD PTR [ebx]
  6b7ed6:	8d 56 05             	lea    edx,[esi+0x5]
  6b7ed9:	c1 e2 04             	shl    edx,0x4
  6b7edc:	bf 04 00 00 00       	mov    edi,0x4
  6b7ee1:	0f 57 c0             	xorps  xmm0,xmm0
  6b7ee4:	03 d1                	add    edx,ecx
  6b7ee6:	0f 28 e0             	movaps xmm4,xmm0
  6b7ee9:	2b fe                	sub    edi,esi
  6b7eeb:	eb 03                	jmp    0x6b7ef0
  6b7eed:	8d 49 00             	lea    ecx,[ecx+0x0]
  6b7ef0:	0f 28 4a c0          	movaps xmm1,XMMWORD PTR [edx-0x40]
  6b7ef4:	0f 59 cb             	mulps  xmm1,xmm3
  6b7ef7:	0f 28 c1             	movaps xmm0,xmm1
  6b7efa:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  6b7efe:	0f 28 e9             	movaps xmm5,xmm1
  6b7f01:	0f c6 e9 01          	shufps xmm5,xmm1,0x1
  6b7f05:	0f 58 c5             	addps  xmm0,xmm5
  6b7f08:	0f 58 c1             	addps  xmm0,xmm1
  6b7f0b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b7f0f:	0f 28 cc             	movaps xmm1,xmm4
  6b7f12:	0f 5f c8             	maxps  xmm1,xmm0
  6b7f15:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  6b7f18:	0f 59 c8             	mulps  xmm1,xmm0
  6b7f1b:	83 c2 10             	add    edx,0x10
  6b7f1e:	83 ef 01             	sub    edi,0x1
  6b7f21:	0f 58 ca             	addps  xmm1,xmm2
  6b7f24:	0f 28 d1             	movaps xmm2,xmm1
  6b7f27:	75 c7                	jne    0x6b7ef0
  6b7f29:	83 fe 04             	cmp    esi,0x4
  6b7f2c:	0f 29 10             	movaps XMMWORD PTR [eax],xmm2
  6b7f2f:	73 5b                	jae    0x6b7f8c
  6b7f31:	0f 28 1b             	movaps xmm3,XMMWORD PTR [ebx]
  6b7f34:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  6b7f37:	8d 56 0d             	lea    edx,[esi+0xd]
  6b7f3a:	c1 e2 04             	shl    edx,0x4
  6b7f3d:	03 d1                	add    edx,ecx
  6b7f3f:	b9 04 00 00 00       	mov    ecx,0x4
  6b7f44:	0f 57 c0             	xorps  xmm0,xmm0
  6b7f47:	0f 28 e0             	movaps xmm4,xmm0
  6b7f4a:	2b ce                	sub    ecx,esi
  6b7f4c:	8d 64 24 00          	lea    esp,[esp+0x0]
  6b7f50:	0f 28 4a c0          	movaps xmm1,XMMWORD PTR [edx-0x40]
  6b7f54:	0f 59 cb             	mulps  xmm1,xmm3
  6b7f57:	0f 28 c1             	movaps xmm0,xmm1
  6b7f5a:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  6b7f5e:	0f 28 e9             	movaps xmm5,xmm1
  6b7f61:	0f c6 e9 01          	shufps xmm5,xmm1,0x1
  6b7f65:	0f 58 c5             	addps  xmm0,xmm5
  6b7f68:	0f 58 c1             	addps  xmm0,xmm1
  6b7f6b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b7f6f:	0f 28 cc             	movaps xmm1,xmm4
  6b7f72:	0f 5f c8             	maxps  xmm1,xmm0
  6b7f75:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  6b7f78:	0f 59 c8             	mulps  xmm1,xmm0
  6b7f7b:	83 c2 10             	add    edx,0x10
  6b7f7e:	83 e9 01             	sub    ecx,0x1
  6b7f81:	0f 58 ca             	addps  xmm1,xmm2
  6b7f84:	0f 28 d1             	movaps xmm2,xmm1
  6b7f87:	75 c7                	jne    0x6b7f50
  6b7f89:	0f 29 10             	movaps XMMWORD PTR [eax],xmm2
  6b7f8c:	5f                   	pop    edi
  6b7f8d:	5e                   	pop    esi
  6b7f8e:	5b                   	pop    ebx
  6b7f8f:	8b e5                	mov    esp,ebp
  6b7f91:	5d                   	pop    ebp
  6b7f92:	c2 0c 00             	ret    0xc
