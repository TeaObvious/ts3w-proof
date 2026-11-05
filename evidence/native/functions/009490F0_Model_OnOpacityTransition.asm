# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x009490f0 (Model_OnOpacityTransition)
Full Ghidra function-body envelope: 0x009490f0..0x0094911b (exclusive end)
Ghidra body ranges: [[009490f0, 0094911a]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009490f0 <.text+0x5480f0>:
  9490f0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  9490f4:	85 c9                	test   ecx,ecx
  9490f6:	74 20                	je     0x949118
  9490f8:	a1 c4 9f 1e 01       	mov    eax,ds:0x11e9fc4
  9490fd:	50                   	push   eax
  9490fe:	e8 5d b1 fe ff       	call   0x934260
  949103:	85 c0                	test   eax,eax
  949105:	74 11                	je     0x949118
  949107:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  94910b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  94910e:	51                   	push   ecx
  94910f:	52                   	push   edx
  949110:	e8 fb 60 01 00       	call   0x95f210
  949115:	83 c4 08             	add    esp,0x8
  949118:	b0 01                	mov    al,0x1
  94911a:	c3                   	ret
