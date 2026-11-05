# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00538ea0 WinScrollbar_Construct
# Complete Ghidra body [00538ea0, 00538f90] inclusive; 55 instructions, 241 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 00538EA0_WinScrollbar_Construct.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00538ea0 <.text+0x137ea0>:
  538ea0:	53                                              	push   ebx
  538ea1:	55                                              	push   ebp
  538ea2:	56                                              	push   esi
  538ea3:	57                                              	push   edi
  538ea4:	8b f1                                           	mov    esi,ecx
  538ea6:	e8 e5 d1 fd ff                                  	call   0x516090
  538eab:	0f 57 c0                                        	xorps  xmm0,xmm0
  538eae:	c7 86 50 02 00 00 58 07 fc 00                   	mov    DWORD PTR [esi+0x250],0xfc0758
  538eb8:	33 db                                           	xor    ebx,ebx
  538eba:	b8 01 00 00 00                                  	mov    eax,0x1
  538ebf:	89 86 70 02 00 00                               	mov    DWORD PTR [esi+0x270],eax
  538ec5:	89 86 74 02 00 00                               	mov    DWORD PTR [esi+0x274],eax
  538ecb:	b0 ff                                           	mov    al,0xff
  538ecd:	53                                              	push   ebx
  538ece:	8d ae 98 02 00 00                               	lea    ebp,[esi+0x298]
  538ed4:	8d 7e 04                                        	lea    edi,[esi+0x4]
  538ed7:	53                                              	push   ebx
  538ed8:	8b cd                                           	mov    ecx,ebp
  538eda:	c7 06 c8 fb fb 00                               	mov    DWORD PTR [esi],0xfbfbc8
  538ee0:	c7 07 a0 fa fb 00                               	mov    DWORD PTR [edi],0xfbfaa0
  538ee6:	c7 86 50 02 00 00 38 fa fb 00                   	mov    DWORD PTR [esi+0x250],0xfbfa38
  538ef0:	89 9e 54 02 00 00                               	mov    DWORD PTR [esi+0x254],ebx
  538ef6:	89 9e 58 02 00 00                               	mov    DWORD PTR [esi+0x258],ebx
  538efc:	89 9e 5c 02 00 00                               	mov    DWORD PTR [esi+0x25c],ebx
  538f02:	89 9e 60 02 00 00                               	mov    DWORD PTR [esi+0x260],ebx
  538f08:	89 9e 64 02 00 00                               	mov    DWORD PTR [esi+0x264],ebx
  538f0e:	c7 86 68 02 00 00 00 01 00 00                   	mov    DWORD PTR [esi+0x268],0x100
  538f18:	c7 86 6c 02 00 00 10 00 00 00                   	mov    DWORD PTR [esi+0x26c],0x10
  538f22:	c7 86 78 02 00 00 0f 00 00 00                   	mov    DWORD PTR [esi+0x278],0xf
  538f2c:	c7 86 7c 02 00 00 08 00 00 00                   	mov    DWORD PTR [esi+0x27c],0x8
  538f36:	c7 86 80 02 00 00 02 00 00 00                   	mov    DWORD PTR [esi+0x280],0x2
  538f40:	88 86 84 02 00 00                               	mov    BYTE PTR [esi+0x284],al
  538f46:	88 86 85 02 00 00                               	mov    BYTE PTR [esi+0x285],al
  538f4c:	f3 0f 11 86 88 02 00 00                         	movss  DWORD PTR [esi+0x288],xmm0
  538f54:	88 9e 8c 02 00 00                               	mov    BYTE PTR [esi+0x28c],bl
  538f5a:	89 9e 90 02 00 00                               	mov    DWORD PTR [esi+0x290],ebx
  538f60:	e8 4b aa fb ff                                  	call   0x4f39b0
  538f65:	6a 04                                           	push   0x4
  538f67:	8b cd                                           	mov    ecx,ebp
  538f69:	e8 72 a5 fb ff                                  	call   0x4f34e0
  538f6e:	38 9e 8c 02 00 00                               	cmp    BYTE PTR [esi+0x28c],bl
  538f74:	75 14                                           	jne    0x538f8a
  538f76:	8b 07                                           	mov    eax,DWORD PTR [edi]
  538f78:	8b 50 74                                        	mov    edx,DWORD PTR [eax+0x74]
  538f7b:	6a 01                                           	push   0x1
  538f7d:	6a 08                                           	push   0x8
  538f7f:	8b cf                                           	mov    ecx,edi
  538f81:	c6 86 8c 02 00 00 01                            	mov    BYTE PTR [esi+0x28c],0x1
  538f88:	ff d2                                           	call   edx
  538f8a:	5f                                              	pop    edi
  538f8b:	8b c6                                           	mov    eax,esi
  538f8d:	5e                                              	pop    esi
  538f8e:	5d                                              	pop    ebp
  538f8f:	5b                                              	pop    ebx
  538f90:	c3                                              	ret
