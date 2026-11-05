# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c02e30 (RoofNormal_IsPositiveX)
Complete Ghidra function body: 0x00c02e30..0x00c02e73 (exclusive end)
Ghidra body ranges: [[00c02e30, 00c02e72]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c02e30 <.text+0x801e30>:
  c02e30:	55                                              	push   ebp
  c02e31:	8b ec                                           	mov    ebp,esp
  c02e33:	83 e4 f0                                        	and    esp,0xfffffff0
  c02e36:	83 ec 20                                        	sub    esp,0x20
  c02e39:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  c02e3c:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  c02e40:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c02e44:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  c02e49:	f3 0f 10 05 e8 46 07 01                         	movss  xmm0,DWORD PTR ds:0x10746e8
  c02e51:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c02e55:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  c02e5b:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
  c02e60:	0f 2f 44 24 10                                  	comiss xmm0,DWORD PTR [esp+0x10]
  c02e65:	76 06                                           	jbe    0xc02e6d
  c02e67:	b0 01                                           	mov    al,0x1
  c02e69:	8b e5                                           	mov    esp,ebp
  c02e6b:	5d                                              	pop    ebp
  c02e6c:	c3                                              	ret
  c02e6d:	32 c0                                           	xor    al,al
  c02e6f:	8b e5                                           	mov    esp,ebp
  c02e71:	5d                                              	pop    ebp
  c02e72:	c3                                              	ret
