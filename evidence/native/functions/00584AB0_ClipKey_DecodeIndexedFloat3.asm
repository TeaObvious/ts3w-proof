# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00584ab0 <.text+0x183ab0>:
  584ab0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  584ab4:	66 8b 41 02          	mov    ax,WORD PTR [ecx+0x2]
  584ab8:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  584abc:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  584ac3:	00 
  584ac4:	f3 0f 10 1d 18 b2 fa 	movss  xmm3,DWORD PTR ds:0xfab218
  584acb:	00 
  584acc:	66 89 02             	mov    WORD PTR [edx],ax
  584acf:	f6 41 02 01          	test   BYTE PTR [ecx+0x2],0x1
  584ad3:	0f 28 d0             	movaps xmm2,xmm0
  584ad6:	0f 28 c8             	movaps xmm1,xmm0
  584ad9:	0f 28 e0             	movaps xmm4,xmm0
  584adc:	74 03                	je     0x584ae1
  584ade:	0f 28 d3             	movaps xmm2,xmm3
  584ae1:	0f b7 41 02          	movzx  eax,WORD PTR [ecx+0x2]
  584ae5:	a8 02                	test   al,0x2
  584ae7:	74 03                	je     0x584aec
  584ae9:	0f 28 cb             	movaps xmm1,xmm3
  584aec:	a8 04                	test   al,0x4
  584aee:	74 03                	je     0x584af3
  584af0:	0f 28 c3             	movaps xmm0,xmm3
  584af3:	a8 08                	test   al,0x8
  584af5:	74 03                	je     0x584afa
  584af7:	0f 28 e3             	movaps xmm4,xmm3
  584afa:	a8 70                	test   al,0x70
  584afc:	74 66                	je     0x584b64
  584afe:	a8 10                	test   al,0x10
  584b00:	74 1b                	je     0x584b1d
  584b02:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  584b06:	0f 57 c0             	xorps  xmm0,xmm0
  584b09:	f3 0f 11 40 0c       	movss  DWORD PTR [eax+0xc],xmm0
  584b0e:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  584b13:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  584b18:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  584b1c:	c3                   	ret
  584b1d:	a8 20                	test   al,0x20
  584b1f:	74 18                	je     0x584b39
  584b21:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  584b25:	f3 0f 11 10          	movss  DWORD PTR [eax],xmm2
  584b29:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  584b2e:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  584b33:	f3 0f 11 60 0c       	movss  DWORD PTR [eax+0xc],xmm4
  584b38:	c3                   	ret
  584b39:	a8 40                	test   al,0x40
  584b3b:	74 68                	je     0x584ba5
  584b3d:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  584b41:	0f 57 db             	xorps  xmm3,xmm3
  584b44:	f3 0f 59 d3          	mulss  xmm2,xmm3
  584b48:	f3 0f 59 cb          	mulss  xmm1,xmm3
  584b4c:	f3 0f 59 c3          	mulss  xmm0,xmm3
  584b50:	f3 0f 11 10          	movss  DWORD PTR [eax],xmm2
  584b54:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  584b59:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  584b5e:	f3 0f 11 60 0c       	movss  DWORD PTR [eax+0xc],xmm4
  584b63:	c3                   	ret
  584b64:	0f b7 51 04          	movzx  edx,WORD PTR [ecx+0x4]
  584b68:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  584b6c:	8b 00                	mov    eax,DWORD PTR [eax]
  584b6e:	f3 0f 10 1c 90       	movss  xmm3,DWORD PTR [eax+edx*4]
  584b73:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  584b77:	f3 0f 59 da          	mulss  xmm3,xmm2
  584b7b:	f3 0f 11 1a          	movss  DWORD PTR [edx],xmm3
  584b7f:	56                   	push   esi
  584b80:	0f b7 71 06          	movzx  esi,WORD PTR [ecx+0x6]
  584b84:	f3 0f 10 14 b0       	movss  xmm2,DWORD PTR [eax+esi*4]
  584b89:	f3 0f 59 d1          	mulss  xmm2,xmm1
  584b8d:	f3 0f 11 52 04       	movss  DWORD PTR [edx+0x4],xmm2
  584b92:	0f b7 49 08          	movzx  ecx,WORD PTR [ecx+0x8]
  584b96:	f3 0f 10 0c 88       	movss  xmm1,DWORD PTR [eax+ecx*4]
  584b9b:	f3 0f 59 c8          	mulss  xmm1,xmm0
  584b9f:	f3 0f 11 4a 08       	movss  DWORD PTR [edx+0x8],xmm1
  584ba4:	5e                   	pop    esi
  584ba5:	c3                   	ret
