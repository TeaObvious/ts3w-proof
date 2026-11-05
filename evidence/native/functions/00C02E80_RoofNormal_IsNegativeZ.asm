# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c02e80 (RoofNormal_IsNegativeZ)
Complete Ghidra function body: 0x00c02e80..0x00c02ec4 (exclusive end)
Ghidra body ranges: [[00c02e80, 00c02ec3]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c02e80 <.text+0x801e80>:
  c02e80:	55                                              	push   ebp
  c02e81:	8b ec                                           	mov    ebp,esp
  c02e83:	83 e4 f0                                        	and    esp,0xfffffff0
  c02e86:	83 ec 20                                        	sub    esp,0x20
  c02e89:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  c02e8c:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
  c02e91:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c02e95:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  c02e9b:	f3 0f 10 05 24 12 06 01                         	movss  xmm0,DWORD PTR ds:0x1061224
  c02ea3:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c02ea7:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  c02eac:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
  c02eb1:	0f 2f 44 24 10                                  	comiss xmm0,DWORD PTR [esp+0x10]
  c02eb6:	76 06                                           	jbe    0xc02ebe
  c02eb8:	b0 01                                           	mov    al,0x1
  c02eba:	8b e5                                           	mov    esp,ebp
  c02ebc:	5d                                              	pop    ebp
  c02ebd:	c3                                              	ret
  c02ebe:	32 c0                                           	xor    al,al
  c02ec0:	8b e5                                           	mov    esp,ebp
  c02ec2:	5d                                              	pop    ebp
  c02ec3:	c3                                              	ret
