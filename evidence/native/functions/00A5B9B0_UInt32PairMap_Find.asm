# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00a5b9b0 (UInt32PairMap_Find)
Full Ghidra function-body envelope: 0x00a5b9b0..0x00a5ba0d (exclusive end)
Ghidra body ranges: [[00a5b9b0, 00a5ba0c]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.

Disassembly of section .text:

00a5b9b0 <.text+0x65a9b0>:
  a5b9b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  a5b9b4:	83 ec 08                                        	sub    esp,0x8
  a5b9b7:	56                                              	push   esi
  a5b9b8:	8b 30                                           	mov    esi,DWORD PTR [eax]
  a5b9ba:	33 d2                                           	xor    edx,edx
  a5b9bc:	57                                              	push   edi
  a5b9bd:	8b 79 08                                        	mov    edi,DWORD PTR [ecx+0x8]
  a5b9c0:	8b c6                                           	mov    eax,esi
  a5b9c2:	f7 f7                                           	div    edi
  a5b9c4:	8b 49 04                                        	mov    ecx,DWORD PTR [ecx+0x4]
  a5b9c7:	8b 04 91                                        	mov    eax,DWORD PTR [ecx+edx*4]
  a5b9ca:	85 c0                                           	test   eax,eax
  a5b9cc:	8d 14 91                                        	lea    edx,[ecx+edx*4]
  a5b9cf:	74 0b                                           	je     0xa5b9dc
  a5b9d1:	3b 30                                           	cmp    esi,DWORD PTR [eax]
  a5b9d3:	74 2e                                           	je     0xa5ba03
  a5b9d5:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  a5b9d8:	85 c0                                           	test   eax,eax
  a5b9da:	75 f5                                           	jne    0xa5b9d1
  a5b9dc:	8d 04 b9                                        	lea    eax,[ecx+edi*4]
  a5b9df:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  a5b9e1:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  a5b9e5:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  a5b9e9:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  a5b9ed:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  a5b9f1:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  a5b9f3:	8b 49 04                                        	mov    ecx,DWORD PTR [ecx+0x4]
  a5b9f6:	5f                                              	pop    edi
  a5b9f7:	89 10                                           	mov    DWORD PTR [eax],edx
  a5b9f9:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  a5b9fc:	5e                                              	pop    esi
  a5b9fd:	83 c4 08                                        	add    esp,0x8
  a5ba00:	c2 08 00                                        	ret    0x8
  a5ba03:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  a5ba07:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  a5ba0b:	eb dc                                           	jmp    0xa5b9e9
