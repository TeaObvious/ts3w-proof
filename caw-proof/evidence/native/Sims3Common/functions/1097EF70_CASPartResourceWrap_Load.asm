# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ef70 (CASPartResourceWrap_Load)
Paired Ghidra pseudocode: 1097EF70_CASPartResourceWrap_Load.c
Window: [0x1097ef70, 0x1097eff0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097eff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ef70: 83 ec 10 8b 44 24 18 8b 4c 24 14 8b 54 24 1c 89
1097ef80: 44 24 0c 8b 44 24 20 89 4c 24 08 89 14 24 89 44
1097ef90: 24 04 c7 44 24 14 00 00 00 00 e8 31 61 f6 ff 8b
1097efa0: 10 8b 52 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24 24
1097efb0: 51 8d 4c 24 14 51 8b c8 ff d2 84 c0 74 23 8b 4c
1097efc0: 24 14 85 c9 74 14 8b 01 8b 50 0c 68 4a c9 cd 02
1097efd0: ff d2 85 c0 75 0d 8b 4c 24 14 8b 01 8b 50 04 ff
1097efe0: d2 33 c0 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097ef70 <.text+0x97df70>:
1097ef70:	83 ec 10                                        	sub    esp,0x10
1097ef73:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1097ef77:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097ef7b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1097ef7f:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1097ef83:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1097ef87:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1097ef8b:	89 14 24                                        	mov    DWORD PTR [esp],edx
1097ef8e:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1097ef92:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1097ef9a:	e8 31 61 f6 ff                                  	call   0x108e50d0
1097ef9f:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097efa1:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1097efa4:	6a 00                                           	push   0x0
1097efa6:	6a 00                                           	push   0x0
1097efa8:	6a 00                                           	push   0x0
1097efaa:	6a 00                                           	push   0x0
1097efac:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1097efb0:	51                                              	push   ecx
1097efb1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1097efb5:	51                                              	push   ecx
1097efb6:	8b c8                                           	mov    ecx,eax
1097efb8:	ff d2                                           	call   edx
1097efba:	84 c0                                           	test   al,al
1097efbc:	74 23                                           	je     0x1097efe1
1097efbe:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097efc2:	85 c9                                           	test   ecx,ecx
1097efc4:	74 14                                           	je     0x1097efda
1097efc6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097efc8:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1097efcb:	68 4a c9 cd 02                                  	push   0x2cdc94a
1097efd0:	ff d2                                           	call   edx
1097efd2:	85 c0                                           	test   eax,eax
1097efd4:	75 0d                                           	jne    0x1097efe3
1097efd6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097efda:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097efdc:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1097efdf:	ff d2                                           	call   edx
1097efe1:	33 c0                                           	xor    eax,eax
1097efe3:	83 c4 10                                        	add    esp,0x10
1097efe6:	c3                                              	ret
1097efe7:	cc                                              	int3
1097efe8:	cc                                              	int3
1097efe9:	cc                                              	int3
1097efea:	cc                                              	int3
1097efeb:	cc                                              	int3
1097efec:	cc                                              	int3
1097efed:	cc                                              	int3
1097efee:	cc                                              	int3
1097efef:	cc                                              	int3
