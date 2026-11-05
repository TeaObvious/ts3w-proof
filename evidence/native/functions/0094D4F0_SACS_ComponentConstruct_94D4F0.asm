# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x0094d4f0 SACS_ComponentConstruct_94D4F0
# Complete current Ghidra body [0094d4f0, 0094d527] inclusive: 18 body instructions, 56 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 0094D4F0_SACS_ComponentConstruct_94D4F0.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0094d4f0 <.text+0x54c4f0>:
  94d4f0:	56                                              	push   esi
  94d4f1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  94d4f5:	33 c0                                           	xor    eax,eax
  94d4f7:	3b f0                                           	cmp    esi,eax
  94d4f9:	74 2b                                           	je     0x94d526
  94d4fb:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  94d4ff:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  94d502:	c7 06 dc 4e 04 01                               	mov    DWORD PTR [esi],0x1044edc
  94d508:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  94d50b:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  94d50e:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
  94d511:	c7 46 14 bc 4e 04 01                            	mov    DWORD PTR [esi+0x14],0x1044ebc
  94d518:	8b 0d 40 9d 1d 01                               	mov    ecx,DWORD PTR ds:0x11d9d40
  94d51e:	56                                              	push   esi
  94d51f:	e8 0c fa ea ff                                  	call   0x7fcf30
  94d524:	8b c6                                           	mov    eax,esi
  94d526:	5e                                              	pop    esi
  94d527:	c3                                              	ret
