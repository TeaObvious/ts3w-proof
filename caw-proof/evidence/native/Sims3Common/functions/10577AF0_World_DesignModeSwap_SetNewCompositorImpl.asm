# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577af0 (World_DesignModeSwap_SetNewCompositorImpl)
Paired Ghidra pseudocode: 10577AF0_World_DesignModeSwap_SetNewCompositorImpl.c
Window: [0x10577af0, 0x10577b80) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577af0: 51 53 8b 5c 24 14 85 db 75 05 32 c0 5b 59 c3 56
10577b00: 57 e8 1a 36 fe ff 8b 7c 24 14 8b f0 8b c7 25 00
10577b10: 00 00 ff 3d 00 00 00 45 75 56 8d 44 24 0c 50 8d
10577b20: 4c 24 20 c7 44 24 20 00 00 00 00 8b 16 8b 52 70
10577b30: 51 53 8b ce ff d2 83 7c 24 1c 00 74 33 83 7c 24
10577b40: 0c 00 74 2c 8b 06 8b 90 cc 00 00 00 57 8b ce ff
10577b50: d2 85 c0 74 1b 8b 4c 24 0c 8b 54 24 1c 51 8b 4c
10577b60: 24 1c 52 51 8b c8 e8 55 83 aa ff 5f 5e 5b 59 c3
10577b70: 5f 5e 32 c0 5b 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577af0 <.text+0x576af0>:
10577af0:	51                                              	push   ecx
10577af1:	53                                              	push   ebx
10577af2:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
10577af6:	85 db                                           	test   ebx,ebx
10577af8:	75 05                                           	jne    0x10577aff
10577afa:	32 c0                                           	xor    al,al
10577afc:	5b                                              	pop    ebx
10577afd:	59                                              	pop    ecx
10577afe:	c3                                              	ret
10577aff:	56                                              	push   esi
10577b00:	57                                              	push   edi
10577b01:	e8 1a 36 fe ff                                  	call   0x1055b120
10577b06:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10577b0a:	8b f0                                           	mov    esi,eax
10577b0c:	8b c7                                           	mov    eax,edi
10577b0e:	25 00 00 00 ff                                  	and    eax,0xff000000
10577b13:	3d 00 00 00 45                                  	cmp    eax,0x45000000
10577b18:	75 56                                           	jne    0x10577b70
10577b1a:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10577b1e:	50                                              	push   eax
10577b1f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10577b23:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
10577b2b:	8b 16                                           	mov    edx,DWORD PTR [esi]
10577b2d:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
10577b30:	51                                              	push   ecx
10577b31:	53                                              	push   ebx
10577b32:	8b ce                                           	mov    ecx,esi
10577b34:	ff d2                                           	call   edx
10577b36:	83 7c 24 1c 00                                  	cmp    DWORD PTR [esp+0x1c],0x0
10577b3b:	74 33                                           	je     0x10577b70
10577b3d:	83 7c 24 0c 00                                  	cmp    DWORD PTR [esp+0xc],0x0
10577b42:	74 2c                                           	je     0x10577b70
10577b44:	8b 06                                           	mov    eax,DWORD PTR [esi]
10577b46:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
10577b4c:	57                                              	push   edi
10577b4d:	8b ce                                           	mov    ecx,esi
10577b4f:	ff d2                                           	call   edx
10577b51:	85 c0                                           	test   eax,eax
10577b53:	74 1b                                           	je     0x10577b70
10577b55:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10577b59:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10577b5d:	51                                              	push   ecx
10577b5e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10577b62:	52                                              	push   edx
10577b63:	51                                              	push   ecx
10577b64:	8b c8                                           	mov    ecx,eax
10577b66:	e8 55 83 aa ff                                  	call   0x1001fec0
10577b6b:	5f                                              	pop    edi
10577b6c:	5e                                              	pop    esi
10577b6d:	5b                                              	pop    ebx
10577b6e:	59                                              	pop    ecx
10577b6f:	c3                                              	ret
10577b70:	5f                                              	pop    edi
10577b71:	5e                                              	pop    esi
10577b72:	32 c0                                           	xor    al,al
10577b74:	5b                                              	pop    ebx
10577b75:	59                                              	pop    ecx
10577b76:	c3                                              	ret
10577b77:	cc                                              	int3
10577b78:	cc                                              	int3
10577b79:	cc                                              	int3
10577b7a:	cc                                              	int3
10577b7b:	cc                                              	int3
10577b7c:	cc                                              	int3
10577b7d:	cc                                              	int3
10577b7e:	cc                                              	int3
10577b7f:	cc                                              	int3
