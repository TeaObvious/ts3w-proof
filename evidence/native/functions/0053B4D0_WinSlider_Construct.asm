# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x0053b4d0 WinSlider_Construct
# Complete Ghidra body [0053b4d0, 0053b53f] inclusive; 23 instructions, 112 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 0053B4D0_WinSlider_Construct.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0053b4d0 <.text+0x13a4d0>:
  53b4d0:	56                                              	push   esi
  53b4d1:	8b f1                                           	mov    esi,ecx
  53b4d3:	e8 b8 ab fd ff                                  	call   0x516090
  53b4d8:	c7 86 50 02 00 00 38 00 fc 00                   	mov    DWORD PTR [esi+0x250],0xfc0038
  53b4e2:	33 c0                                           	xor    eax,eax
  53b4e4:	89 86 54 02 00 00                               	mov    DWORD PTR [esi+0x254],eax
  53b4ea:	89 86 58 02 00 00                               	mov    DWORD PTR [esi+0x258],eax
  53b4f0:	b0 ff                                           	mov    al,0xff
  53b4f2:	6a 01                                           	push   0x1
  53b4f4:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  53b4f7:	6a 08                                           	push   0x8
  53b4f9:	c7 06 88 ff fb 00                               	mov    DWORD PTR [esi],0xfbff88
  53b4ff:	c7 01 60 fe fb 00                               	mov    DWORD PTR [ecx],0xfbfe60
  53b505:	c7 86 50 02 00 00 20 fe fb 00                   	mov    DWORD PTR [esi+0x250],0xfbfe20
  53b50f:	c7 86 5c 02 00 00 00 01 00 00                   	mov    DWORD PTR [esi+0x25c],0x100
  53b519:	c7 86 60 02 00 00 02 00 00 00                   	mov    DWORD PTR [esi+0x260],0x2
  53b523:	88 86 64 02 00 00                               	mov    BYTE PTR [esi+0x264],al
  53b529:	88 86 65 02 00 00                               	mov    BYTE PTR [esi+0x265],al
  53b52f:	c6 86 66 02 00 00 01                            	mov    BYTE PTR [esi+0x266],0x1
  53b536:	ff 15 d4 fe fb 00                               	call   DWORD PTR ds:0xfbfed4
  53b53c:	8b c6                                           	mov    eax,esi
  53b53e:	5e                                              	pop    esi
  53b53f:	c3                                              	ret
