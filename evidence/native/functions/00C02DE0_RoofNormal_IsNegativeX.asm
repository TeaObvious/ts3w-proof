# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c02de0 (RoofNormal_IsNegativeX)
Complete Ghidra function body: 0x00c02de0..0x00c02e23 (exclusive end)
Ghidra body ranges: [[00c02de0, 00c02e22]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c02de0 <.text+0x801de0>:
  c02de0:	55                                              	push   ebp
  c02de1:	8b ec                                           	mov    ebp,esp
  c02de3:	83 e4 f0                                        	and    esp,0xfffffff0
  c02de6:	83 ec 20                                        	sub    esp,0x20
  c02de9:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  c02dec:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  c02df0:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c02df4:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  c02dfa:	f3 0f 10 05 24 12 06 01                         	movss  xmm0,DWORD PTR ds:0x1061224
  c02e02:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c02e06:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  c02e0b:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
  c02e10:	0f 2f 44 24 10                                  	comiss xmm0,DWORD PTR [esp+0x10]
  c02e15:	76 06                                           	jbe    0xc02e1d
  c02e17:	b0 01                                           	mov    al,0x1
  c02e19:	8b e5                                           	mov    esp,ebp
  c02e1b:	5d                                              	pop    ebp
  c02e1c:	c3                                              	ret
  c02e1d:	32 c0                                           	xor    al,al
  c02e1f:	8b e5                                           	mov    esp,ebp
  c02e21:	5d                                              	pop    ebp
  c02e22:	c3                                              	ret
