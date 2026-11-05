# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00951ab0 (Slot_OnVisualStateChanged)
Full Ghidra function-body envelope: 0x00951ab0..0x00951ad7 (exclusive end)
Ghidra body ranges: [[00951ab0, 00951ad6]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00951ab0 <.text+0x550ab0>:
  951ab0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  951ab4:	85 c9                	test   ecx,ecx
  951ab6:	74 1c                	je     0x951ad4
  951ab8:	a1 14 a1 1e 01       	mov    eax,ds:0x11ea114
  951abd:	50                   	push   eax
  951abe:	e8 9d 27 fe ff       	call   0x934260
  951ac3:	85 c0                	test   eax,eax
  951ac5:	74 0d                	je     0x951ad4
  951ac7:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  951acb:	51                   	push   ecx
  951acc:	8b c8                	mov    ecx,eax
  951ace:	e8 4d ff ff ff       	call   0x951a20
  951ad3:	c3                   	ret
  951ad4:	b0 01                	mov    al,0x1
  951ad6:	c3                   	ret
