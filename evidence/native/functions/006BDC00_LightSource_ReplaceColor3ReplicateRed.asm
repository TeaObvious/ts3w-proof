# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed envelope [0x006bdc00,0x006bdc69); analyst name LightSource_ReplaceColor3ReplicateRed.
# Original instructions govern paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

006bdc00 <.text+0x2bcc00>:
  6bdc00:	55                   	push   ebp
  6bdc01:	8b ec                	mov    ebp,esp
  6bdc03:	83 e4 f0             	and    esp,0xfffffff0
  6bdc06:	83 ec 10             	sub    esp,0x10
  6bdc09:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6bdc0c:	f3 0f 10 48 08       	movss  xmm1,DWORD PTR [eax+0x8]
  6bdc11:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  6bdc15:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  6bdc1b:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  6bdc20:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  6bdc26:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  6bdc2c:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  6bdc31:	0f 28 04 24          	movaps xmm0,XMMWORD PTR [esp]
  6bdc35:	0f 29 81 f0 00 00 00 	movaps XMMWORD PTR [ecx+0xf0],xmm0
  6bdc3c:	f6 81 00 01 00 00 20 	test   BYTE PTR [ecx+0x100],0x20
  6bdc43:	74 14                	je     0x6bdc59
  6bdc45:	0f 28 49 10          	movaps xmm1,XMMWORD PTR [ecx+0x10]
  6bdc49:	0f 59 c8             	mulps  xmm1,xmm0
  6bdc4c:	0f 29 89 e0 00 00 00 	movaps XMMWORD PTR [ecx+0xe0],xmm1
  6bdc53:	8b e5                	mov    esp,ebp
  6bdc55:	5d                   	pop    ebp
  6bdc56:	c2 04 00             	ret    0x4
  6bdc59:	0f 57 c0             	xorps  xmm0,xmm0
  6bdc5c:	0f 29 81 e0 00 00 00 	movaps XMMWORD PTR [ecx+0xe0],xmm0
  6bdc63:	8b e5                	mov    esp,ebp
  6bdc65:	5d                   	pop    ebp
  6bdc66:	c2 04 00             	ret    0x4
