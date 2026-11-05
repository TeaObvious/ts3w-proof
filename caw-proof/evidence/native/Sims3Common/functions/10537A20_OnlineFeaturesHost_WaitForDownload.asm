# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537a20 (OnlineFeaturesHost_WaitForDownload)
Paired Ghidra pseudocode: 10537A20_OnlineFeaturesHost_WaitForDownload.c
Window: [0x10537a20, 0x10537b10) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537a20: 53 56 57 e8 f8 36 02 00 8b f0 8b 06 8b 90 18 01
10537a30: 00 00 8b ce ff d2 6a 00 6a 00 6a 00 6a 00 68 d8
10537a40: ae b1 10 6a 28 8b f8 8b da e8 62 14 3e 00 83 c4
10537a50: 18 85 c0 74 6b 8b 4c 24 18 8b 54 24 14 55 51 8b
10537a60: 4c 24 18 52 51 53 57 8b c8 e8 a2 fc ff ff 8b e8
10537a70: 85 ed 74 4b 8b 55 00 8b 42 04 8b cd ff d0 8b 0d
10537a80: 90 f5 c8 10 55 e8 d6 c2 2e 00 84 c0 74 23 8b 44
10537a90: 24 1c 8b 16 8b 92 20 01 00 00 6a 00 50 6a ff 53
10537aa0: 57 8b ce ff d2 8b 06 8b 90 1c 01 00 00 8b ce ff
10537ab0: d2 8b 45 00 8b 50 08 8b cd 5d 5f 5e 5b ff e2 5d
10537ac0: 5f 5e 5b c3 cc cc cc cc cc cc cc cc cc cc cc cc
10537ad0: 83 e9 14 e9 48 4e ff ff cc cc cc cc cc cc cc cc
10537ae0: 83 e9 10 e9 38 cf b8 ff cc cc cc cc cc cc cc cc
10537af0: 83 e9 14 e9 28 cf b8 ff cc cc cc cc cc cc cc cc
10537b00: 83 e9 10 e9 18 4e ff ff cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10537a20 <.text+0x536a20>:
10537a20:	53                                              	push   ebx
10537a21:	56                                              	push   esi
10537a22:	57                                              	push   edi
10537a23:	e8 f8 36 02 00                                  	call   0x1055b120
10537a28:	8b f0                                           	mov    esi,eax
10537a2a:	8b 06                                           	mov    eax,DWORD PTR [esi]
10537a2c:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
10537a32:	8b ce                                           	mov    ecx,esi
10537a34:	ff d2                                           	call   edx
10537a36:	6a 00                                           	push   0x0
10537a38:	6a 00                                           	push   0x0
10537a3a:	6a 00                                           	push   0x0
10537a3c:	6a 00                                           	push   0x0
10537a3e:	68 d8 ae b1 10                                  	push   0x10b1aed8
10537a43:	6a 28                                           	push   0x28
10537a45:	8b f8                                           	mov    edi,eax
10537a47:	8b da                                           	mov    ebx,edx
10537a49:	e8 62 14 3e 00                                  	call   0x10918eb0
10537a4e:	83 c4 18                                        	add    esp,0x18
10537a51:	85 c0                                           	test   eax,eax
10537a53:	74 6b                                           	je     0x10537ac0
10537a55:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10537a59:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10537a5d:	55                                              	push   ebp
10537a5e:	51                                              	push   ecx
10537a5f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10537a63:	52                                              	push   edx
10537a64:	51                                              	push   ecx
10537a65:	53                                              	push   ebx
10537a66:	57                                              	push   edi
10537a67:	8b c8                                           	mov    ecx,eax
10537a69:	e8 a2 fc ff ff                                  	call   0x10537710
10537a6e:	8b e8                                           	mov    ebp,eax
10537a70:	85 ed                                           	test   ebp,ebp
10537a72:	74 4b                                           	je     0x10537abf
10537a74:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
10537a77:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10537a7a:	8b cd                                           	mov    ecx,ebp
10537a7c:	ff d0                                           	call   eax
10537a7e:	8b 0d 90 f5 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8f590
10537a84:	55                                              	push   ebp
10537a85:	e8 d6 c2 2e 00                                  	call   0x10823d60
10537a8a:	84 c0                                           	test   al,al
10537a8c:	74 23                                           	je     0x10537ab1
10537a8e:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10537a92:	8b 16                                           	mov    edx,DWORD PTR [esi]
10537a94:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
10537a9a:	6a 00                                           	push   0x0
10537a9c:	50                                              	push   eax
10537a9d:	6a ff                                           	push   0xffffffff
10537a9f:	53                                              	push   ebx
10537aa0:	57                                              	push   edi
10537aa1:	8b ce                                           	mov    ecx,esi
10537aa3:	ff d2                                           	call   edx
10537aa5:	8b 06                                           	mov    eax,DWORD PTR [esi]
10537aa7:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
10537aad:	8b ce                                           	mov    ecx,esi
10537aaf:	ff d2                                           	call   edx
10537ab1:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
10537ab4:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10537ab7:	8b cd                                           	mov    ecx,ebp
10537ab9:	5d                                              	pop    ebp
10537aba:	5f                                              	pop    edi
10537abb:	5e                                              	pop    esi
10537abc:	5b                                              	pop    ebx
10537abd:	ff e2                                           	jmp    edx
10537abf:	5d                                              	pop    ebp
10537ac0:	5f                                              	pop    edi
10537ac1:	5e                                              	pop    esi
10537ac2:	5b                                              	pop    ebx
10537ac3:	c3                                              	ret
10537ac4:	cc                                              	int3
10537ac5:	cc                                              	int3
10537ac6:	cc                                              	int3
10537ac7:	cc                                              	int3
10537ac8:	cc                                              	int3
10537ac9:	cc                                              	int3
10537aca:	cc                                              	int3
10537acb:	cc                                              	int3
10537acc:	cc                                              	int3
10537acd:	cc                                              	int3
10537ace:	cc                                              	int3
10537acf:	cc                                              	int3
10537ad0:	83 e9 14                                        	sub    ecx,0x14
10537ad3:	e9 48 4e ff ff                                  	jmp    0x1052c920
10537ad8:	cc                                              	int3
10537ad9:	cc                                              	int3
10537ada:	cc                                              	int3
10537adb:	cc                                              	int3
10537adc:	cc                                              	int3
10537add:	cc                                              	int3
10537ade:	cc                                              	int3
10537adf:	cc                                              	int3
10537ae0:	83 e9 10                                        	sub    ecx,0x10
10537ae3:	e9 38 cf b8 ff                                  	jmp    0x100c4a20
10537ae8:	cc                                              	int3
10537ae9:	cc                                              	int3
10537aea:	cc                                              	int3
10537aeb:	cc                                              	int3
10537aec:	cc                                              	int3
10537aed:	cc                                              	int3
10537aee:	cc                                              	int3
10537aef:	cc                                              	int3
10537af0:	83 e9 14                                        	sub    ecx,0x14
10537af3:	e9 28 cf b8 ff                                  	jmp    0x100c4a20
10537af8:	cc                                              	int3
10537af9:	cc                                              	int3
10537afa:	cc                                              	int3
10537afb:	cc                                              	int3
10537afc:	cc                                              	int3
10537afd:	cc                                              	int3
10537afe:	cc                                              	int3
10537aff:	cc                                              	int3
10537b00:	83 e9 10                                        	sub    ecx,0x10
10537b03:	e9 18 4e ff ff                                  	jmp    0x1052c920
10537b08:	cc                                              	int3
10537b09:	cc                                              	int3
10537b0a:	cc                                              	int3
10537b0b:	cc                                              	int3
10537b0c:	cc                                              	int3
10537b0d:	cc                                              	int3
10537b0e:	cc                                              	int3
10537b0f:	cc                                              	int3
