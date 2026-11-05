# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x009c4840 (Sims3Pack_OpenEntryStream)
Full Ghidra function-body envelope: 0x009c4840..0x009c48ed (exclusive end)
Ghidra body ranges: [[009c4840, 009c48ec]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c4840 <.text+0x5c3840>:
  9c4840:	56                                              	push   esi
  9c4841:	8b f1                                           	mov    esi,ecx
  9c4843:	83 be b4 00 00 00 01                            	cmp    DWORD PTR [esi+0xb4],0x1
  9c484a:	0f 85 97 00 00 00                               	jne    0x9c48e7
  9c4850:	8b 8e 10 01 00 00                               	mov    ecx,DWORD PTR [esi+0x110]
  9c4856:	85 c9                                           	test   ecx,ecx
  9c4858:	0f 84 89 00 00 00                               	je     0x9c48e7
  9c485e:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  9c4861:	2b 56 04                                        	sub    edx,DWORD PTR [esi+0x4]
  9c4864:	b8 97 6a d0 79                                  	mov    eax,0x79d06a97
  9c4869:	f7 ea                                           	imul   edx
  9c486b:	c1 fa 0a                                        	sar    edx,0xa
  9c486e:	8b c2                                           	mov    eax,edx
  9c4870:	57                                              	push   edi
  9c4871:	0f b7 7c 24 0c                                  	movzx  edi,WORD PTR [esp+0xc]
  9c4876:	c1 e8 1f                                        	shr    eax,0x1f
  9c4879:	03 c2                                           	add    eax,edx
  9c487b:	3b f8                                           	cmp    edi,eax
  9c487d:	73 0b                                           	jae    0x9c488a
  9c487f:	69 ff 68 08 00 00                               	imul   edi,edi,0x868
  9c4885:	03 7e 04                                        	add    edi,DWORD PTR [esi+0x4]
  9c4888:	eb 02                                           	jmp    0x9c488c
  9c488a:	33 ff                                           	xor    edi,edi
  9c488c:	8b 47 24                                        	mov    eax,DWORD PTR [edi+0x24]
  9c488f:	03 86 18 01 00 00                               	add    eax,DWORD PTR [esi+0x118]
  9c4895:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  9c4897:	6a 00                                           	push   0x0
  9c4899:	50                                              	push   eax
  9c489a:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
  9c489d:	ff d0                                           	call   eax
  9c489f:	84 c0                                           	test   al,al
  9c48a1:	74 3d                                           	je     0x9c48e0
  9c48a3:	6a 00                                           	push   0x0
  9c48a5:	6a 00                                           	push   0x0
  9c48a7:	6a 00                                           	push   0x0
  9c48a9:	6a 00                                           	push   0x0
  9c48ab:	68 58 0a 05 01                                  	push   0x1050a58
  9c48b0:	6a 24                                           	push   0x24
  9c48b2:	e8 49 fc b1 ff                                  	call   0x4e4500
  9c48b7:	83 c4 18                                        	add    esp,0x18
  9c48ba:	85 c0                                           	test   eax,eax
  9c48bc:	74 22                                           	je     0x9c48e0
  9c48be:	8b 8e b4 00 00 00                               	mov    ecx,DWORD PTR [esi+0xb4]
  9c48c4:	8b 96 10 01 00 00                               	mov    edx,DWORD PTR [esi+0x110]
  9c48ca:	51                                              	push   ecx
  9c48cb:	8b 8e 18 01 00 00                               	mov    ecx,DWORD PTR [esi+0x118]
  9c48d1:	51                                              	push   ecx
  9c48d2:	52                                              	push   edx
  9c48d3:	57                                              	push   edi
  9c48d4:	8b c8                                           	mov    ecx,eax
  9c48d6:	e8 55 fb ff ff                                  	call   0x9c4430
  9c48db:	5f                                              	pop    edi
  9c48dc:	5e                                              	pop    esi
  9c48dd:	c2 04 00                                        	ret    0x4
  9c48e0:	5f                                              	pop    edi
  9c48e1:	33 c0                                           	xor    eax,eax
  9c48e3:	5e                                              	pop    esi
  9c48e4:	c2 04 00                                        	ret    0x4
  9c48e7:	33 c0                                           	xor    eax,eax
  9c48e9:	5e                                              	pop    esi
  9c48ea:	c2 04 00                                        	ret    0x4
