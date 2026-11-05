# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00957c60, 0x00957cd2); analyst name TransformComponent_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00957c60 <.text+0x556c60>:
  957c60:	55                   	push   ebp
  957c61:	8b ec                	mov    ebp,esp
  957c63:	83 e4 f0             	and    esp,0xfffffff0
  957c66:	83 ec 1c             	sub    esp,0x1c
  957c69:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  957c6c:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  957c74:	56                   	push   esi
  957c75:	8b f1                	mov    esi,ecx
  957c77:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  957c7a:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  957c80:	0f 57 c0             	xorps  xmm0,xmm0
  957c83:	33 c0                	xor    eax,eax
  957c85:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  957c88:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  957c8e:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  957c94:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  957c9a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  957c9f:	c7 06 cc 58 04 01    	mov    DWORD PTR [esi],0x10458cc
  957ca5:	0f 29 46 10          	movaps XMMWORD PTR [esi+0x10],xmm0
  957ca9:	0f 57 c0             	xorps  xmm0,xmm0
  957cac:	0f 29 46 20          	movaps XMMWORD PTR [esi+0x20],xmm0
  957cb0:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  957cb3:	c7 46 34 01 00 00 00 	mov    DWORD PTR [esi+0x34],0x1
  957cba:	8b 0d 54 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea154
  957cc0:	51                   	push   ecx
  957cc1:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  957cc4:	e8 e7 c5 fd ff       	call   0x9342b0
  957cc9:	8b c6                	mov    eax,esi
  957ccb:	5e                   	pop    esi
  957ccc:	8b e5                	mov    esp,ebp
  957cce:	5d                   	pop    ebp
  957ccf:	c2 04 00             	ret    0x4
