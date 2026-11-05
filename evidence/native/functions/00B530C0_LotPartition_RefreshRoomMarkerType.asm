# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00b530c0,0x00b5311a); analyst name LotPartition_RefreshRoomMarkerType.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b530c0 <.text+0x7520c0>:
  b530c0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  b530c4:	83 f8 04             	cmp    eax,0x4
  b530c7:	77 4e                	ja     0xb53117
  b530c9:	ff 24 85 1c 31 b5 00 	jmp    DWORD PTR [eax*4+0xb5311c]
  b530d0:	80 79 11 00          	cmp    BYTE PTR [ecx+0x11],0x0
  b530d4:	74 41                	je     0xb53117
  b530d6:	c7 44 24 04 00 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  b530de:	e9 5d fb ff ff       	jmp    0xb52c40
  b530e3:	c7 44 24 04 00 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  b530eb:	e9 40 d6 ff ff       	jmp    0xb50730
  b530f0:	c7 44 24 04 00 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  b530f8:	e9 f3 fc ff ff       	jmp    0xb52df0
  b530fd:	c7 44 24 04 00 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  b53105:	e9 a6 d6 ff ff       	jmp    0xb507b0
  b5310a:	c7 44 24 04 00 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  b53112:	e9 f9 fd ff ff       	jmp    0xb52f10
  b53117:	c2 04 00             	ret    0x4
