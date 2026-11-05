# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004dba10 (FileReadStream_GetAvailable)
Full Ghidra function-body envelope: 0x004dba10..0x004dba1c (exclusive end)
Ghidra body ranges: [[004dba10, 004dba1b]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004dba10 <.text+0xdaa10>:
  4dba10:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  4dba12:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  4dba15:	6a 02                                           	push   0x2
  4dba17:	ff d2                                           	call   edx
  4dba19:	f7 d8                                           	neg    eax
  4dba1b:	c3                                              	ret
