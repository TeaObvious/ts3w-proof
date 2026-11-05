# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00b5eaa0 FUN_00b5eaa0
# Complete actual Ghidra owned ranges: 00b5eaa0..00b5eb87; 57 instructions/232 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00B5EAA0_FUN_00b5eaa0.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b5eaa0 <.text+0x75daa0>:
  b5eaa0:	56                                              	push   esi
  b5eaa1:	8b f1                                           	mov    esi,ecx
  b5eaa3:	68 08 94 ff 00                                  	push   0xff9408
  b5eaa8:	8d 86 50 02 00 00                               	lea    eax,[esi+0x250]
  b5eaae:	68 28 f0 06 01                                  	push   0x106f028
  b5eab3:	50                                              	push   eax
  b5eab4:	c6 86 48 02 00 00 00                            	mov    BYTE PTR [esi+0x248],0x0
  b5eabb:	e8 40 a4 12 00                                  	call   0xc88f00
  b5eac0:	68 08 94 ff 00                                  	push   0xff9408
  b5eac5:	8d 8e 68 02 00 00                               	lea    ecx,[esi+0x268]
  b5eacb:	68 18 f0 06 01                                  	push   0x106f018
  b5ead0:	51                                              	push   ecx
  b5ead1:	e8 2a a4 12 00                                  	call   0xc88f00
  b5ead6:	68 08 94 ff 00                                  	push   0xff9408
  b5eadb:	8d 96 80 02 00 00                               	lea    edx,[esi+0x280]
  b5eae1:	68 08 f0 06 01                                  	push   0x106f008
  b5eae6:	52                                              	push   edx
  b5eae7:	e8 14 a4 12 00                                  	call   0xc88f00
  b5eaec:	68 f0 ef 06 01                                  	push   0x106eff0
  b5eaf1:	8d 86 98 02 00 00                               	lea    eax,[esi+0x298]
  b5eaf7:	68 dc ef 06 01                                  	push   0x106efdc
  b5eafc:	50                                              	push   eax
  b5eafd:	e8 fe a3 12 00                                  	call   0xc88f00
  b5eb02:	8d 8e 28 03 00 00                               	lea    ecx,[esi+0x328]
  b5eb08:	51                                              	push   ecx
  b5eb09:	68 98 ef 06 01                                  	push   0x106ef98
  b5eb0e:	8d 96 b0 02 00 00                               	lea    edx,[esi+0x2b0]
  b5eb14:	68 88 ef 06 01                                  	push   0x106ef88
  b5eb19:	52                                              	push   edx
  b5eb1a:	e8 21 a0 12 00                                  	call   0xc88b40
  b5eb1f:	83 c4 40                                        	add    esp,0x40
  b5eb22:	68 38 ef 06 01                                  	push   0x106ef38
  b5eb27:	8d 86 c8 02 00 00                               	lea    eax,[esi+0x2c8]
  b5eb2d:	68 24 ef 06 01                                  	push   0x106ef24
  b5eb32:	50                                              	push   eax
  b5eb33:	e8 c8 a3 12 00                                  	call   0xc88f00
  b5eb38:	68 04 ef 06 01                                  	push   0x106ef04
  b5eb3d:	8d 8e e0 02 00 00                               	lea    ecx,[esi+0x2e0]
  b5eb43:	68 f8 ee 06 01                                  	push   0x106eef8
  b5eb48:	51                                              	push   ecx
  b5eb49:	e8 b2 a3 12 00                                  	call   0xc88f00
  b5eb4e:	68 d8 ee 06 01                                  	push   0x106eed8
  b5eb53:	8d 96 f8 02 00 00                               	lea    edx,[esi+0x2f8]
  b5eb59:	68 c8 ee 06 01                                  	push   0x106eec8
  b5eb5e:	52                                              	push   edx
  b5eb5f:	e8 9c a3 12 00                                  	call   0xc88f00
  b5eb64:	68 a4 ee 06 01                                  	push   0x106eea4
  b5eb69:	8d 86 10 03 00 00                               	lea    eax,[esi+0x310]
  b5eb6f:	68 90 ee 06 01                                  	push   0x106ee90
  b5eb74:	50                                              	push   eax
  b5eb75:	e8 86 a3 12 00                                  	call   0xc88f00
  b5eb7a:	83 c4 30                                        	add    esp,0x30
  b5eb7d:	6a 00                                           	push   0x0
  b5eb7f:	8b ce                                           	mov    ecx,esi
  b5eb81:	e8 ea fd ff ff                                  	call   0xb5e970
  b5eb86:	5e                                              	pop    esi
  b5eb87:	c3                                              	ret
