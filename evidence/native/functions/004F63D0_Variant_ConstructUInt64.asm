# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004f63d0 (Variant_ConstructUInt64)
Full Ghidra function-body envelope: 0x004f63d0..0x004f63f3 (exclusive end)
Ghidra body ranges: [[004f63d0, 004f63f2]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.

Disassembly of section .text:

004f63d0 <.text+0xf53d0>:
  4f63d0:	56                                              	push   esi
  4f63d1:	8b f1                                           	mov    esi,ecx
  4f63d3:	33 c0                                           	xor    eax,eax
  4f63d5:	66 89 46 08                                     	mov    WORD PTR [esi+0x8],ax
  4f63d9:	66 89 46 0a                                     	mov    WORD PTR [esi+0xa],ax
  4f63dd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  4f63e1:	50                                              	push   eax
  4f63e2:	c7 06 f4 a6 fb 00                               	mov    DWORD PTR [esi],0xfba6f4
  4f63e8:	e8 33 fc ff ff                                  	call   0x4f6020
  4f63ed:	8b c6                                           	mov    eax,esi
  4f63ef:	5e                                              	pop    esi
  4f63f0:	c2 04 00                                        	ret    0x4
