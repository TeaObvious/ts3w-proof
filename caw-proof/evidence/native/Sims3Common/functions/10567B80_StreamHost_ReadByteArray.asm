# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567b80 (StreamHost_ReadByteArray)
Paired Ghidra pseudocode: 10567B80_StreamHost_ReadByteArray.c
Window: [0x10567b80, 0x10567c60) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567b80: 51 56 8b 74 24 0c 3b 35 a4 b0 c7 10 75 08 8b 35
10567b90: a8 b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d 00 00
10567ba0: 00 60 74 04 33 f6 eb 23 e8 73 35 ff ff 8b 10 8b
10567bb0: c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3 a8
10567bc0: b0 c7 10 89 35 a4 b0 c7 10 8b f0 85 f6 75 06 8d
10567bd0: 46 fe 5e 59 c3 57 8b 7c 24 14 85 ff 75 07 8d 47
10567be0: fa 5f 5e 59 c3 e8 36 35 ff ff 8d 4c 24 10 51 8d
10567bf0: 4c 24 0c c7 44 24 14 00 00 00 00 c7 44 24 0c 00
10567c00: 00 00 00 8b 10 8b 52 70 51 57 8b c8 ff d2 8b 44
10567c10: 24 18 85 c0 7c 3f 8b 54 24 1c 85 d2 7c 37 8b 4c
10567c20: 24 10 3b c1 7f 2f 2b c8 3b ca 7c 29 85 d2 75 06
10567c30: 5f 33 c0 5e 59 c3 8b 4c 24 08 8b 3e 52 8b 57 30
10567c40: 03 c8 51 8b ce ff d2 83 f8 ff 75 0e 5f b8 fd ff
10567c50: ff ff 5e 59 c3 b8 f9 ff ff ff 5f 5e 59 c3 cc cc

LINEAR DISASSEMBLY
10567b80 <.text+0x566b80>:
10567b80:	51                                              	push   ecx
10567b81:	56                                              	push   esi
10567b82:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
10567b86:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
10567b8c:	75 08                                           	jne    0x10567b96
10567b8e:	8b 35 a8 b0 c7 10                               	mov    esi,DWORD PTR ds:0x10c7b0a8
10567b94:	eb 35                                           	jmp    0x10567bcb
10567b96:	8b c6                                           	mov    eax,esi
10567b98:	25 00 00 00 ff                                  	and    eax,0xff000000
10567b9d:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567ba2:	74 04                                           	je     0x10567ba8
10567ba4:	33 f6                                           	xor    esi,esi
10567ba6:	eb 23                                           	jmp    0x10567bcb
10567ba8:	e8 73 35 ff ff                                  	call   0x1055b120
10567bad:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567baf:	8b c8                                           	mov    ecx,eax
10567bb1:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567bb7:	56                                              	push   esi
10567bb8:	ff d0                                           	call   eax
10567bba:	85 c0                                           	test   eax,eax
10567bbc:	74 0b                                           	je     0x10567bc9
10567bbe:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567bc3:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10567bc9:	8b f0                                           	mov    esi,eax
10567bcb:	85 f6                                           	test   esi,esi
10567bcd:	75 06                                           	jne    0x10567bd5
10567bcf:	8d 46 fe                                        	lea    eax,[esi-0x2]
10567bd2:	5e                                              	pop    esi
10567bd3:	59                                              	pop    ecx
10567bd4:	c3                                              	ret
10567bd5:	57                                              	push   edi
10567bd6:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10567bda:	85 ff                                           	test   edi,edi
10567bdc:	75 07                                           	jne    0x10567be5
10567bde:	8d 47 fa                                        	lea    eax,[edi-0x6]
10567be1:	5f                                              	pop    edi
10567be2:	5e                                              	pop    esi
10567be3:	59                                              	pop    ecx
10567be4:	c3                                              	ret
10567be5:	e8 36 35 ff ff                                  	call   0x1055b120
10567bea:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10567bee:	51                                              	push   ecx
10567bef:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10567bf3:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
10567bfb:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
10567c03:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567c05:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
10567c08:	51                                              	push   ecx
10567c09:	57                                              	push   edi
10567c0a:	8b c8                                           	mov    ecx,eax
10567c0c:	ff d2                                           	call   edx
10567c0e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10567c12:	85 c0                                           	test   eax,eax
10567c14:	7c 3f                                           	jl     0x10567c55
10567c16:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10567c1a:	85 d2                                           	test   edx,edx
10567c1c:	7c 37                                           	jl     0x10567c55
10567c1e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10567c22:	3b c1                                           	cmp    eax,ecx
10567c24:	7f 2f                                           	jg     0x10567c55
10567c26:	2b c8                                           	sub    ecx,eax
10567c28:	3b ca                                           	cmp    ecx,edx
10567c2a:	7c 29                                           	jl     0x10567c55
10567c2c:	85 d2                                           	test   edx,edx
10567c2e:	75 06                                           	jne    0x10567c36
10567c30:	5f                                              	pop    edi
10567c31:	33 c0                                           	xor    eax,eax
10567c33:	5e                                              	pop    esi
10567c34:	59                                              	pop    ecx
10567c35:	c3                                              	ret
10567c36:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10567c3a:	8b 3e                                           	mov    edi,DWORD PTR [esi]
10567c3c:	52                                              	push   edx
10567c3d:	8b 57 30                                        	mov    edx,DWORD PTR [edi+0x30]
10567c40:	03 c8                                           	add    ecx,eax
10567c42:	51                                              	push   ecx
10567c43:	8b ce                                           	mov    ecx,esi
10567c45:	ff d2                                           	call   edx
10567c47:	83 f8 ff                                        	cmp    eax,0xffffffff
10567c4a:	75 0e                                           	jne    0x10567c5a
10567c4c:	5f                                              	pop    edi
10567c4d:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
10567c52:	5e                                              	pop    esi
10567c53:	59                                              	pop    ecx
10567c54:	c3                                              	ret
10567c55:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
10567c5a:	5f                                              	pop    edi
10567c5b:	5e                                              	pop    esi
10567c5c:	59                                              	pop    ecx
10567c5d:	c3                                              	ret
10567c5e:	cc                                              	int3
10567c5f:	cc                                              	int3
