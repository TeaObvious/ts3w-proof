# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00c88cd0 CachedGlobalMask8000_Query
# Complete actual Ghidra owned ranges: 00c88cd0..00c88cfa; 10 instructions/43 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00C88CD0_CachedGlobalMask8000_Query.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c88cd0 <.text+0x887cd0>:
  c88cd0:	80 3d ed de 1e 01 00                            	cmp    BYTE PTR ds:0x11edeed,0x0
  c88cd7:	75 1c                                           	jne    0xc88cf5
  c88cd9:	68 00 80 00 00                                  	push   0x8000
  c88cde:	b9 e0 ed 1c 01                                  	mov    ecx,0x11cede0
  c88ce3:	e8 b8 b0 89 ff                                  	call   0x523da0
  c88ce8:	a2 ec de 1e 01                                  	mov    ds:0x11edeec,al
  c88ced:	c6 05 ed de 1e 01 01                            	mov    BYTE PTR ds:0x11edeed,0x1
  c88cf4:	c3                                              	ret
  c88cf5:	a0 ec de 1e 01                                  	mov    al,ds:0x11edeec
  c88cfa:	c3                                              	ret
