# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004db840 (FileReadStream_GetLength)
Full Ghidra function-body envelope: 0x004db840..0x004db87b (exclusive end)
Ghidra body ranges: [[004db840, 004db87a]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004db840 <.text+0xda840>:
  4db840:	83 ec 08                                        	sub    esp,0x8
  4db843:	56                                              	push   esi
  4db844:	8b f1                                           	mov    esi,ecx
  4db846:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  4db849:	83 f8 ff                                        	cmp    eax,0xffffffff
  4db84c:	74 25                                           	je     0x4db873
  4db84e:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  4db852:	51                                              	push   ecx
  4db853:	50                                              	push   eax
  4db854:	ff 15 8c 63 f9 00                               	call   DWORD PTR ds:0xf9638c
  4db85a:	85 c0                                           	test   eax,eax
  4db85c:	74 09                                           	je     0x4db867
  4db85e:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  4db862:	5e                                              	pop    esi
  4db863:	83 c4 08                                        	add    esp,0x8
  4db866:	c3                                              	ret
  4db867:	ff 15 84 63 f9 00                               	call   DWORD PTR ds:0xf96384
  4db86d:	89 86 24 02 00 00                               	mov    DWORD PTR [esi+0x224],eax
  4db873:	83 c8 ff                                        	or     eax,0xffffffff
  4db876:	5e                                              	pop    esi
  4db877:	83 c4 08                                        	add    esp,0x8
  4db87a:	c3                                              	ret
