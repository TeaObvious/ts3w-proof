# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00ae3b10 LotRenderer_UpdatePartManagers
# Complete Ghidra body [00ae3b10, 00ae3bdb] inclusive: 58 body instructions, 204 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 204 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00AE3B10_LotRenderer_UpdatePartManagers.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ae3b10 <.text+0x6e2b10>:
  ae3b10:	56                                              	push   esi
  ae3b11:	8b f1                                           	mov    esi,ecx
  ae3b13:	8b 8e 30 02 00 00                               	mov    ecx,DWORD PTR [esi+0x230]
  ae3b19:	85 c9                                           	test   ecx,ecx
  ae3b1b:	74 05                                           	je     0xae3b22
  ae3b1d:	e8 0e de fb ff                                  	call   0xaa1930
  ae3b22:	8b 8e 34 02 00 00                               	mov    ecx,DWORD PTR [esi+0x234]
  ae3b28:	85 c9                                           	test   ecx,ecx
  ae3b2a:	74 0d                                           	je     0xae3b39
  ae3b2c:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  ae3b30:	51                                              	push   ecx
  ae3b31:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ae3b34:	e8 47 7e 01 00                                  	call   0xafb980
  ae3b39:	8b 8e 38 02 00 00                               	mov    ecx,DWORD PTR [esi+0x238]
  ae3b3f:	85 c9                                           	test   ecx,ecx
  ae3b41:	74 05                                           	je     0xae3b48
  ae3b43:	e8 68 5f 17 00                                  	call   0xc59ab0
  ae3b48:	8b 8e 48 02 00 00                               	mov    ecx,DWORD PTR [esi+0x248]
  ae3b4e:	85 c9                                           	test   ecx,ecx
  ae3b50:	74 05                                           	je     0xae3b57
  ae3b52:	e8 39 66 f8 ff                                  	call   0xa6a190
  ae3b57:	8b 8e 58 02 00 00                               	mov    ecx,DWORD PTR [esi+0x258]
  ae3b5d:	85 c9                                           	test   ecx,ecx
  ae3b5f:	74 0d                                           	je     0xae3b6e
  ae3b61:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  ae3b65:	51                                              	push   ecx
  ae3b66:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ae3b69:	e8 42 d3 f9 ff                                  	call   0xa80eb0
  ae3b6e:	8b 8e 3c 02 00 00                               	mov    ecx,DWORD PTR [esi+0x23c]
  ae3b74:	85 c9                                           	test   ecx,ecx
  ae3b76:	74 17                                           	je     0xae3b8f
  ae3b78:	8d 86 9c 02 00 00                               	lea    eax,[esi+0x29c]
  ae3b7e:	50                                              	push   eax
  ae3b7f:	e8 9c 6c ff ff                                  	call   0xada820
  ae3b84:	8b 8e 3c 02 00 00                               	mov    ecx,DWORD PTR [esi+0x23c]
  ae3b8a:	e8 01 6e ff ff                                  	call   0xada990
  ae3b8f:	8b 8e 4c 02 00 00                               	mov    ecx,DWORD PTR [esi+0x24c]
  ae3b95:	85 c9                                           	test   ecx,ecx
  ae3b97:	74 05                                           	je     0xae3b9e
  ae3b99:	e8 72 98 08 00                                  	call   0xb6d410
  ae3b9e:	8b 8e 50 02 00 00                               	mov    ecx,DWORD PTR [esi+0x250]
  ae3ba4:	85 c9                                           	test   ecx,ecx
  ae3ba6:	74 05                                           	je     0xae3bad
  ae3ba8:	e8 f3 a1 f6 ff                                  	call   0xa4dda0
  ae3bad:	8b 8e 60 02 00 00                               	mov    ecx,DWORD PTR [esi+0x260]
  ae3bb3:	85 c9                                           	test   ecx,ecx
  ae3bb5:	74 05                                           	je     0xae3bbc
  ae3bb7:	e8 04 05 9d ff                                  	call   0x4b40c0
  ae3bbc:	8b ce                                           	mov    ecx,esi
  ae3bbe:	e8 1d f0 ff ff                                  	call   0xae2be0
  ae3bc3:	8b 8e 98 01 00 00                               	mov    ecx,DWORD PTR [esi+0x198]
  ae3bc9:	85 c9                                           	test   ecx,ecx
  ae3bcb:	74 0b                                           	je     0xae3bd8
  ae3bcd:	80 7e 1e 00                                     	cmp    BYTE PTR [esi+0x1e],0x0
  ae3bd1:	74 05                                           	je     0xae3bd8
  ae3bd3:	e8 c8 1c 28 00                                  	call   0xd658a0
  ae3bd8:	5e                                              	pop    esi
  ae3bd9:	c2 04 00                                        	ret    0x4
