# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654b50 (Audio_StopSoundArrayImpl)
Paired Ghidra pseudocode: 10654B50_Audio_StopSoundArrayImpl.c
Window: [0x10654b50, 0x10654ba0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654ba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654b50: a1 a0 d4 c7 10 85 c0 56 57 74 3d 8d b0 30 84 fd
10654b60: ff 85 f6 74 33 8b 7c 24 0c 85 ff 74 2b 8b 06 8b
10654b70: 50 44 68 c2 0c 32 0a 8b ce ff d2 8b 06 8b 50 4c
10654b80: 57 68 85 53 47 03 8b ce ff d2 8b 06 8b 50 68 8b
10654b90: ce ff d2 5f b0 01 5e c3 5f 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
10654b50 <.text+0x653b50>:
10654b50:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
10654b55:	85 c0                                           	test   eax,eax
10654b57:	56                                              	push   esi
10654b58:	57                                              	push   edi
10654b59:	74 3d                                           	je     0x10654b98
10654b5b:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
10654b61:	85 f6                                           	test   esi,esi
10654b63:	74 33                                           	je     0x10654b98
10654b65:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
10654b69:	85 ff                                           	test   edi,edi
10654b6b:	74 2b                                           	je     0x10654b98
10654b6d:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654b6f:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10654b72:	68 c2 0c 32 0a                                  	push   0xa320cc2
10654b77:	8b ce                                           	mov    ecx,esi
10654b79:	ff d2                                           	call   edx
10654b7b:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654b7d:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
10654b80:	57                                              	push   edi
10654b81:	68 85 53 47 03                                  	push   0x3475385
10654b86:	8b ce                                           	mov    ecx,esi
10654b88:	ff d2                                           	call   edx
10654b8a:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654b8c:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
10654b8f:	8b ce                                           	mov    ecx,esi
10654b91:	ff d2                                           	call   edx
10654b93:	5f                                              	pop    edi
10654b94:	b0 01                                           	mov    al,0x1
10654b96:	5e                                              	pop    esi
10654b97:	c3                                              	ret
10654b98:	5f                                              	pop    edi
10654b99:	32 c0                                           	xor    al,al
10654b9b:	5e                                              	pop    esi
10654b9c:	c3                                              	ret
10654b9d:	cc                                              	int3
10654b9e:	cc                                              	int3
10654b9f:	cc                                              	int3
