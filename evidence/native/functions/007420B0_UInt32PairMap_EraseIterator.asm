# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007420b0 (UInt32PairMap_EraseIterator)
Full Ghidra function-body envelope: 0x007420b0..0x00742118 (exclusive end)
Ghidra body ranges: [[007420b0, 00742117]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.

Disassembly of section .text:

007420b0 <.text+0x3410b0>:
  7420b0:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  7420b4:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  7420b7:	85 c0                                           	test   eax,eax
  7420b9:	53                                              	push   ebx
  7420ba:	56                                              	push   esi
  7420bb:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  7420bf:	57                                              	push   edi
  7420c0:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
  7420c4:	8b d9                                           	mov    ebx,ecx
  7420c6:	89 7e 04                                        	mov    DWORD PTR [esi+0x4],edi
  7420c9:	89 06                                           	mov    DWORD PTR [esi],eax
  7420cb:	75 13                                           	jne    0x7420e0
  7420cd:	b9 04 00 00 00                                  	mov    ecx,0x4
  7420d2:	01 4e 04                                        	add    DWORD PTR [esi+0x4],ecx
  7420d5:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  7420d8:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7420da:	85 c0                                           	test   eax,eax
  7420dc:	89 06                                           	mov    DWORD PTR [esi],eax
  7420de:	74 f2                                           	je     0x7420d2
  7420e0:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  7420e2:	3b ca                                           	cmp    ecx,edx
  7420e4:	75 07                                           	jne    0x7420ed
  7420e6:	8b 49 08                                        	mov    ecx,DWORD PTR [ecx+0x8]
  7420e9:	89 0f                                           	mov    DWORD PTR [edi],ecx
  7420eb:	eb 16                                           	jmp    0x742103
  7420ed:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  7420f0:	3b c2                                           	cmp    eax,edx
  7420f2:	74 09                                           	je     0x7420fd
  7420f4:	8b c8                                           	mov    ecx,eax
  7420f6:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  7420f9:	3b c2                                           	cmp    eax,edx
  7420fb:	75 f7                                           	jne    0x7420f4
  7420fd:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  742100:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
  742103:	52                                              	push   edx
  742104:	e8 d7 23 da ff                                  	call   0x4e44e0
  742109:	83 43 0c ff                                     	add    DWORD PTR [ebx+0xc],0xffffffff
  74210d:	83 c4 04                                        	add    esp,0x4
  742110:	5f                                              	pop    edi
  742111:	8b c6                                           	mov    eax,esi
  742113:	5e                                              	pop    esi
  742114:	5b                                              	pop    ebx
  742115:	c2 0c 00                                        	ret    0xc
