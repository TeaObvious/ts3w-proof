# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0049f180 (ByteString_CompareCaseInsensitive)
Full Ghidra function-body envelope: 0x0049f180..0x0049f1e5 (exclusive end)
Ghidra body ranges: [[0049f180, 0049f1e4]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0049f180 <.text+0x9e180>:
  49f180:	51                                              	push   ecx
  49f181:	53                                              	push   ebx
  49f182:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
  49f186:	56                                              	push   esi
  49f187:	8b c3                                           	mov    eax,ebx
  49f189:	57                                              	push   edi
  49f18a:	8d 70 01                                        	lea    esi,[eax+0x1]
  49f18d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  49f190:	8a 10                                           	mov    dl,BYTE PTR [eax]
  49f192:	83 c0 01                                        	add    eax,0x1
  49f195:	84 d2                                           	test   dl,dl
  49f197:	75 f7                                           	jne    0x49f190
  49f199:	2b c6                                           	sub    eax,esi
  49f19b:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  49f19e:	8b f8                                           	mov    edi,eax
  49f1a0:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  49f1a2:	2b f0                                           	sub    esi,eax
  49f1a4:	3b fe                                           	cmp    edi,esi
  49f1a6:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  49f1aa:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  49f1ae:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  49f1b2:	7c 04                                           	jl     0x49f1b8
  49f1b4:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  49f1b8:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  49f1ba:	51                                              	push   ecx
  49f1bb:	53                                              	push   ebx
  49f1bc:	50                                              	push   eax
  49f1bd:	e8 3e fe ff ff                                  	call   0x49f000
  49f1c2:	83 c4 0c                                        	add    esp,0xc
  49f1c5:	85 c0                                           	test   eax,eax
  49f1c7:	75 15                                           	jne    0x49f1de
  49f1c9:	3b f7                                           	cmp    esi,edi
  49f1cb:	7d 0a                                           	jge    0x49f1d7
  49f1cd:	5f                                              	pop    edi
  49f1ce:	5e                                              	pop    esi
  49f1cf:	83 c8 ff                                        	or     eax,0xffffffff
  49f1d2:	5b                                              	pop    ebx
  49f1d3:	59                                              	pop    ecx
  49f1d4:	c2 04 00                                        	ret    0x4
  49f1d7:	33 c0                                           	xor    eax,eax
  49f1d9:	3b f7                                           	cmp    esi,edi
  49f1db:	0f 9f c0                                        	setg   al
  49f1de:	5f                                              	pop    edi
  49f1df:	5e                                              	pop    esi
  49f1e0:	5b                                              	pop    ebx
  49f1e1:	59                                              	pop    ecx
  49f1e2:	c2 04 00                                        	ret    0x4
