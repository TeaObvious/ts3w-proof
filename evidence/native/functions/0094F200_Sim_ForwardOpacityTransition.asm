# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0094f200 (Sim_ForwardOpacityTransition)
Full Ghidra function-body envelope: 0x0094f200..0x0094f216 (exclusive end)
Ghidra body ranges: [[0094f200, 0094f215]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0094f200 <.text+0x54e200>:
  94f200:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  94f204:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  94f207:	50                   	push   eax
  94f208:	51                   	push   ecx
  94f209:	e8 02 00 01 00       	call   0x95f210
  94f20e:	83 c4 08             	add    esp,0x8
  94f211:	b0 01                	mov    al,0x1
  94f213:	c2 04 00             	ret    0x4
