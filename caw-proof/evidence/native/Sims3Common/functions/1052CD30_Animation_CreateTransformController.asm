# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052cd30 (Animation_CreateTransformController)
Paired Ghidra pseudocode: 1052CD30_Animation_CreateTransformController.c
Window: [0x1052cd30, 0x1052ce30) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052ce30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052cd30: 51 53 e8 69 d4 1f 00 8b 4c 24 10 8b 54 24 0c 51
1052cd40: 52 8b c8 e8 68 de 1f 00 8b d8 85 db 0f 84 c9 00
1052cd50: 00 00 55 8d 6b 04 57 8b c5 b9 01 00 00 00 f0 0f
1052cd60: c1 08 8b 15 c4 0c c8 10 52 8b cb e8 30 a0 1f 00
1052cd70: 8b f8 85 ff 0f 84 81 00 00 00 56 6a 00 6a 00 6a
1052cd80: 00 6a 00 68 b4 99 b1 10 6a 48 e8 21 c1 3e 00 83
1052cd90: c4 18 85 c0 0f 84 84 00 00 00 8d 4f 08 51 8b c8
1052cda0: e8 4b b4 e3 ff 8b f0 85 f6 74 04 83 46 04 01 d9
1052cdb0: 05 84 e1 aa 10 8b 57 08 8b 42 14 6a 00 6a 00 6a
1052cdc0: 00 6a 01 83 ec 08 d9 54 24 04 8d 4f 08 d9 1c 24
1052cdd0: 6a 02 56 68 98 3a 00 00 ff d0 85 f6 74 1c 8b 46
1052cde0: 04 83 c0 ff 89 46 04 75 11 c7 46 04 01 00 00 00
1052cdf0: 8b 16 8b 02 6a 01 8b ce ff d0 5e 8b cd 83 ca ff
1052ce00: f0 0f c1 11 4a 75 12 b8 01 00 00 00 87 45 00 8b
1052ce10: 13 8b 02 6a 01 8b cb ff d0 5f 5d 5b 59 c3 33 f6
1052ce20: eb 8d cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052cd30 <.text+0x52bd30>:
1052cd30:	51                                              	push   ecx
1052cd31:	53                                              	push   ebx
1052cd32:	e8 69 d4 1f 00                                  	call   0x1072a1a0
1052cd37:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052cd3b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1052cd3f:	51                                              	push   ecx
1052cd40:	52                                              	push   edx
1052cd41:	8b c8                                           	mov    ecx,eax
1052cd43:	e8 68 de 1f 00                                  	call   0x1072abb0
1052cd48:	8b d8                                           	mov    ebx,eax
1052cd4a:	85 db                                           	test   ebx,ebx
1052cd4c:	0f 84 c9 00 00 00                               	je     0x1052ce1b
1052cd52:	55                                              	push   ebp
1052cd53:	8d 6b 04                                        	lea    ebp,[ebx+0x4]
1052cd56:	57                                              	push   edi
1052cd57:	8b c5                                           	mov    eax,ebp
1052cd59:	b9 01 00 00 00                                  	mov    ecx,0x1
1052cd5e:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052cd62:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052cd68:	52                                              	push   edx
1052cd69:	8b cb                                           	mov    ecx,ebx
1052cd6b:	e8 30 a0 1f 00                                  	call   0x10726da0
1052cd70:	8b f8                                           	mov    edi,eax
1052cd72:	85 ff                                           	test   edi,edi
1052cd74:	0f 84 81 00 00 00                               	je     0x1052cdfb
1052cd7a:	56                                              	push   esi
1052cd7b:	6a 00                                           	push   0x0
1052cd7d:	6a 00                                           	push   0x0
1052cd7f:	6a 00                                           	push   0x0
1052cd81:	6a 00                                           	push   0x0
1052cd83:	68 b4 99 b1 10                                  	push   0x10b199b4
1052cd88:	6a 48                                           	push   0x48
1052cd8a:	e8 21 c1 3e 00                                  	call   0x10918eb0
1052cd8f:	83 c4 18                                        	add    esp,0x18
1052cd92:	85 c0                                           	test   eax,eax
1052cd94:	0f 84 84 00 00 00                               	je     0x1052ce1e
1052cd9a:	8d 4f 08                                        	lea    ecx,[edi+0x8]
1052cd9d:	51                                              	push   ecx
1052cd9e:	8b c8                                           	mov    ecx,eax
1052cda0:	e8 4b b4 e3 ff                                  	call   0x103681f0
1052cda5:	8b f0                                           	mov    esi,eax
1052cda7:	85 f6                                           	test   esi,esi
1052cda9:	74 04                                           	je     0x1052cdaf
1052cdab:	83 46 04 01                                     	add    DWORD PTR [esi+0x4],0x1
1052cdaf:	d9 05 84 e1 aa 10                               	fld    DWORD PTR ds:0x10aae184
1052cdb5:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
1052cdb8:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1052cdbb:	6a 00                                           	push   0x0
1052cdbd:	6a 00                                           	push   0x0
1052cdbf:	6a 00                                           	push   0x0
1052cdc1:	6a 01                                           	push   0x1
1052cdc3:	83 ec 08                                        	sub    esp,0x8
1052cdc6:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
1052cdca:	8d 4f 08                                        	lea    ecx,[edi+0x8]
1052cdcd:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052cdd0:	6a 02                                           	push   0x2
1052cdd2:	56                                              	push   esi
1052cdd3:	68 98 3a 00 00                                  	push   0x3a98
1052cdd8:	ff d0                                           	call   eax
1052cdda:	85 f6                                           	test   esi,esi
1052cddc:	74 1c                                           	je     0x1052cdfa
1052cdde:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1052cde1:	83 c0 ff                                        	add    eax,0xffffffff
1052cde4:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
1052cde7:	75 11                                           	jne    0x1052cdfa
1052cde9:	c7 46 04 01 00 00 00                            	mov    DWORD PTR [esi+0x4],0x1
1052cdf0:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052cdf2:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052cdf4:	6a 01                                           	push   0x1
1052cdf6:	8b ce                                           	mov    ecx,esi
1052cdf8:	ff d0                                           	call   eax
1052cdfa:	5e                                              	pop    esi
1052cdfb:	8b cd                                           	mov    ecx,ebp
1052cdfd:	83 ca ff                                        	or     edx,0xffffffff
1052ce00:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
1052ce04:	4a                                              	dec    edx
1052ce05:	75 12                                           	jne    0x1052ce19
1052ce07:	b8 01 00 00 00                                  	mov    eax,0x1
1052ce0c:	87 45 00                                        	xchg   DWORD PTR [ebp+0x0],eax
1052ce0f:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1052ce11:	8b 02                                           	mov    eax,DWORD PTR [edx]
1052ce13:	6a 01                                           	push   0x1
1052ce15:	8b cb                                           	mov    ecx,ebx
1052ce17:	ff d0                                           	call   eax
1052ce19:	5f                                              	pop    edi
1052ce1a:	5d                                              	pop    ebp
1052ce1b:	5b                                              	pop    ebx
1052ce1c:	59                                              	pop    ecx
1052ce1d:	c3                                              	ret
1052ce1e:	33 f6                                           	xor    esi,esi
1052ce20:	eb 8d                                           	jmp    0x1052cdaf
1052ce22:	cc                                              	int3
1052ce23:	cc                                              	int3
1052ce24:	cc                                              	int3
1052ce25:	cc                                              	int3
1052ce26:	cc                                              	int3
1052ce27:	cc                                              	int3
1052ce28:	cc                                              	int3
1052ce29:	cc                                              	int3
1052ce2a:	cc                                              	int3
1052ce2b:	cc                                              	int3
1052ce2c:	cc                                              	int3
1052ce2d:	cc                                              	int3
1052ce2e:	cc                                              	int3
1052ce2f:	cc                                              	int3
