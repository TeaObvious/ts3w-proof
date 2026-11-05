# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x0051f970 WinDialog_OnMouseUp
# Complete Ghidra body [0051f970, 0051f9bf] inclusive; 32 instructions, 80 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 0051F970_WinDialog_OnMouseUp.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0051f970 <.text+0x11e970>:
  51f970:	56                                              	push   esi
  51f971:	8b f1                                           	mov    esi,ecx
  51f973:	85 f6                                           	test   esi,esi
  51f975:	57                                              	push   edi
  51f976:	74 05                                           	je     0x51f97d
  51f978:	8d 7e 04                                        	lea    edi,[esi+0x4]
  51f97b:	eb 02                                           	jmp    0x51f97f
  51f97d:	33 ff                                           	xor    edi,edi
  51f97f:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  51f982:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  51f984:	8b 50 60                                        	mov    edx,DWORD PTR [eax+0x60]
  51f987:	6a 01                                           	push   0x1
  51f989:	ff d2                                           	call   edx
  51f98b:	3b c7                                           	cmp    eax,edi
  51f98d:	75 12                                           	jne    0x51f9a1
  51f98f:	8b 4e 30                                        	mov    ecx,DWORD PTR [esi+0x30]
  51f992:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  51f994:	8b 40 68                                        	mov    eax,DWORD PTR [eax+0x68]
  51f997:	6a 00                                           	push   0x0
  51f999:	8d 56 04                                        	lea    edx,[esi+0x4]
  51f99c:	52                                              	push   edx
  51f99d:	6a 01                                           	push   0x1
  51f99f:	ff d0                                           	call   eax
  51f9a1:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  51f9a4:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
  51f9aa:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  51f9ad:	c7 86 5c 02 00 00 ff ff ff ff                   	mov    DWORD PTR [esi+0x25c],0xffffffff
  51f9b7:	ff d0                                           	call   eax
  51f9b9:	5f                                              	pop    edi
  51f9ba:	b0 01                                           	mov    al,0x1
  51f9bc:	5e                                              	pop    esi
  51f9bd:	c2 10 00                                        	ret    0x10
