# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x009c44b0 (Sims3PackEntryStream_GetAvailable)
Full Ghidra function-body envelope: 0x009c44b0..0x009c44b7 (exclusive end)
Ghidra body ranges: [[009c44b0, 009c44b6]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c44b0 <.text+0x5c34b0>:
  9c44b0:	8b 41 1c                                        	mov    eax,DWORD PTR [ecx+0x1c]
  9c44b3:	2b 41 10                                        	sub    eax,DWORD PTR [ecx+0x10]
  9c44b6:	c3                                              	ret
