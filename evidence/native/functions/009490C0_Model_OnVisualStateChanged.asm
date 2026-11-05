# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x009490c0 (Model_OnVisualStateChanged)
Full Ghidra function-body envelope: 0x009490c0..0x009490e6 (exclusive end)
Ghidra body ranges: [[009490c0, 009490e5]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009490c0 <.text+0x5480c0>:
  9490c0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  9490c4:	85 c9                	test   ecx,ecx
  9490c6:	74 1b                	je     0x9490e3
  9490c8:	a1 c4 9f 1e 01       	mov    eax,ds:0x11e9fc4
  9490cd:	50                   	push   eax
  9490ce:	e8 8d b1 fe ff       	call   0x934260
  9490d3:	85 c0                	test   eax,eax
  9490d5:	74 0c                	je     0x9490e3
  9490d7:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  9490da:	51                   	push   ecx
  9490db:	e8 10 5f 01 00       	call   0x95eff0
  9490e0:	83 c4 04             	add    esp,0x4
  9490e3:	b0 01                	mov    al,0x1
  9490e5:	c3                   	ret
