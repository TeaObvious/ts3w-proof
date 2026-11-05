# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0095a3a0 (Tree_OnVisualStateChanged)
Full Ghidra function-body envelope: 0x0095a3a0..0x0095a3c6 (exclusive end)
Ghidra body ranges: [[0095a3a0, 0095a3c5]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095a3a0 <.text+0x5593a0>:
  95a3a0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  95a3a4:	85 c9                	test   ecx,ecx
  95a3a6:	74 1b                	je     0x95a3c3
  95a3a8:	a1 90 a2 1e 01       	mov    eax,ds:0x11ea290
  95a3ad:	50                   	push   eax
  95a3ae:	e8 ad 9e fd ff       	call   0x934260
  95a3b3:	85 c0                	test   eax,eax
  95a3b5:	74 0c                	je     0x95a3c3
  95a3b7:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  95a3ba:	51                   	push   ecx
  95a3bb:	e8 30 4c 00 00       	call   0x95eff0
  95a3c0:	83 c4 04             	add    esp,0x4
  95a3c3:	b0 01                	mov    al,0x1
  95a3c5:	c3                   	ret
