# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0095f5f0 (VisualState_OnWallVisibility)
Full Ghidra function-body envelope: 0x0095f5f0..0x0095f61c (exclusive end)
Ghidra body ranges: [[0095f5f0, 0095f61b]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095f5f0 <.text+0x55e5f0>:
  95f5f0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  95f5f4:	85 c9                	test   ecx,ecx
  95f5f6:	74 21                	je     0x95f619
  95f5f8:	a1 a8 a2 1e 01       	mov    eax,ds:0x11ea2a8
  95f5fd:	50                   	push   eax
  95f5fe:	e8 5d 4c fd ff       	call   0x934260
  95f603:	85 c0                	test   eax,eax
  95f605:	74 12                	je     0x95f619
  95f607:	83 7c 24 08 00       	cmp    DWORD PTR [esp+0x8],0x0
  95f60c:	0f 95 c1             	setne  cl
  95f60f:	51                   	push   ecx
  95f610:	6a 08                	push   0x8
  95f612:	8b c8                	mov    ecx,eax
  95f614:	e8 d7 ef ff ff       	call   0x95e5f0
  95f619:	b0 01                	mov    al,0x1
  95f61b:	c3                   	ret
