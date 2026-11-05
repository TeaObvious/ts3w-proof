# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00505da0 UiRect_ContainsPointHalfOpen
# Complete Ghidra body [00505da0, 00505dd7] inclusive; 16 instructions, 56 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 00505DA0_UiRect_ContainsPointHalfOpen.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00505da0 <.text+0x104da0>:
  505da0:	f3 0f 10 4c 24 04                               	movss  xmm1,DWORD PTR [esp+0x4]
  505da6:	0f 2f 09                                        	comiss xmm1,DWORD PTR [ecx]
  505da9:	72 28                                           	jb     0x505dd3
  505dab:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  505db1:	0f 2f 41 04                                     	comiss xmm0,DWORD PTR [ecx+0x4]
  505db5:	72 1c                                           	jb     0x505dd3
  505db7:	f3 0f 10 51 08                                  	movss  xmm2,DWORD PTR [ecx+0x8]
  505dbc:	0f 2f d1                                        	comiss xmm2,xmm1
  505dbf:	76 12                                           	jbe    0x505dd3
  505dc1:	f3 0f 10 49 0c                                  	movss  xmm1,DWORD PTR [ecx+0xc]
  505dc6:	0f 2f c8                                        	comiss xmm1,xmm0
  505dc9:	76 08                                           	jbe    0x505dd3
  505dcb:	b8 01 00 00 00                                  	mov    eax,0x1
  505dd0:	c2 08 00                                        	ret    0x8
  505dd3:	33 c0                                           	xor    eax,eax
  505dd5:	c2 08 00                                        	ret    0x8
