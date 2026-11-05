# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055ecc0 (Simulator_DestroyObjectImpl)
Paired Ghidra pseudocode: 1055ECC0_Simulator_DestroyObjectImpl.c
Window: [0x1055ecc0, 0x1055ed30) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055ed30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055ecc0: e8 5b c4 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
1055ecd0: d0 8b 4c 24 08 8b 10 8b 52 0c 51 8b 4c 24 08 51
1055ece0: 8b c8 ff d2 c3 cc cc cc cc cc cc cc cc cc cc cc
1055ecf0: 8b 44 24 04 8b 4c 24 08 53 56 8b 30 8b 01 57 6a
1055ed00: 02 50 e8 a9 1e 3b 00 6a 02 56 8b d8 8b fa e8 9d
1055ed10: 1e 3b 00 83 c4 10 3b d7 7c 0c 7f 04 3b c3 76 06
1055ed20: 5f 5e b0 01 5b c3 5f 5e 32 c0 5b c3 cc cc cc cc

LINEAR DISASSEMBLY
1055ecc0 <.text+0x55dcc0>:
1055ecc0:	e8 5b c4 ff ff                                  	call   0x1055b120
1055ecc5:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055ecc7:	8b c8                                           	mov    ecx,eax
1055ecc9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055eccf:	ff d0                                           	call   eax
1055ecd1:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055ecd5:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055ecd7:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1055ecda:	51                                              	push   ecx
1055ecdb:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055ecdf:	51                                              	push   ecx
1055ece0:	8b c8                                           	mov    ecx,eax
1055ece2:	ff d2                                           	call   edx
1055ece4:	c3                                              	ret
1055ece5:	cc                                              	int3
1055ece6:	cc                                              	int3
1055ece7:	cc                                              	int3
1055ece8:	cc                                              	int3
1055ece9:	cc                                              	int3
1055ecea:	cc                                              	int3
1055eceb:	cc                                              	int3
1055ecec:	cc                                              	int3
1055eced:	cc                                              	int3
1055ecee:	cc                                              	int3
1055ecef:	cc                                              	int3
1055ecf0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1055ecf4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055ecf8:	53                                              	push   ebx
1055ecf9:	56                                              	push   esi
1055ecfa:	8b 30                                           	mov    esi,DWORD PTR [eax]
1055ecfc:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1055ecfe:	57                                              	push   edi
1055ecff:	6a 02                                           	push   0x2
1055ed01:	50                                              	push   eax
1055ed02:	e8 a9 1e 3b 00                                  	call   0x10910bb0
1055ed07:	6a 02                                           	push   0x2
1055ed09:	56                                              	push   esi
1055ed0a:	8b d8                                           	mov    ebx,eax
1055ed0c:	8b fa                                           	mov    edi,edx
1055ed0e:	e8 9d 1e 3b 00                                  	call   0x10910bb0
1055ed13:	83 c4 10                                        	add    esp,0x10
1055ed16:	3b d7                                           	cmp    edx,edi
1055ed18:	7c 0c                                           	jl     0x1055ed26
1055ed1a:	7f 04                                           	jg     0x1055ed20
1055ed1c:	3b c3                                           	cmp    eax,ebx
1055ed1e:	76 06                                           	jbe    0x1055ed26
1055ed20:	5f                                              	pop    edi
1055ed21:	5e                                              	pop    esi
1055ed22:	b0 01                                           	mov    al,0x1
1055ed24:	5b                                              	pop    ebx
1055ed25:	c3                                              	ret
1055ed26:	5f                                              	pop    edi
1055ed27:	5e                                              	pop    esi
1055ed28:	32 c0                                           	xor    al,al
1055ed2a:	5b                                              	pop    ebx
1055ed2b:	c3                                              	ret
1055ed2c:	cc                                              	int3
1055ed2d:	cc                                              	int3
1055ed2e:	cc                                              	int3
1055ed2f:	cc                                              	int3
