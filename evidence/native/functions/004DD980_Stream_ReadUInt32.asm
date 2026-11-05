# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004dd980 (Stream_ReadUInt32)
Full Ghidra function-body envelope: 0x004dd980..0x004dd9cf (exclusive end)
Ghidra body ranges: [[004dd980, 004dd9ce]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004dd980 <.text+0xdc980>:
  4dd980:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  4dd984:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  4dd986:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  4dd989:	56                                              	push   esi
  4dd98a:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  4dd98e:	6a 04                                           	push   0x4
  4dd990:	56                                              	push   esi
  4dd991:	ff d2                                           	call   edx
  4dd993:	83 f8 04                                        	cmp    eax,0x4
  4dd996:	75 33                                           	jne    0x4dd9cb
  4dd998:	83 7c 24 10 01                                  	cmp    DWORD PTR [esp+0x10],0x1
  4dd99d:	74 28                                           	je     0x4dd9c7
  4dd99f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  4dd9a1:	8b c8                                           	mov    ecx,eax
  4dd9a3:	8b d0                                           	mov    edx,eax
  4dd9a5:	c1 ea 10                                        	shr    edx,0x10
  4dd9a8:	81 e1 00 00 ff 00                               	and    ecx,0xff0000
  4dd9ae:	0b ca                                           	or     ecx,edx
  4dd9b0:	8b d0                                           	mov    edx,eax
  4dd9b2:	81 e2 00 ff 00 00                               	and    edx,0xff00
  4dd9b8:	c1 e0 10                                        	shl    eax,0x10
  4dd9bb:	0b d0                                           	or     edx,eax
  4dd9bd:	c1 e9 08                                        	shr    ecx,0x8
  4dd9c0:	c1 e2 08                                        	shl    edx,0x8
  4dd9c3:	0b ca                                           	or     ecx,edx
  4dd9c5:	89 0e                                           	mov    DWORD PTR [esi],ecx
  4dd9c7:	b0 01                                           	mov    al,0x1
  4dd9c9:	5e                                              	pop    esi
  4dd9ca:	c3                                              	ret
  4dd9cb:	32 c0                                           	xor    al,al
  4dd9cd:	5e                                              	pop    esi
  4dd9ce:	c3                                              	ret
