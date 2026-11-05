# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00523da0 FlagWord_TestAnyMask
# Complete actual Ghidra owned ranges: 00523da0..00523daf; 6 instructions/16 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00523DA0_FlagWord_TestAnyMask.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00523da0 <.text+0x122da0>:
  523da0:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  523da3:	23 44 24 04                                     	and    eax,DWORD PTR [esp+0x4]
  523da7:	f7 d8                                           	neg    eax
  523da9:	1b c0                                           	sbb    eax,eax
  523dab:	f7 d8                                           	neg    eax
  523dad:	c2 04 00                                        	ret    0x4
