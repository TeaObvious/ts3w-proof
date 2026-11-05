# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00962680, 0x009626bb).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00962680 <.text+0x561680>:
  962680:	55                   	push   ebp
  962681:	8b ec                	mov    ebp,esp
  962683:	83 e4 f0             	and    esp,0xfffffff0
  962686:	80 7d 08 00          	cmp    BYTE PTR [ebp+0x8],0x0
  96268a:	0f 28 81 00 05 00 00 	movaps xmm0,XMMWORD PTR [ecx+0x500]
  962691:	0f 29 81 10 05 00 00 	movaps XMMWORD PTR [ecx+0x510],xmm0
  962698:	0f 29 81 f0 04 00 00 	movaps XMMWORD PTR [ecx+0x4f0],xmm0
  96269f:	74 0d                	je     0x9626ae
  9626a1:	80 89 e0 04 00 00 02 	or     BYTE PTR [ecx+0x4e0],0x2
  9626a8:	8b e5                	mov    esp,ebp
  9626aa:	5d                   	pop    ebp
  9626ab:	c2 04 00             	ret    0x4
  9626ae:	80 a1 e0 04 00 00 fd 	and    BYTE PTR [ecx+0x4e0],0xfd
  9626b5:	8b e5                	mov    esp,ebp
  9626b7:	5d                   	pop    ebp
  9626b8:	c2 04 00             	ret    0x4
