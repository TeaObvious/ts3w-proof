# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed envelope [0x006bc550,0x006bc593); analyst name LightSource_ReplaceAlignedColor4.
# Original instructions govern paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

006bc550 <.text+0x2bb550>:
  6bc550:	55                   	push   ebp
  6bc551:	8b ec                	mov    ebp,esp
  6bc553:	83 e4 f0             	and    esp,0xfffffff0
  6bc556:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6bc559:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  6bc55c:	0f 29 81 f0 00 00 00 	movaps XMMWORD PTR [ecx+0xf0],xmm0
  6bc563:	f6 81 00 01 00 00 20 	test   BYTE PTR [ecx+0x100],0x20
  6bc56a:	74 17                	je     0x6bc583
  6bc56c:	0f 28 41 10          	movaps xmm0,XMMWORD PTR [ecx+0x10]
  6bc570:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  6bc573:	0f 59 c1             	mulps  xmm0,xmm1
  6bc576:	0f 29 81 e0 00 00 00 	movaps XMMWORD PTR [ecx+0xe0],xmm0
  6bc57d:	8b e5                	mov    esp,ebp
  6bc57f:	5d                   	pop    ebp
  6bc580:	c2 04 00             	ret    0x4
  6bc583:	0f 57 c0             	xorps  xmm0,xmm0
  6bc586:	0f 29 81 e0 00 00 00 	movaps XMMWORD PTR [ecx+0xe0],xmm0
  6bc58d:	8b e5                	mov    esp,ebp
  6bc58f:	5d                   	pop    ebp
  6bc590:	c2 04 00             	ret    0x4
