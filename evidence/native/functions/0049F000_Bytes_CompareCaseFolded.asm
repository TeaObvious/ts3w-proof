# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0049f000 (Bytes_CompareCaseFolded)
Full Ghidra function-body envelope: 0x0049f000..0x0049f05c (exclusive end)
Ghidra body ranges: [[0049f000, 0049f05b]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0049f000 <.text+0x9e000>:
  49f000:	83 7c 24 0c 00                                  	cmp    DWORD PTR [esp+0xc],0x0
  49f005:	53                                              	push   ebx
  49f006:	55                                              	push   ebp
  49f007:	56                                              	push   esi
  49f008:	57                                              	push   edi
  49f009:	76 38                                           	jbe    0x49f043
  49f00b:	8b 35 c0 66 f9 00                               	mov    esi,DWORD PTR ds:0xf966c0
  49f011:	8b 6c 24 18                                     	mov    ebp,DWORD PTR [esp+0x18]
  49f015:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  49f019:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  49f020:	0f b6 07                                        	movzx  eax,BYTE PTR [edi]
  49f023:	50                                              	push   eax
  49f024:	ff d6                                           	call   esi
  49f026:	0f b6 4d 00                                     	movzx  ecx,BYTE PTR [ebp+0x0]
  49f02a:	51                                              	push   ecx
  49f02b:	8a d8                                           	mov    bl,al
  49f02d:	ff d6                                           	call   esi
  49f02f:	83 c4 08                                        	add    esp,0x8
  49f032:	3a d8                                           	cmp    bl,al
  49f034:	75 14                                           	jne    0x49f04a
  49f036:	83 c7 01                                        	add    edi,0x1
  49f039:	83 c5 01                                        	add    ebp,0x1
  49f03c:	83 6c 24 1c 01                                  	sub    DWORD PTR [esp+0x1c],0x1
  49f041:	75 dd                                           	jne    0x49f020
  49f043:	5f                                              	pop    edi
  49f044:	5e                                              	pop    esi
  49f045:	5d                                              	pop    ebp
  49f046:	33 c0                                           	xor    eax,eax
  49f048:	5b                                              	pop    ebx
  49f049:	c3                                              	ret
  49f04a:	33 d2                                           	xor    edx,edx
  49f04c:	3a d8                                           	cmp    bl,al
  49f04e:	0f 9d c2                                        	setge  dl
  49f051:	5f                                              	pop    edi
  49f052:	5e                                              	pop    esi
  49f053:	5d                                              	pop    ebp
  49f054:	5b                                              	pop    ebx
  49f055:	8d 54 12 ff                                     	lea    edx,[edx+edx*1-0x1]
  49f059:	8b c2                                           	mov    eax,edx
  49f05b:	c3                                              	ret
