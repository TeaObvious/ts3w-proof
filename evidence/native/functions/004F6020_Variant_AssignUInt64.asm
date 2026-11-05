# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004f6020 (Variant_AssignUInt64)
Full Ghidra function-body envelope: 0x004f6020..0x004f6096 (exclusive end)
Ghidra body ranges: [[004f6020, 004f6095]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.

Disassembly of section .text:

004f6020 <.text+0xf5020>:
  4f6020:	56                                              	push   esi
  4f6021:	57                                              	push   edi
  4f6022:	8b f1                                           	mov    esi,ecx
  4f6024:	33 ff                                           	xor    edi,edi
  4f6026:	f6 46 08 04                                     	test   BYTE PTR [esi+0x8],0x4
  4f602a:	74 1e                                           	je     0x4f604a
  4f602c:	57                                              	push   edi
  4f602d:	57                                              	push   edi
  4f602e:	57                                              	push   edi
  4f602f:	57                                              	push   edi
  4f6030:	56                                              	push   esi
  4f6031:	6a 01                                           	push   0x1
  4f6033:	ff 15 0c da 14 01                               	call   DWORD PTR ds:0x114da0c
  4f6039:	83 c4 18                                        	add    esp,0x18
  4f603c:	f6 46 08 02                                     	test   BYTE PTR [esi+0x8],0x2
  4f6040:	75 08                                           	jne    0x4f604a
  4f6042:	66 89 7e 0a                                     	mov    WORD PTR [esi+0xa],di
  4f6046:	66 89 7e 08                                     	mov    WORD PTR [esi+0x8],di
  4f604a:	66 8b 46 08                                     	mov    ax,WORD PTR [esi+0x8]
  4f604e:	66 25 02 00                                     	and    ax,0x2
  4f6052:	ba 0c 00 00 00                                  	mov    edx,0xc
  4f6057:	74 1f                                           	je     0x4f6078
  4f6059:	66 39 56 0a                                     	cmp    WORD PTR [esi+0xa],dx
  4f605d:	74 19                                           	je     0x4f6078
  4f605f:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  4f6063:	6a 01                                           	push   0x1
  4f6065:	6a 08                                           	push   0x8
  4f6067:	50                                              	push   eax
  4f6068:	57                                              	push   edi
  4f6069:	52                                              	push   edx
  4f606a:	8b ce                                           	mov    ecx,esi
  4f606c:	e8 4f f9 ff ff                                  	call   0x4f59c0
  4f6071:	5f                                              	pop    edi
  4f6072:	8b c6                                           	mov    eax,esi
  4f6074:	5e                                              	pop    esi
  4f6075:	c2 04 00                                        	ret    0x4
  4f6078:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  4f607c:	8b 39                                           	mov    edi,DWORD PTR [ecx]
  4f607e:	89 7e 10                                        	mov    DWORD PTR [esi+0x10],edi
  4f6081:	8b 49 04                                        	mov    ecx,DWORD PTR [ecx+0x4]
  4f6084:	66 89 46 08                                     	mov    WORD PTR [esi+0x8],ax
  4f6088:	5f                                              	pop    edi
  4f6089:	89 4e 14                                        	mov    DWORD PTR [esi+0x14],ecx
  4f608c:	66 89 56 0a                                     	mov    WORD PTR [esi+0xa],dx
  4f6090:	8b c6                                           	mov    eax,esi
  4f6092:	5e                                              	pop    esi
  4f6093:	c2 04 00                                        	ret    0x4
