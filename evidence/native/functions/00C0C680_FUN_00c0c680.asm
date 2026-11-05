# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00c0c680, 0x00c0c6c2); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00c0c680 <.text+0x80b680>:
  c0c680:	57                   	push   edi
  c0c681:	8b f9                	mov    edi,ecx
  c0c683:	80 7f 08 00          	cmp    BYTE PTR [edi+0x8],0x0
  c0c687:	75 37                	jne    0xc0c6c0
  c0c689:	56                   	push   esi
  c0c68a:	c6 47 08 01          	mov    BYTE PTR [edi+0x8],0x1
  c0c68e:	e8 bd d4 ff ff       	call   0xc09b50
  c0c693:	8b cf                	mov    ecx,edi
  c0c695:	e8 66 e5 ff ff       	call   0xc0ac00
  c0c69a:	8b cf                	mov    ecx,edi
  c0c69c:	e8 cf d3 ff ff       	call   0xc09a70
  c0c6a1:	8b b7 c8 02 00 00    	mov    esi,DWORD PTR [edi+0x2c8]
  c0c6a7:	8b bf cc 02 00 00    	mov    edi,DWORD PTR [edi+0x2cc]
  c0c6ad:	3b f7                	cmp    esi,edi
  c0c6af:	74 0e                	je     0xc0c6bf
  c0c6b1:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c0c6b3:	e8 98 12 00 00       	call   0xc0d950
  c0c6b8:	83 c6 04             	add    esi,0x4
  c0c6bb:	3b f7                	cmp    esi,edi
  c0c6bd:	75 f2                	jne    0xc0c6b1
  c0c6bf:	5e                   	pop    esi
  c0c6c0:	5f                   	pop    edi
  c0c6c1:	c3                   	ret
