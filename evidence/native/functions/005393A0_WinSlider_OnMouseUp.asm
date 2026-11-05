# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x005393a0 WinSlider_OnMouseUp
# Complete Ghidra body [005393a0, 00539410] inclusive; 42 instructions, 113 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 005393A0_WinSlider_OnMouseUp.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

005393a0 <.text+0x1383a0>:
  5393a0:	56                                              	push   esi
  5393a1:	8b f1                                           	mov    esi,ecx
  5393a3:	85 f6                                           	test   esi,esi
  5393a5:	57                                              	push   edi
  5393a6:	74 05                                           	je     0x5393ad
  5393a8:	8d 7e 04                                        	lea    edi,[esi+0x4]
  5393ab:	eb 02                                           	jmp    0x5393af
  5393ad:	33 ff                                           	xor    edi,edi
  5393af:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  5393b2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5393b4:	8b 50 60                                        	mov    edx,DWORD PTR [eax+0x60]
  5393b7:	6a 01                                           	push   0x1
  5393b9:	ff d2                                           	call   edx
  5393bb:	3b c7                                           	cmp    eax,edi
  5393bd:	75 12                                           	jne    0x5393d1
  5393bf:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  5393c2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5393c4:	8b 40 68                                        	mov    eax,DWORD PTR [eax+0x68]
  5393c7:	6a 00                                           	push   0x0
  5393c9:	8d 56 04                                        	lea    edx,[esi+0x4]
  5393cc:	52                                              	push   edx
  5393cd:	6a 01                                           	push   0x1
  5393cf:	ff d0                                           	call   eax
  5393d1:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  5393d5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5393d7:	8b 82 a8 00 00 00                               	mov    eax,DWORD PTR [edx+0xa8]
  5393dd:	83 ec 08                                        	sub    esp,0x8
  5393e0:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5393e4:	8b ce                                           	mov    ecx,esi
  5393e6:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  5393ea:	c6 86 65 02 00 00 ff                            	mov    BYTE PTR [esi+0x265],0xff
  5393f1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5393f4:	ff d0                                           	call   eax
  5393f6:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  5393f9:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  5393fc:	88 86 64 02 00 00                               	mov    BYTE PTR [esi+0x264],al
  539402:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
  539408:	ff d0                                           	call   eax
  53940a:	5f                                              	pop    edi
  53940b:	b0 01                                           	mov    al,0x1
  53940d:	5e                                              	pop    esi
  53940e:	c2 10 00                                        	ret    0x10
