# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00a48830 CeilingManager_BindOwnerAndRegisterRequest
# Complete Ghidra body [00a48830, 00a48874] inclusive: 22 body instructions, 69 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 69 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00A48830_CeilingManager_BindOwnerAndRegisterRequest.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a48830 <.text+0x647830>:
  a48830:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  a48834:	56                                              	push   esi
  a48835:	8b f1                                           	mov    esi,ecx
  a48837:	89 46 18                                        	mov    DWORD PTR [esi+0x18],eax
  a4883a:	e8 61 0b d2 ff                                  	call   0x7693a0
  a4883f:	85 c0                                           	test   eax,eax
  a48841:	74 2e                                           	je     0xa48871
  a48843:	6a 00                                           	push   0x0
  a48845:	6a 00                                           	push   0x0
  a48847:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  a4884a:	89 76 08                                        	mov    DWORD PTR [esi+0x8],esi
  a4884d:	c7 46 0c 80 06 06 01                            	mov    DWORD PTR [esi+0xc],0x1060680
  a48854:	c7 46 10 01 00 00 00                            	mov    DWORD PTR [esi+0x10],0x1
  a4885b:	c7 46 14 00 00 00 00                            	mov    DWORD PTR [esi+0x14],0x0
  a48862:	8b 10                                           	mov    edx,DWORD PTR [eax]
  a48864:	68 af b4 87 04                                  	push   0x487b4af
  a48869:	8b c8                                           	mov    ecx,eax
  a4886b:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  a4886e:	56                                              	push   esi
  a4886f:	ff d0                                           	call   eax
  a48871:	5e                                              	pop    esi
  a48872:	c2 04 00                                        	ret    0x4
