# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00962570, 0x009625ab).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00962570 <.text+0x561570>:
  962570:	55                   	push   ebp
  962571:	8b ec                	mov    ebp,esp
  962573:	83 e4 f0             	and    esp,0xfffffff0
  962576:	83 ec 10             	sub    esp,0x10
  962579:	f3 0f 10 45 08       	movss  xmm0,DWORD PTR [ebp+0x8]
  96257e:	f3 0f 10 4d 0c       	movss  xmm1,DWORD PTR [ebp+0xc]
  962583:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  962589:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  96258f:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  962595:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  96259a:	0f 28 04 24          	movaps xmm0,XMMWORD PTR [esp]
  96259e:	0f 29 81 00 05 00 00 	movaps XMMWORD PTR [ecx+0x500],xmm0
  9625a5:	8b e5                	mov    esp,ebp
  9625a7:	5d                   	pop    ebp
  9625a8:	c2 08 00             	ret    0x8
