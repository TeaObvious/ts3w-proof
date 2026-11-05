# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00727160 (ResourceRequests_ExchangeGlobal)
Complete body envelope: 0x00727160..0x00727170 (exclusive end)
Body ranges: [[00727160, 0072716f]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00727160 <.text+0x326160>:
  727160:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  727164:	a1 84 4c 1d 01       	mov    eax,ds:0x11d4c84
  727169:	89 0d 84 4c 1d 01    	mov    DWORD PTR ds:0x11d4c84,ecx
  72716f:	c3                   	ret
