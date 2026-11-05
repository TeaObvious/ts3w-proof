# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00a4e0c0 CeilingRenderManager_Construct
# Complete Ghidra body [00a4e0c0, 00a4e130] inclusive: 36 body instructions, 113 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 113 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00A4E0C0_CeilingRenderManager_Construct.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a4e0c0 <.text+0x64d0c0>:
  a4e0c0:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  a4e0c8:	56                                              	push   esi
  a4e0c9:	8b f1                                           	mov    esi,ecx
  a4e0cb:	c7 06 08 0c 06 01                               	mov    DWORD PTR [esi],0x1060c08
  a4e0d1:	57                                              	push   edi
  a4e0d2:	33 ff                                           	xor    edi,edi
  a4e0d4:	89 7e 04                                        	mov    DWORD PTR [esi+0x4],edi
  a4e0d7:	89 7e 08                                        	mov    DWORD PTR [esi+0x8],edi
  a4e0da:	89 7e 0c                                        	mov    DWORD PTR [esi+0xc],edi
  a4e0dd:	89 7e 10                                        	mov    DWORD PTR [esi+0x10],edi
  a4e0e0:	89 7e 14                                        	mov    DWORD PTR [esi+0x14],edi
  a4e0e3:	89 7e 18                                        	mov    DWORD PTR [esi+0x18],edi
  a4e0e6:	89 7e 1c                                        	mov    DWORD PTR [esi+0x1c],edi
  a4e0e9:	89 7e 20                                        	mov    DWORD PTR [esi+0x20],edi
  a4e0ec:	89 7e 24                                        	mov    DWORD PTR [esi+0x24],edi
  a4e0ef:	57                                              	push   edi
  a4e0f0:	c7 46 28 d8 0b 06 01                            	mov    DWORD PTR [esi+0x28],0x1060bd8
  a4e0f7:	6a 05                                           	push   0x5
  a4e0f9:	8d 4e 30                                        	lea    ecx,[esi+0x30]
  a4e0fc:	f3 0f 11 46 2c                                  	movss  DWORD PTR [esi+0x2c],xmm0
  a4e101:	e8 aa 58 aa ff                                  	call   0x4f39b0
  a4e106:	89 7e 48                                        	mov    DWORD PTR [esi+0x48],edi
  a4e109:	89 7e 4c                                        	mov    DWORD PTR [esi+0x4c],edi
  a4e10c:	89 7e 50                                        	mov    DWORD PTR [esi+0x50],edi
  a4e10f:	89 7e 54                                        	mov    DWORD PTR [esi+0x54],edi
  a4e112:	89 7e 58                                        	mov    DWORD PTR [esi+0x58],edi
  a4e115:	89 7e 5c                                        	mov    DWORD PTR [esi+0x5c],edi
  a4e118:	c6 46 60 01                                     	mov    BYTE PTR [esi+0x60],0x1
  a4e11c:	89 7e 64                                        	mov    DWORD PTR [esi+0x64],edi
  a4e11f:	89 7e 68                                        	mov    DWORD PTR [esi+0x68],edi
  a4e122:	89 7e 6c                                        	mov    DWORD PTR [esi+0x6c],edi
  a4e125:	5f                                              	pop    edi
  a4e126:	c7 46 70 a0 0b 06 01                            	mov    DWORD PTR [esi+0x70],0x1060ba0
  a4e12d:	8b c6                                           	mov    eax,esi
  a4e12f:	5e                                              	pop    esi
  a4e130:	c3                                              	ret
