# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00c09a70 FUN_00c09a70
# Complete actual Ghidra owned ranges: 00c09a70..00c09b4e; 54 instructions/223 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00C09A70_FUN_00c09a70.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c09a70 <.text+0x808a70>:
  c09a70:	56                                              	push   esi
  c09a71:	8b f1                                           	mov    esi,ecx
  c09a73:	68 08 94 ff 00                                  	push   0xff9408
  c09a78:	8d 86 88 00 00 00                               	lea    eax,[esi+0x88]
  c09a7e:	68 28 f0 06 01                                  	push   0x106f028
  c09a83:	50                                              	push   eax
  c09a84:	c6 86 80 00 00 00 00                            	mov    BYTE PTR [esi+0x80],0x0
  c09a8b:	e8 70 f4 07 00                                  	call   0xc88f00
  c09a90:	68 08 94 ff 00                                  	push   0xff9408
  c09a95:	8d 8e a0 00 00 00                               	lea    ecx,[esi+0xa0]
  c09a9b:	68 18 f0 06 01                                  	push   0x106f018
  c09aa0:	51                                              	push   ecx
  c09aa1:	e8 5a f4 07 00                                  	call   0xc88f00
  c09aa6:	68 08 94 ff 00                                  	push   0xff9408
  c09aab:	8d 96 b8 00 00 00                               	lea    edx,[esi+0xb8]
  c09ab1:	68 08 f0 06 01                                  	push   0x106f008
  c09ab6:	52                                              	push   edx
  c09ab7:	e8 44 f4 07 00                                  	call   0xc88f00
  c09abc:	68 f0 ef 06 01                                  	push   0x106eff0
  c09ac1:	8d 86 d0 00 00 00                               	lea    eax,[esi+0xd0]
  c09ac7:	68 dc ef 06 01                                  	push   0x106efdc
  c09acc:	50                                              	push   eax
  c09acd:	e8 2e f4 07 00                                  	call   0xc88f00
  c09ad2:	8d 8e 60 01 00 00                               	lea    ecx,[esi+0x160]
  c09ad8:	51                                              	push   ecx
  c09ad9:	68 98 ef 06 01                                  	push   0x106ef98
  c09ade:	8d 96 e8 00 00 00                               	lea    edx,[esi+0xe8]
  c09ae4:	68 88 ef 06 01                                  	push   0x106ef88
  c09ae9:	52                                              	push   edx
  c09aea:	e8 51 f0 07 00                                  	call   0xc88b40
  c09aef:	83 c4 40                                        	add    esp,0x40
  c09af2:	68 38 ef 06 01                                  	push   0x106ef38
  c09af7:	8d 86 00 01 00 00                               	lea    eax,[esi+0x100]
  c09afd:	68 24 ef 06 01                                  	push   0x106ef24
  c09b02:	50                                              	push   eax
  c09b03:	e8 f8 f3 07 00                                  	call   0xc88f00
  c09b08:	68 04 ef 06 01                                  	push   0x106ef04
  c09b0d:	8d 8e 18 01 00 00                               	lea    ecx,[esi+0x118]
  c09b13:	68 f8 ee 06 01                                  	push   0x106eef8
  c09b18:	51                                              	push   ecx
  c09b19:	e8 e2 f3 07 00                                  	call   0xc88f00
  c09b1e:	68 d8 ee 06 01                                  	push   0x106eed8
  c09b23:	8d 96 30 01 00 00                               	lea    edx,[esi+0x130]
  c09b29:	68 c8 ee 06 01                                  	push   0x106eec8
  c09b2e:	52                                              	push   edx
  c09b2f:	e8 cc f3 07 00                                  	call   0xc88f00
  c09b34:	68 a4 ee 06 01                                  	push   0x106eea4
  c09b39:	68 90 ee 06 01                                  	push   0x106ee90
  c09b3e:	81 c6 48 01 00 00                               	add    esi,0x148
  c09b44:	56                                              	push   esi
  c09b45:	e8 b6 f3 07 00                                  	call   0xc88f00
  c09b4a:	83 c4 30                                        	add    esp,0x30
  c09b4d:	5e                                              	pop    esi
  c09b4e:	c3                                              	ret
