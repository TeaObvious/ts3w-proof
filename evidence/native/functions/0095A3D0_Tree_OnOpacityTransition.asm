# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0095a3d0 (Tree_OnOpacityTransition)
Full Ghidra function-body envelope: 0x0095a3d0..0x0095a3fb (exclusive end)
Ghidra body ranges: [[0095a3d0, 0095a3fa]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095a3d0 <.text+0x5593d0>:
  95a3d0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  95a3d4:	85 c9                	test   ecx,ecx
  95a3d6:	74 20                	je     0x95a3f8
  95a3d8:	a1 90 a2 1e 01       	mov    eax,ds:0x11ea290
  95a3dd:	50                   	push   eax
  95a3de:	e8 7d 9e fd ff       	call   0x934260
  95a3e3:	85 c0                	test   eax,eax
  95a3e5:	74 11                	je     0x95a3f8
  95a3e7:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  95a3eb:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  95a3ee:	51                   	push   ecx
  95a3ef:	52                   	push   edx
  95a3f0:	e8 1b 4e 00 00       	call   0x95f210
  95a3f5:	83 c4 08             	add    esp,0x8
  95a3f8:	b0 01                	mov    al,0x1
  95a3fa:	c3                   	ret
