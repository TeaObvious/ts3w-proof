# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x007d78b0 ResourceKey_GroupFromProductWord
# Complete actual Ghidra owned ranges: 007d78b0..007d78bc; 4 instructions/13 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 007D78B0_ResourceKey_GroupFromProductWord.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d78b0 <.text+0x3d68b0>:
  7d78b0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7d78b4:	c1 e0 1b                                        	shl    eax,0x1b
  7d78b7:	2d 00 00 00 08                                  	sub    eax,0x8000000
  7d78bc:	c3                                              	ret
