# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c97860 (ObjectCatalog_HideWhenWallDown)
Full Ghidra function-body envelope: 0x00c97860..0x00c9786d (exclusive end)
Ghidra body ranges: [[00c97860, 00c9786c]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c97860 <.text+0x896860>:
  c97860:	8b 81 98 00 00 00    	mov    eax,DWORD PTR [ecx+0x98]
  c97866:	c1 e8 06             	shr    eax,0x6
  c97869:	83 e0 01             	and    eax,0x1
  c9786c:	c3                   	ret
