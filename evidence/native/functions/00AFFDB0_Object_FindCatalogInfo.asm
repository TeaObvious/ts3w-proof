# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00affdb0 (Object_FindCatalogInfo)
Full Ghidra function-body envelope: 0x00affdb0..0x00affdc4 (exclusive end)
Ghidra body ranges: [[00affdb0, 00affdc3]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00affdb0 <.text+0x6fedb0>:
  affdb0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  affdb4:	8b 0d 34 e0 1e 01    	mov    ecx,DWORD PTR ds:0x11ee034
  affdba:	83 c0 18             	add    eax,0x18
  affdbd:	50                   	push   eax
  affdbe:	e8 ed ed 18 00       	call   0xc8ebb0
  affdc3:	c3                   	ret
