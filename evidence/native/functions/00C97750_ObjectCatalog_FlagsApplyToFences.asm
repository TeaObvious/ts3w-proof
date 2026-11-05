# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c97750 (ObjectCatalog_FlagsApplyToFences)
Full Ghidra function-body envelope: 0x00c97750..0x00c9775d (exclusive end)
Ghidra body ranges: [[00c97750, 00c9775c]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c97750 <.text+0x896750>:
  c97750:	8b 81 a4 00 00 00    	mov    eax,DWORD PTR [ecx+0xa4]
  c97756:	c1 e8 0c             	shr    eax,0xc
  c97759:	83 e0 01             	and    eax,0x1
  c9775c:	c3                   	ret
