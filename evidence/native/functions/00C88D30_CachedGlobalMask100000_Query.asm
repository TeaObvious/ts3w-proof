# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00c88d30 CachedGlobalMask100000_Query
# Complete actual Ghidra owned ranges: 00c88d30..00c88d5a; 10 instructions/43 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00C88D30_CachedGlobalMask100000_Query.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c88d30 <.text+0x887d30>:
  c88d30:	80 3d f1 de 1e 01 00                            	cmp    BYTE PTR ds:0x11edef1,0x0
  c88d37:	75 1c                                           	jne    0xc88d55
  c88d39:	68 00 00 10 00                                  	push   0x100000
  c88d3e:	b9 e0 ed 1c 01                                  	mov    ecx,0x11cede0
  c88d43:	e8 58 b0 89 ff                                  	call   0x523da0
  c88d48:	a2 f0 de 1e 01                                  	mov    ds:0x11edef0,al
  c88d4d:	c6 05 f1 de 1e 01 01                            	mov    BYTE PTR ds:0x11edef1,0x1
  c88d54:	c3                                              	ret
  c88d55:	a0 f0 de 1e 01                                  	mov    al,ds:0x11edef0
  c88d5a:	c3                                              	ret
