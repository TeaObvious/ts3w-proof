# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004dd890 (Stream_ReadByte)
Full Ghidra function-body envelope: 0x004dd890..0x004dd8ad (exclusive end)
Ghidra body ranges: [[004dd890, 004dd8ac]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004dd890 <.text+0xdc890>:
  4dd890:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  4dd894:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  4dd896:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  4dd89a:	8b 40 30                                        	mov    eax,DWORD PTR [eax+0x30]
  4dd89d:	6a 01                                           	push   0x1
  4dd89f:	52                                              	push   edx
  4dd8a0:	ff d0                                           	call   eax
  4dd8a2:	83 e8 01                                        	sub    eax,0x1
  4dd8a5:	f7 d8                                           	neg    eax
  4dd8a7:	1b c0                                           	sbb    eax,eax
  4dd8a9:	83 c0 01                                        	add    eax,0x1
  4dd8ac:	c3                                              	ret
