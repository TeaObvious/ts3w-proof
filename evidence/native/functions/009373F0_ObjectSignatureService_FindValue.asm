# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original PC1.67 TS3W.exe function envelope; paired actual annotated Ghidra C: 009373F0_ObjectSignatureService_FindValue.c.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

009373f0 <.text+0x5363f0>:
  9373f0:	e8 6b 39 00 00                                  	call   0x93ad60
  9373f5:	85 c0                                           	test   eax,eax
  9373f7:	74 19                                           	je     0x937412
  9373f9:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  9373fd:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  937401:	51                                              	push   ecx
  937402:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  937406:	52                                              	push   edx
  937407:	51                                              	push   ecx
  937408:	8b c8                                           	mov    ecx,eax
  93740a:	e8 61 3b 00 00                                  	call   0x93af70
  93740f:	c2 0c 00                                        	ret    0xc
  937412:	33 c0                                           	xor    eax,eax
  937414:	c2 0c 00                                        	ret    0xc
