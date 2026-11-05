# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x009c4590 (Sims3PackEntryStream_Read)
Full Ghidra function-body envelope: 0x009c4590..0x009c45fa (exclusive end)
Ghidra body ranges: [[009c4590, 009c45f9]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c4590 <.text+0x5c3590>:
  9c4590:	51                                              	push   ecx
  9c4591:	56                                              	push   esi
  9c4592:	8b f1                                           	mov    esi,ecx
  9c4594:	83 7e 0c 01                                     	cmp    DWORD PTR [esi+0xc],0x1
  9c4598:	74 07                                           	je     0x9c45a1
  9c459a:	33 c0                                           	xor    eax,eax
  9c459c:	5e                                              	pop    esi
  9c459d:	59                                              	pop    ecx
  9c459e:	c2 08 00                                        	ret    0x8
  9c45a1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  9c45a3:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  9c45a6:	53                                              	push   ebx
  9c45a7:	57                                              	push   edi
  9c45a8:	33 ff                                           	xor    edi,edi
  9c45aa:	ff d2                                           	call   edx
  9c45ac:	8b d8                                           	mov    ebx,eax
  9c45ae:	85 db                                           	test   ebx,ebx
  9c45b0:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
  9c45b4:	76 3b                                           	jbe    0x9c45f1
  9c45b6:	8b 56 14                                        	mov    edx,DWORD PTR [esi+0x14]
  9c45b9:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  9c45bc:	03 56 10                                        	add    edx,DWORD PTR [esi+0x10]
  9c45bf:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  9c45c1:	8b 40 28                                        	mov    eax,DWORD PTR [eax+0x28]
  9c45c4:	57                                              	push   edi
  9c45c5:	52                                              	push   edx
  9c45c6:	ff d0                                           	call   eax
  9c45c8:	84 c0                                           	test   al,al
  9c45ca:	74 25                                           	je     0x9c45f1
  9c45cc:	3b 5c 24 18                                     	cmp    ebx,DWORD PTR [esp+0x18]
  9c45d0:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  9c45d4:	72 04                                           	jb     0x9c45da
  9c45d6:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  9c45da:	8b 00                                           	mov    eax,DWORD PTR [eax]
  9c45dc:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  9c45df:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  9c45e1:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
  9c45e4:	50                                              	push   eax
  9c45e5:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  9c45e9:	50                                              	push   eax
  9c45ea:	ff d2                                           	call   edx
  9c45ec:	8b f8                                           	mov    edi,eax
  9c45ee:	01 7e 10                                        	add    DWORD PTR [esi+0x10],edi
  9c45f1:	8b c7                                           	mov    eax,edi
  9c45f3:	5f                                              	pop    edi
  9c45f4:	5b                                              	pop    ebx
  9c45f5:	5e                                              	pop    esi
  9c45f6:	59                                              	pop    ecx
  9c45f7:	c2 08 00                                        	ret    0x8
