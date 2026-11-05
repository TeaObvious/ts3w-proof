# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00951a20 (Slot_PropagateAggregateVisibility)
Full Ghidra function-body envelope: 0x00951a20..0x00951a7b (exclusive end)
Ghidra body ranges: [[00951a20, 00951a7a]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00951a20 <.text+0x550a20>:
  951a20:	83 ec 14             	sub    esp,0x14
  951a23:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  951a27:	8a 50 02             	mov    dl,BYTE PTR [eax+0x2]
  951a2a:	89 0c 24             	mov    DWORD PTR [esp],ecx
  951a2d:	83 c1 48             	add    ecx,0x48
  951a30:	33 c0                	xor    eax,eax
  951a32:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  951a36:	8d 0c 24             	lea    ecx,[esp]
  951a39:	88 54 24 18          	mov    BYTE PTR [esp+0x18],dl
  951a3d:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  951a41:	88 44 24 04          	mov    BYTE PTR [esp+0x4],al
  951a45:	e8 f6 f4 ff ff       	call   0x950f40
  951a4a:	84 c0                	test   al,al
  951a4c:	74 25                	je     0x951a73
  951a4e:	8b ff                	mov    edi,edi
  951a50:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  951a54:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  951a57:	8d 44 24 18          	lea    eax,[esp+0x18]
  951a5b:	50                   	push   eax
  951a5c:	52                   	push   edx
  951a5d:	6a 19                	push   0x19
  951a5f:	e8 5c 3c fe ff       	call   0x9356c0
  951a64:	83 c4 0c             	add    esp,0xc
  951a67:	8d 0c 24             	lea    ecx,[esp]
  951a6a:	e8 d1 f4 ff ff       	call   0x950f40
  951a6f:	84 c0                	test   al,al
  951a71:	75 dd                	jne    0x951a50
  951a73:	b0 01                	mov    al,0x1
  951a75:	83 c4 14             	add    esp,0x14
  951a78:	c2 04 00             	ret    0x4
