# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004f6370 (Variant_ConstructUInt32)
Full Ghidra function-body envelope: 0x004f6370..0x004f6393 (exclusive end)
Ghidra body ranges: [[004f6370, 004f6392]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.

Disassembly of section .text:

004f6370 <.text+0xf5370>:
  4f6370:	56                                              	push   esi
  4f6371:	8b f1                                           	mov    esi,ecx
  4f6373:	33 c0                                           	xor    eax,eax
  4f6375:	66 89 46 08                                     	mov    WORD PTR [esi+0x8],ax
  4f6379:	66 89 46 0a                                     	mov    WORD PTR [esi+0xa],ax
  4f637d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  4f6381:	50                                              	push   eax
  4f6382:	c7 06 f4 a6 fb 00                               	mov    DWORD PTR [esi],0xfba6f4
  4f6388:	e8 93 fb ff ff                                  	call   0x4f5f20
  4f638d:	8b c6                                           	mov    eax,esi
  4f638f:	5e                                              	pop    esi
  4f6390:	c2 04 00                                        	ret    0x4
