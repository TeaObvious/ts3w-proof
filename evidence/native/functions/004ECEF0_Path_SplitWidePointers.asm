# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004ecef0 (Path_SplitWidePointers)
Complete body envelope: 0x004ecef0..0x004ecff6 (exclusive end)
Body ranges: [[004ecef0, 004ecff5]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004ecef0 <.text+0xebef0>:
  4ecef0:	53                   	push   ebx
  4ecef1:	55                   	push   ebp
  4ecef2:	56                   	push   esi
  4ecef3:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  4ecef7:	0f b7 0e             	movzx  ecx,WORD PTR [esi]
  4ecefa:	57                   	push   edi
  4ecefb:	33 ff                	xor    edi,edi
  4ecefd:	33 db                	xor    ebx,ebx
  4eceff:	33 ed                	xor    ebp,ebp
  4ecf01:	66 85 c9             	test   cx,cx
  4ecf04:	8b c6                	mov    eax,esi
  4ecf06:	74 2e                	je     0x4ecf36
  4ecf08:	0f b7 d1             	movzx  edx,cx
  4ecf0b:	83 fa 5c             	cmp    edx,0x5c
  4ecf0e:	74 0a                	je     0x4ecf1a
  4ecf10:	83 fa 2f             	cmp    edx,0x2f
  4ecf13:	74 05                	je     0x4ecf1a
  4ecf15:	83 fa 3a             	cmp    edx,0x3a
  4ecf18:	75 09                	jne    0x4ecf23
  4ecf1a:	85 ff                	test   edi,edi
  4ecf1c:	0f 44 f8             	cmove  edi,eax
  4ecf1f:	8b d8                	mov    ebx,eax
  4ecf21:	33 ed                	xor    ebp,ebp
  4ecf23:	66 83 f9 2e          	cmp    cx,0x2e
  4ecf27:	0f b7 48 02          	movzx  ecx,WORD PTR [eax+0x2]
  4ecf2b:	0f 44 e8             	cmove  ebp,eax
  4ecf2e:	83 c0 02             	add    eax,0x2
  4ecf31:	66 85 c9             	test   cx,cx
  4ecf34:	75 d2                	jne    0x4ecf08
  4ecf36:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  4ecf3a:	89 31                	mov    DWORD PTR [ecx],esi
  4ecf3c:	66 83 3e 5c          	cmp    WORD PTR [esi],0x5c
  4ecf40:	75 65                	jne    0x4ecfa7
  4ecf42:	66 83 7e 02 5c       	cmp    WORD PTR [esi+0x2],0x5c
  4ecf47:	75 5e                	jne    0x4ecfa7
  4ecf49:	0f b7 4e 04          	movzx  ecx,WORD PTR [esi+0x4]
  4ecf4d:	8d 46 04             	lea    eax,[esi+0x4]
  4ecf50:	33 d2                	xor    edx,edx
  4ecf52:	66 85 c9             	test   cx,cx
  4ecf55:	74 2c                	je     0x4ecf83
  4ecf57:	66 83 f9 5c          	cmp    cx,0x5c
  4ecf5b:	75 08                	jne    0x4ecf65
  4ecf5d:	83 c2 01             	add    edx,0x1
  4ecf60:	83 fa 02             	cmp    edx,0x2
  4ecf63:	eb 10                	jmp    0x4ecf75
  4ecf65:	0f b7 c9             	movzx  ecx,cx
  4ecf68:	83 f9 5c             	cmp    ecx,0x5c
  4ecf6b:	74 16                	je     0x4ecf83
  4ecf6d:	83 f9 2f             	cmp    ecx,0x2f
  4ecf70:	74 11                	je     0x4ecf83
  4ecf72:	83 f9 3a             	cmp    ecx,0x3a
  4ecf75:	74 0c                	je     0x4ecf83
  4ecf77:	0f b7 48 02          	movzx  ecx,WORD PTR [eax+0x2]
  4ecf7b:	83 c0 02             	add    eax,0x2
  4ecf7e:	66 85 c9             	test   cx,cx
  4ecf81:	75 d4                	jne    0x4ecf57
  4ecf83:	85 db                	test   ebx,ebx
  4ecf85:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  4ecf89:	89 01                	mov    DWORD PTR [ecx],eax
  4ecf8b:	74 0e                	je     0x4ecf9b
  4ecf8d:	3b d8                	cmp    ebx,eax
  4ecf8f:	73 0a                	jae    0x4ecf9b
  4ecf91:	66 8b 18             	mov    bx,WORD PTR [eax]
  4ecf94:	66 f7 db             	neg    bx
  4ecf97:	1b db                	sbb    ebx,ebx
  4ecf99:	23 d8                	and    ebx,eax
  4ecf9b:	85 ed                	test   ebp,ebp
  4ecf9d:	74 17                	je     0x4ecfb6
  4ecf9f:	3b e8                	cmp    ebp,eax
  4ecfa1:	73 13                	jae    0x4ecfb6
  4ecfa3:	33 ed                	xor    ebp,ebp
  4ecfa5:	eb 0f                	jmp    0x4ecfb6
  4ecfa7:	85 ff                	test   edi,edi
  4ecfa9:	74 0b                	je     0x4ecfb6
  4ecfab:	66 83 3f 3a          	cmp    WORD PTR [edi],0x3a
  4ecfaf:	75 05                	jne    0x4ecfb6
  4ecfb1:	83 c7 02             	add    edi,0x2
  4ecfb4:	89 39                	mov    DWORD PTR [ecx],edi
  4ecfb6:	85 db                	test   ebx,ebx
  4ecfb8:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  4ecfbc:	8b 12                	mov    edx,DWORD PTR [edx]
  4ecfbe:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  4ecfc2:	89 11                	mov    DWORD PTR [ecx],edx
  4ecfc4:	74 05                	je     0x4ecfcb
  4ecfc6:	83 c3 02             	add    ebx,0x2
  4ecfc9:	89 19                	mov    DWORD PTR [ecx],ebx
  4ecfcb:	85 ed                	test   ebp,ebp
  4ecfcd:	74 0b                	je     0x4ecfda
  4ecfcf:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  4ecfd3:	5f                   	pop    edi
  4ecfd4:	5e                   	pop    esi
  4ecfd5:	89 28                	mov    DWORD PTR [eax],ebp
  4ecfd7:	5d                   	pop    ebp
  4ecfd8:	5b                   	pop    ebx
  4ecfd9:	c3                   	ret
  4ecfda:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  4ecfde:	89 01                	mov    DWORD PTR [ecx],eax
  4ecfe0:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  4ecfe4:	74 0b                	je     0x4ecff1
  4ecfe6:	83 01 02             	add    DWORD PTR [ecx],0x2
  4ecfe9:	8b 11                	mov    edx,DWORD PTR [ecx]
  4ecfeb:	66 83 3a 00          	cmp    WORD PTR [edx],0x0
  4ecfef:	75 f5                	jne    0x4ecfe6
  4ecff1:	5f                   	pop    edi
  4ecff2:	5e                   	pop    esi
  4ecff3:	5d                   	pop    ebp
  4ecff4:	5b                   	pop    ebx
  4ecff5:	c3                   	ret
