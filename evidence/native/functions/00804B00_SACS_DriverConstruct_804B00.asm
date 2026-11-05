# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00804b00 SACS_DriverConstruct_804B00
# Complete current Ghidra body [00804b00, 00804bf3] inclusive: 57 body instructions, 244 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 00804B00_SACS_DriverConstruct_804B00.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00804b00 <.text+0x403b00>:
  804b00:	53                                              	push   ebx
  804b01:	56                                              	push   esi
  804b02:	8b f1                                           	mov    esi,ecx
  804b04:	c7 06 a4 bb 02 01                               	mov    DWORD PTR [esi],0x102bba4
  804b0a:	33 c0                                           	xor    eax,eax
  804b0c:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  804b0f:	87 01                                           	xchg   DWORD PTR [ecx],eax
  804b11:	c7 46 08 94 b3 03 01                            	mov    DWORD PTR [esi+0x8],0x103b394
  804b18:	c7 06 48 11 02 01                               	mov    DWORD PTR [esi],0x1021148
  804b1e:	c7 46 08 2c 11 02 01                            	mov    DWORD PTR [esi+0x8],0x102112c
  804b25:	33 db                                           	xor    ebx,ebx
  804b27:	89 5e 0c                                        	mov    DWORD PTR [esi+0xc],ebx
  804b2a:	89 5e 10                                        	mov    DWORD PTR [esi+0x10],ebx
  804b2d:	89 5e 14                                        	mov    DWORD PTR [esi+0x14],ebx
  804b30:	89 5e 18                                        	mov    DWORD PTR [esi+0x18],ebx
  804b33:	c7 46 1c 08 11 02 01                            	mov    DWORD PTR [esi+0x1c],0x1021108
  804b3a:	89 5e 20                                        	mov    DWORD PTR [esi+0x20],ebx
  804b3d:	89 5e 24                                        	mov    DWORD PTR [esi+0x24],ebx
  804b40:	89 5e 28                                        	mov    DWORD PTR [esi+0x28],ebx
  804b43:	6a ff                                           	push   0xffffffff
  804b45:	8d 4e 34                                        	lea    ecx,[esi+0x34]
  804b48:	c7 46 2c e4 10 02 01                            	mov    DWORD PTR [esi+0x2c],0x10210e4
  804b4f:	e8 9c 5e cf ff                                  	call   0x4fa9f0
  804b54:	89 5e 30                                        	mov    DWORD PTR [esi+0x30],ebx
  804b57:	56                                              	push   esi
  804b58:	8d 4e 44                                        	lea    ecx,[esi+0x44]
  804b5b:	c7 46 38 fe ff ff ff                            	mov    DWORD PTR [esi+0x38],0xfffffffe
  804b62:	88 5e 3c                                        	mov    BYTE PTR [esi+0x3c],bl
  804b65:	89 5e 40                                        	mov    DWORD PTR [esi+0x40],ebx
  804b68:	e8 23 0b ff ff                                  	call   0x7f5690
  804b6d:	8a 54 24 10                                     	mov    dl,BYTE PTR [esp+0x10]
  804b71:	89 9e 1c 01 00 00                               	mov    DWORD PTR [esi+0x11c],ebx
  804b77:	89 9e 20 01 00 00                               	mov    DWORD PTR [esi+0x120],ebx
  804b7d:	89 9e 24 01 00 00                               	mov    DWORD PTR [esi+0x124],ebx
  804b83:	c7 86 28 01 00 00 a0 10 02 01                   	mov    DWORD PTR [esi+0x128],0x10210a0
  804b8d:	89 9e 2c 01 00 00                               	mov    DWORD PTR [esi+0x12c],ebx
  804b93:	89 9e 30 01 00 00                               	mov    DWORD PTR [esi+0x130],ebx
  804b99:	89 9e 34 01 00 00                               	mov    DWORD PTR [esi+0x134],ebx
  804b9f:	89 9e 38 01 00 00                               	mov    DWORD PTR [esi+0x138],ebx
  804ba5:	8d 8e 30 01 00 00                               	lea    ecx,[esi+0x130]
  804bab:	c7 41 0c 74 10 02 01                            	mov    DWORD PTR [ecx+0xc],0x1021074
  804bb2:	6a 0c                                           	push   0xc
  804bb4:	c7 86 40 01 00 00 ff ff ff ff                   	mov    DWORD PTR [esi+0x140],0xffffffff
  804bbe:	88 96 44 01 00 00                               	mov    BYTE PTR [esi+0x144],dl
  804bc4:	88 9e 45 01 00 00                               	mov    BYTE PTR [esi+0x145],bl
  804bca:	88 9e 46 01 00 00                               	mov    BYTE PTR [esi+0x146],bl
  804bd0:	88 9e 47 01 00 00                               	mov    BYTE PTR [esi+0x147],bl
  804bd6:	88 9e 48 01 00 00                               	mov    BYTE PTR [esi+0x148],bl
  804bdc:	e8 9f 07 57 00                                  	call   0xd75380
  804be1:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  804be5:	50                                              	push   eax
  804be6:	8b ce                                           	mov    ecx,esi
  804be8:	e8 43 f7 ff ff                                  	call   0x804330
  804bed:	8b c6                                           	mov    eax,esi
  804bef:	5e                                              	pop    esi
  804bf0:	5b                                              	pop    ebx
  804bf1:	c2 08 00                                        	ret    0x8
