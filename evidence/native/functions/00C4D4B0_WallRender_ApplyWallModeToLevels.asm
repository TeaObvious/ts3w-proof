# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c4d4b0 (WallRender_ApplyWallModeToLevels)
Full Ghidra function-body envelope: 0x00c4d4b0..0x00c4d534 (exclusive end)
Ghidra body ranges: [[00c4d4b0, 00c4d533]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c4d4b0 <.text+0x84c4b0>:
  c4d4b0:	51                   	push   ecx
  c4d4b1:	53                   	push   ebx
  c4d4b2:	55                   	push   ebp
  c4d4b3:	56                   	push   esi
  c4d4b4:	8b f1                	mov    esi,ecx
  c4d4b6:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  c4d4b9:	8b a8 9c 02 00 00    	mov    ebp,DWORD PTR [eax+0x29c]
  c4d4bf:	57                   	push   edi
  c4d4c0:	8b 78 68             	mov    edi,DWORD PTR [eax+0x68]
  c4d4c3:	3b 78 6c             	cmp    edi,DWORD PTR [eax+0x6c]
  c4d4c6:	7f 19                	jg     0xc4d4e1
  c4d4c8:	3b fd                	cmp    edi,ebp
  c4d4ca:	74 0a                	je     0xc4d4d6
  c4d4cc:	6a 01                	push   0x1
  c4d4ce:	57                   	push   edi
  c4d4cf:	8b ce                	mov    ecx,esi
  c4d4d1:	e8 3a fc ff ff       	call   0xc4d110
  c4d4d6:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  c4d4d9:	83 c7 01             	add    edi,0x1
  c4d4dc:	3b 78 6c             	cmp    edi,DWORD PTR [eax+0x6c]
  c4d4df:	7e e7                	jle    0xc4d4c8
  c4d4e1:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  c4d4e4:	33 db                	xor    ebx,ebx
  c4d4e6:	83 f8 01             	cmp    eax,0x1
  c4d4e9:	74 09                	je     0xc4d4f4
  c4d4eb:	83 f8 03             	cmp    eax,0x3
  c4d4ee:	88 5c 24 10          	mov    BYTE PTR [esp+0x10],bl
  c4d4f2:	75 05                	jne    0xc4d4f9
  c4d4f4:	c6 44 24 10 01       	mov    BYTE PTR [esp+0x10],0x1
  c4d4f9:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c4d4fd:	51                   	push   ecx
  c4d4fe:	55                   	push   ebp
  c4d4ff:	8b ce                	mov    ecx,esi
  c4d501:	e8 0a fc ff ff       	call   0xc4d110
  c4d506:	38 5e 24             	cmp    BYTE PTR [esi+0x24],bl
  c4d509:	74 0b                	je     0xc4d516
  c4d50b:	83 7e 28 03          	cmp    DWORD PTR [esi+0x28],0x3
  c4d50f:	c6 44 24 10 01       	mov    BYTE PTR [esp+0x10],0x1
  c4d514:	74 04                	je     0xc4d51a
  c4d516:	88 5c 24 10          	mov    BYTE PTR [esp+0x10],bl
  c4d51a:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c4d51d:	3b cb                	cmp    ecx,ebx
  c4d51f:	74 0a                	je     0xc4d52b
  c4d521:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  c4d525:	52                   	push   edx
  c4d526:	e8 c5 54 fe ff       	call   0xc329f0
  c4d52b:	5f                   	pop    edi
  c4d52c:	88 5e 2c             	mov    BYTE PTR [esi+0x2c],bl
  c4d52f:	5e                   	pop    esi
  c4d530:	5d                   	pop    ebp
  c4d531:	5b                   	pop    ebx
  c4d532:	59                   	pop    ecx
  c4d533:	c3                   	ret
