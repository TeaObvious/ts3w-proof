# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577b80 (World_DesignModeSwap_SetNewPatternImpl)
Paired Ghidra pseudocode: 10577B80_World_DesignModeSwap_SetNewPatternImpl.c
Window: [0x10577b80, 0x10577c10) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577b80: 51 53 8b 5c 24 14 85 db 75 05 32 c0 5b 59 c3 56
10577b90: 57 e8 8a 35 fe ff 8b 7c 24 14 8b f0 8b c7 25 00
10577ba0: 00 00 ff 3d 00 00 00 45 75 56 8d 44 24 0c 50 8d
10577bb0: 4c 24 20 c7 44 24 20 00 00 00 00 8b 16 8b 52 70
10577bc0: 51 53 8b ce ff d2 83 7c 24 1c 00 74 33 83 7c 24
10577bd0: 0c 00 74 2c 8b 06 8b 90 cc 00 00 00 57 8b ce ff
10577be0: d2 85 c0 74 1b 8b 4c 24 0c 8b 54 24 1c 51 8b 4c
10577bf0: 24 1c 52 51 8b c8 e8 c5 7f aa ff 5f 5e 5b 59 c3
10577c00: 5f 5e 32 c0 5b 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577b80 <.text+0x576b80>:
10577b80:	51                                              	push   ecx
10577b81:	53                                              	push   ebx
10577b82:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
10577b86:	85 db                                           	test   ebx,ebx
10577b88:	75 05                                           	jne    0x10577b8f
10577b8a:	32 c0                                           	xor    al,al
10577b8c:	5b                                              	pop    ebx
10577b8d:	59                                              	pop    ecx
10577b8e:	c3                                              	ret
10577b8f:	56                                              	push   esi
10577b90:	57                                              	push   edi
10577b91:	e8 8a 35 fe ff                                  	call   0x1055b120
10577b96:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10577b9a:	8b f0                                           	mov    esi,eax
10577b9c:	8b c7                                           	mov    eax,edi
10577b9e:	25 00 00 00 ff                                  	and    eax,0xff000000
10577ba3:	3d 00 00 00 45                                  	cmp    eax,0x45000000
10577ba8:	75 56                                           	jne    0x10577c00
10577baa:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10577bae:	50                                              	push   eax
10577baf:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10577bb3:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
10577bbb:	8b 16                                           	mov    edx,DWORD PTR [esi]
10577bbd:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
10577bc0:	51                                              	push   ecx
10577bc1:	53                                              	push   ebx
10577bc2:	8b ce                                           	mov    ecx,esi
10577bc4:	ff d2                                           	call   edx
10577bc6:	83 7c 24 1c 00                                  	cmp    DWORD PTR [esp+0x1c],0x0
10577bcb:	74 33                                           	je     0x10577c00
10577bcd:	83 7c 24 0c 00                                  	cmp    DWORD PTR [esp+0xc],0x0
10577bd2:	74 2c                                           	je     0x10577c00
10577bd4:	8b 06                                           	mov    eax,DWORD PTR [esi]
10577bd6:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
10577bdc:	57                                              	push   edi
10577bdd:	8b ce                                           	mov    ecx,esi
10577bdf:	ff d2                                           	call   edx
10577be1:	85 c0                                           	test   eax,eax
10577be3:	74 1b                                           	je     0x10577c00
10577be5:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10577be9:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10577bed:	51                                              	push   ecx
10577bee:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10577bf2:	52                                              	push   edx
10577bf3:	51                                              	push   ecx
10577bf4:	8b c8                                           	mov    ecx,eax
10577bf6:	e8 c5 7f aa ff                                  	call   0x1001fbc0
10577bfb:	5f                                              	pop    edi
10577bfc:	5e                                              	pop    esi
10577bfd:	5b                                              	pop    ebx
10577bfe:	59                                              	pop    ecx
10577bff:	c3                                              	ret
10577c00:	5f                                              	pop    edi
10577c01:	5e                                              	pop    esi
10577c02:	32 c0                                           	xor    al,al
10577c04:	5b                                              	pop    ebx
10577c05:	59                                              	pop    ecx
10577c06:	c3                                              	ret
10577c07:	cc                                              	int3
10577c08:	cc                                              	int3
10577c09:	cc                                              	int3
10577c0a:	cc                                              	int3
10577c0b:	cc                                              	int3
10577c0c:	cc                                              	int3
10577c0d:	cc                                              	int3
10577c0e:	cc                                              	int3
10577c0f:	cc                                              	int3
