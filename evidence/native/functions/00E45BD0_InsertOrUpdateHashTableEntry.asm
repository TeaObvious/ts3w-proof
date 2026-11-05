# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00e45bd0 (InsertNativeRegistrationBinding)
Paired Ghidra pseudocode: 00E45BD0_InsertOrUpdateHashTableEntry.c
Window: [0x00e45bd0, 0x00e45cb0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00e45cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00e45bd0: 56 8b 74 24 08 85 f6 75 27 5e c7 44 24 10 74 dc
00e45be0: 08 01 c7 44 24 0c f8 00 00 00 c7 44 24 08 50 dc
00e45bf0: 08 01 c7 44 24 04 70 da 08 01 ff 25 c0 65 f9 00
00e45c00: 8b 4e 10 3b 4e 14 8b 46 04 89 44 24 08 7c 07 8b
00e45c10: c6 e8 6a ff ff ff 8b 16 53 55 8b 6c 24 14 57 55
00e45c20: ff d2 33 d2 f7 76 0c 8b 46 08 83 c4 04 8b da 8b
00e45c30: 3c 98 85 ff 74 16 8b 0f 55 51 ff 54 24 1c 83 c4
00e45c40: 08 85 c0 75 2d 8b 7f 08 85 ff 75 ea e8 9f fd ff
00e45c50: ff 8b 54 24 1c 89 28 89 50 04 8b 4e 08 8b 14 99
00e45c60: 89 50 08 8b 4e 08 5f 5d 89 04 99 83 46 10 01 5b
00e45c70: 5e c3 83 7c 24 20 00 74 11 8b 46 20 85 c0 74 08
00e45c80: 8b 17 52 ff d0 83 c4 04 89 2f 8b 76 1c 85 f6 74
00e45c90: 09 8b 47 04 50 ff d6 83 c4 04 8b 4c 24 1c 89 4f
00e45ca0: 04 5f 5d 5b 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00e45bd0 <.text+0xa44bd0>:
  e45bd0:	56                                              	push   esi
  e45bd1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  e45bd5:	85 f6                                           	test   esi,esi
  e45bd7:	75 27                                           	jne    0xe45c00
  e45bd9:	5e                                              	pop    esi
  e45bda:	c7 44 24 10 74 dc 08 01                         	mov    DWORD PTR [esp+0x10],0x108dc74
  e45be2:	c7 44 24 0c f8 00 00 00                         	mov    DWORD PTR [esp+0xc],0xf8
  e45bea:	c7 44 24 08 50 dc 08 01                         	mov    DWORD PTR [esp+0x8],0x108dc50
  e45bf2:	c7 44 24 04 70 da 08 01                         	mov    DWORD PTR [esp+0x4],0x108da70
  e45bfa:	ff 25 c0 65 f9 00                               	jmp    DWORD PTR ds:0xf965c0
  e45c00:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
  e45c03:	3b 4e 14                                        	cmp    ecx,DWORD PTR [esi+0x14]
  e45c06:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  e45c09:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  e45c0d:	7c 07                                           	jl     0xe45c16
  e45c0f:	8b c6                                           	mov    eax,esi
  e45c11:	e8 6a ff ff ff                                  	call   0xe45b80
  e45c16:	8b 16                                           	mov    edx,DWORD PTR [esi]
  e45c18:	53                                              	push   ebx
  e45c19:	55                                              	push   ebp
  e45c1a:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
  e45c1e:	57                                              	push   edi
  e45c1f:	55                                              	push   ebp
  e45c20:	ff d2                                           	call   edx
  e45c22:	33 d2                                           	xor    edx,edx
  e45c24:	f7 76 0c                                        	div    DWORD PTR [esi+0xc]
  e45c27:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  e45c2a:	83 c4 04                                        	add    esp,0x4
  e45c2d:	8b da                                           	mov    ebx,edx
  e45c2f:	8b 3c 98                                        	mov    edi,DWORD PTR [eax+ebx*4]
  e45c32:	85 ff                                           	test   edi,edi
  e45c34:	74 16                                           	je     0xe45c4c
  e45c36:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  e45c38:	55                                              	push   ebp
  e45c39:	51                                              	push   ecx
  e45c3a:	ff 54 24 1c                                     	call   DWORD PTR [esp+0x1c]
  e45c3e:	83 c4 08                                        	add    esp,0x8
  e45c41:	85 c0                                           	test   eax,eax
  e45c43:	75 2d                                           	jne    0xe45c72
  e45c45:	8b 7f 08                                        	mov    edi,DWORD PTR [edi+0x8]
  e45c48:	85 ff                                           	test   edi,edi
  e45c4a:	75 ea                                           	jne    0xe45c36
  e45c4c:	e8 9f fd ff ff                                  	call   0xe459f0
  e45c51:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  e45c55:	89 28                                           	mov    DWORD PTR [eax],ebp
  e45c57:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  e45c5a:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  e45c5d:	8b 14 99                                        	mov    edx,DWORD PTR [ecx+ebx*4]
  e45c60:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  e45c63:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  e45c66:	5f                                              	pop    edi
  e45c67:	5d                                              	pop    ebp
  e45c68:	89 04 99                                        	mov    DWORD PTR [ecx+ebx*4],eax
  e45c6b:	83 46 10 01                                     	add    DWORD PTR [esi+0x10],0x1
  e45c6f:	5b                                              	pop    ebx
  e45c70:	5e                                              	pop    esi
  e45c71:	c3                                              	ret
  e45c72:	83 7c 24 20 00                                  	cmp    DWORD PTR [esp+0x20],0x0
  e45c77:	74 11                                           	je     0xe45c8a
  e45c79:	8b 46 20                                        	mov    eax,DWORD PTR [esi+0x20]
  e45c7c:	85 c0                                           	test   eax,eax
  e45c7e:	74 08                                           	je     0xe45c88
  e45c80:	8b 17                                           	mov    edx,DWORD PTR [edi]
  e45c82:	52                                              	push   edx
  e45c83:	ff d0                                           	call   eax
  e45c85:	83 c4 04                                        	add    esp,0x4
  e45c88:	89 2f                                           	mov    DWORD PTR [edi],ebp
  e45c8a:	8b 76 1c                                        	mov    esi,DWORD PTR [esi+0x1c]
  e45c8d:	85 f6                                           	test   esi,esi
  e45c8f:	74 09                                           	je     0xe45c9a
  e45c91:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
  e45c94:	50                                              	push   eax
  e45c95:	ff d6                                           	call   esi
  e45c97:	83 c4 04                                        	add    esp,0x4
  e45c9a:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  e45c9e:	89 4f 04                                        	mov    DWORD PTR [edi+0x4],ecx
  e45ca1:	5f                                              	pop    edi
  e45ca2:	5d                                              	pop    ebp
  e45ca3:	5b                                              	pop    ebx
  e45ca4:	5e                                              	pop    esi
  e45ca5:	c3                                              	ret
  e45ca6:	cc                                              	int3
  e45ca7:	cc                                              	int3
  e45ca8:	cc                                              	int3
  e45ca9:	cc                                              	int3
  e45caa:	cc                                              	int3
  e45cab:	cc                                              	int3
  e45cac:	cc                                              	int3
  e45cad:	cc                                              	int3
  e45cae:	cc                                              	int3
  e45caf:	cc                                              	int3
