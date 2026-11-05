# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004f5f20 (Variant_AssignUInt32)
Full Ghidra function-body envelope: 0x004f5f20..0x004f5f94 (exclusive end)
Ghidra body ranges: [[004f5f20, 004f5f93]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.

Disassembly of section .text:

004f5f20 <.text+0xf4f20>:
  4f5f20:	56                                              	push   esi
  4f5f21:	8b f1                                           	mov    esi,ecx
  4f5f23:	f6 46 08 04                                     	test   BYTE PTR [esi+0x8],0x4
  4f5f27:	74 26                                           	je     0x4f5f4f
  4f5f29:	6a 00                                           	push   0x0
  4f5f2b:	6a 00                                           	push   0x0
  4f5f2d:	6a 00                                           	push   0x0
  4f5f2f:	6a 00                                           	push   0x0
  4f5f31:	56                                              	push   esi
  4f5f32:	6a 01                                           	push   0x1
  4f5f34:	ff 15 0c da 14 01                               	call   DWORD PTR ds:0x114da0c
  4f5f3a:	83 c4 18                                        	add    esp,0x18
  4f5f3d:	f6 46 08 02                                     	test   BYTE PTR [esi+0x8],0x2
  4f5f41:	75 0c                                           	jne    0x4f5f4f
  4f5f43:	66 c7 46 0a 00 00                               	mov    WORD PTR [esi+0xa],0x0
  4f5f49:	66 c7 46 08 00 00                               	mov    WORD PTR [esi+0x8],0x0
  4f5f4f:	66 8b 46 08                                     	mov    ax,WORD PTR [esi+0x8]
  4f5f53:	66 25 02 00                                     	and    ax,0x2
  4f5f57:	b9 0a 00 00 00                                  	mov    ecx,0xa
  4f5f5c:	74 1f                                           	je     0x4f5f7d
  4f5f5e:	66 39 4e 0a                                     	cmp    WORD PTR [esi+0xa],cx
  4f5f62:	74 19                                           	je     0x4f5f7d
  4f5f64:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  4f5f68:	6a 01                                           	push   0x1
  4f5f6a:	6a 04                                           	push   0x4
  4f5f6c:	50                                              	push   eax
  4f5f6d:	6a 00                                           	push   0x0
  4f5f6f:	51                                              	push   ecx
  4f5f70:	8b ce                                           	mov    ecx,esi
  4f5f72:	e8 49 fa ff ff                                  	call   0x4f59c0
  4f5f77:	8b c6                                           	mov    eax,esi
  4f5f79:	5e                                              	pop    esi
  4f5f7a:	c2 04 00                                        	ret    0x4
  4f5f7d:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  4f5f81:	8b 12                                           	mov    edx,DWORD PTR [edx]
  4f5f83:	66 89 46 08                                     	mov    WORD PTR [esi+0x8],ax
  4f5f87:	89 56 10                                        	mov    DWORD PTR [esi+0x10],edx
  4f5f8a:	66 89 4e 0a                                     	mov    WORD PTR [esi+0xa],cx
  4f5f8e:	8b c6                                           	mov    eax,esi
  4f5f90:	5e                                              	pop    esi
  4f5f91:	c2 04 00                                        	ret    0x4
