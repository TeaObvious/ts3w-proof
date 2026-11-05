# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004dbb40 (FileReadStream_Construct)
Full Ghidra function-body envelope: 0x004dbb40..0x004dbb9a (exclusive end)
Ghidra body ranges: [[004dbb40, 004dbb99]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004dbb40 <.text+0xdab40>:
  4dbb40:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  4dbb44:	33 c0                                           	xor    eax,eax
  4dbb46:	3b d0                                           	cmp    edx,eax
  4dbb48:	56                                              	push   esi
  4dbb49:	8b f1                                           	mov    esi,ecx
  4dbb4b:	8d 4e 08                                        	lea    ecx,[esi+0x8]
  4dbb4e:	c7 06 38 93 fb 00                               	mov    DWORD PTR [esi],0xfb9338
  4dbb54:	c7 46 04 ff ff ff ff                            	mov    DWORD PTR [esi+0x4],0xffffffff
  4dbb5b:	89 86 10 02 00 00                               	mov    DWORD PTR [esi+0x210],eax
  4dbb61:	89 86 14 02 00 00                               	mov    DWORD PTR [esi+0x214],eax
  4dbb67:	89 86 18 02 00 00                               	mov    DWORD PTR [esi+0x218],eax
  4dbb6d:	89 86 1c 02 00 00                               	mov    DWORD PTR [esi+0x21c],eax
  4dbb73:	89 86 20 02 00 00                               	mov    DWORD PTR [esi+0x220],eax
  4dbb79:	89 86 24 02 00 00                               	mov    DWORD PTR [esi+0x224],eax
  4dbb7f:	66 89 01                                        	mov    WORD PTR [ecx],ax
  4dbb82:	74 10                                           	je     0x4dbb94
  4dbb84:	68 04 01 00 00                                  	push   0x104
  4dbb89:	52                                              	push   edx
  4dbb8a:	51                                              	push   ecx
  4dbb8b:	ff 15 d4 66 f9 00                               	call   DWORD PTR ds:0xf966d4
  4dbb91:	83 c4 0c                                        	add    esp,0xc
  4dbb94:	8b c6                                           	mov    eax,esi
  4dbb96:	5e                                              	pop    esi
  4dbb97:	c2 04 00                                        	ret    0x4
