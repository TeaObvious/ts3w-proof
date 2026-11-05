# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577c50 (World_DesignModeSwap_StartMaterialBuildImpl)
Paired Ghidra pseudocode: 10577C50_World_DesignModeSwap_StartMaterialBuildImpl.c
Window: [0x10577c50, 0x10577cb0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577c50: 57 8b 7c 24 0c 85 ff 75 04 32 c0 5f c3 53 56 e8
10577c60: bc 34 fe ff 8b 5c 24 10 8b f0 8b c3 25 00 00 00
10577c70: ff 3d 00 00 00 45 75 1d 8b 16 8b 42 58 57 8b ce
10577c80: ff d0 8b 16 8b f8 8b 82 cc 00 00 00 53 8b ce ff
10577c90: d0 85 c0 75 06 5e 5b 32 c0 5f c3 57 8b c8 e8 7d
10577ca0: 8d aa ff 5e 5b 5f c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577c50 <.text+0x576c50>:
10577c50:	57                                              	push   edi
10577c51:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
10577c55:	85 ff                                           	test   edi,edi
10577c57:	75 04                                           	jne    0x10577c5d
10577c59:	32 c0                                           	xor    al,al
10577c5b:	5f                                              	pop    edi
10577c5c:	c3                                              	ret
10577c5d:	53                                              	push   ebx
10577c5e:	56                                              	push   esi
10577c5f:	e8 bc 34 fe ff                                  	call   0x1055b120
10577c64:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
10577c68:	8b f0                                           	mov    esi,eax
10577c6a:	8b c3                                           	mov    eax,ebx
10577c6c:	25 00 00 00 ff                                  	and    eax,0xff000000
10577c71:	3d 00 00 00 45                                  	cmp    eax,0x45000000
10577c76:	75 1d                                           	jne    0x10577c95
10577c78:	8b 16                                           	mov    edx,DWORD PTR [esi]
10577c7a:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
10577c7d:	57                                              	push   edi
10577c7e:	8b ce                                           	mov    ecx,esi
10577c80:	ff d0                                           	call   eax
10577c82:	8b 16                                           	mov    edx,DWORD PTR [esi]
10577c84:	8b f8                                           	mov    edi,eax
10577c86:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10577c8c:	53                                              	push   ebx
10577c8d:	8b ce                                           	mov    ecx,esi
10577c8f:	ff d0                                           	call   eax
10577c91:	85 c0                                           	test   eax,eax
10577c93:	75 06                                           	jne    0x10577c9b
10577c95:	5e                                              	pop    esi
10577c96:	5b                                              	pop    ebx
10577c97:	32 c0                                           	xor    al,al
10577c99:	5f                                              	pop    edi
10577c9a:	c3                                              	ret
10577c9b:	57                                              	push   edi
10577c9c:	8b c8                                           	mov    ecx,eax
10577c9e:	e8 7d 8d aa ff                                  	call   0x10020a20
10577ca3:	5e                                              	pop    esi
10577ca4:	5b                                              	pop    ebx
10577ca5:	5f                                              	pop    edi
10577ca6:	c3                                              	ret
10577ca7:	cc                                              	int3
10577ca8:	cc                                              	int3
10577ca9:	cc                                              	int3
10577caa:	cc                                              	int3
10577cab:	cc                                              	int3
10577cac:	cc                                              	int3
10577cad:	cc                                              	int3
10577cae:	cc                                              	int3
10577caf:	cc                                              	int3
