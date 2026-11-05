# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c02ed0 (RoofNormal_IsPositiveZ)
Complete Ghidra function body: 0x00c02ed0..0x00c02f14 (exclusive end)
Ghidra body ranges: [[00c02ed0, 00c02f13]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c02ed0 <.text+0x801ed0>:
  c02ed0:	55                                              	push   ebp
  c02ed1:	8b ec                                           	mov    ebp,esp
  c02ed3:	83 e4 f0                                        	and    esp,0xfffffff0
  c02ed6:	83 ec 20                                        	sub    esp,0x20
  c02ed9:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  c02edc:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
  c02ee1:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c02ee5:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  c02eea:	f3 0f 10 05 e8 46 07 01                         	movss  xmm0,DWORD PTR ds:0x10746e8
  c02ef2:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  c02ef6:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  c02efc:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
  c02f01:	0f 2f 44 24 10                                  	comiss xmm0,DWORD PTR [esp+0x10]
  c02f06:	76 06                                           	jbe    0xc02f0e
  c02f08:	b0 01                                           	mov    al,0x1
  c02f0a:	8b e5                                           	mov    esp,ebp
  c02f0c:	5d                                              	pop    ebp
  c02f0d:	c3                                              	ret
  c02f0e:	32 c0                                           	xor    al,al
  c02f10:	8b e5                                           	mov    esp,ebp
  c02f12:	5d                                              	pop    ebp
  c02f13:	c3                                              	ret
