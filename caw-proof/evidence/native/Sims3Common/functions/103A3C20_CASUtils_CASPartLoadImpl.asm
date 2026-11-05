# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3c20 (CASUtils_CASPartLoadImpl)
Paired Ghidra pseudocode: 103A3C20_CASUtils_CASPartLoadImpl.c
Window: [0x103a3c20, 0x103a3c70) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3c70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3c20: 83 ec 58 8b 4c 24 6c 8b 54 24 60 8b 44 24 68 56
103a3c30: 89 4c 24 08 57 8d 4c 24 18 89 54 24 10 89 44 24
103a3c40: 08 8b 44 24 6c 51 8d 54 24 0c 52 89 44 24 1c e8
103a3c50: 7c e4 ff ff 8b 44 24 6c 83 c4 08 b9 12 00 00 00
103a3c60: 8d 74 24 18 8b f8 f3 a5 5f 5e 83 c4 58 c3 cc cc

LINEAR DISASSEMBLY
103a3c20 <.text+0x3a2c20>:
103a3c20:	83 ec 58                                        	sub    esp,0x58
103a3c23:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
103a3c27:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
103a3c2b:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
103a3c2f:	56                                              	push   esi
103a3c30:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
103a3c34:	57                                              	push   edi
103a3c35:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
103a3c39:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
103a3c3d:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
103a3c41:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
103a3c45:	51                                              	push   ecx
103a3c46:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
103a3c4a:	52                                              	push   edx
103a3c4b:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
103a3c4f:	e8 7c e4 ff ff                                  	call   0x103a20d0
103a3c54:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
103a3c58:	83 c4 08                                        	add    esp,0x8
103a3c5b:	b9 12 00 00 00                                  	mov    ecx,0x12
103a3c60:	8d 74 24 18                                     	lea    esi,[esp+0x18]
103a3c64:	8b f8                                           	mov    edi,eax
103a3c66:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
103a3c68:	5f                                              	pop    edi
103a3c69:	5e                                              	pop    esi
103a3c6a:	83 c4 58                                        	add    esp,0x58
103a3c6d:	c3                                              	ret
103a3c6e:	cc                                              	int3
103a3c6f:	cc                                              	int3
