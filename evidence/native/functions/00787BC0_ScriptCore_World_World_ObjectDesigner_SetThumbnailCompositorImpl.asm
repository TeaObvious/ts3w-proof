# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787bc0 (ScriptCore.World::World_ObjectDesigner_SetThumbnailCompositorImpl)
Paired Ghidra pseudocode: 00787BC0_ScriptCore_World_World_ObjectDesigner_SetThumbnailCompositorImpl.c
Window: [0x00787bc0, 0x00787c50) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787c50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787bc0: 83 ec 10 53 56 57 e8 d5 86 3a 00 8b f8 e8 be 17
00787bd0: fe ff 8d 4c 24 14 51 8b 4c 24 2c 8b f0 33 db 8d
00787be0: 54 24 1c 52 89 5c 24 1c 89 5c 24 20 8b 06 8b 50
00787bf0: 70 51 8b ce ff d2 8d 4c 24 0c 51 8b 4c 24 30 8d
00787c00: 54 24 14 52 89 5c 24 14 89 5c 24 18 8b 06 8b 50
00787c10: 70 51 8b ce ff d2 8b 44 24 0c 8b 4c 24 10 8b 54
00787c20: 24 14 50 8b 44 24 1c 51 8b 4c 24 2c 52 8b 54 24
00787c30: 2c 50 51 52 8b cf e8 45 e5 3a 00 5f 5e 5b 83 c4
00787c40: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787bc0 <.text+0x386bc0>:
  787bc0:	83 ec 10                                        	sub    esp,0x10
  787bc3:	53                                              	push   ebx
  787bc4:	56                                              	push   esi
  787bc5:	57                                              	push   edi
  787bc6:	e8 d5 86 3a 00                                  	call   0xb302a0
  787bcb:	8b f8                                           	mov    edi,eax
  787bcd:	e8 be 17 fe ff                                  	call   0x769390
  787bd2:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  787bd6:	51                                              	push   ecx
  787bd7:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  787bdb:	8b f0                                           	mov    esi,eax
  787bdd:	33 db                                           	xor    ebx,ebx
  787bdf:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  787be3:	52                                              	push   edx
  787be4:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  787be8:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  787bec:	8b 06                                           	mov    eax,DWORD PTR [esi]
  787bee:	8b 50 70                                        	mov    edx,DWORD PTR [eax+0x70]
  787bf1:	51                                              	push   ecx
  787bf2:	8b ce                                           	mov    ecx,esi
  787bf4:	ff d2                                           	call   edx
  787bf6:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  787bfa:	51                                              	push   ecx
  787bfb:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  787bff:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  787c03:	52                                              	push   edx
  787c04:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  787c08:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  787c0c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  787c0e:	8b 50 70                                        	mov    edx,DWORD PTR [eax+0x70]
  787c11:	51                                              	push   ecx
  787c12:	8b ce                                           	mov    ecx,esi
  787c14:	ff d2                                           	call   edx
  787c16:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  787c1a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  787c1e:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  787c22:	50                                              	push   eax
  787c23:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  787c27:	51                                              	push   ecx
  787c28:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  787c2c:	52                                              	push   edx
  787c2d:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  787c31:	50                                              	push   eax
  787c32:	51                                              	push   ecx
  787c33:	52                                              	push   edx
  787c34:	8b cf                                           	mov    ecx,edi
  787c36:	e8 45 e5 3a 00                                  	call   0xb36180
  787c3b:	5f                                              	pop    edi
  787c3c:	5e                                              	pop    esi
  787c3d:	5b                                              	pop    ebx
  787c3e:	83 c4 10                                        	add    esp,0x10
  787c41:	c3                                              	ret
  787c42:	cc                                              	int3
  787c43:	cc                                              	int3
  787c44:	cc                                              	int3
  787c45:	cc                                              	int3
  787c46:	cc                                              	int3
  787c47:	cc                                              	int3
  787c48:	cc                                              	int3
  787c49:	cc                                              	int3
  787c4a:	cc                                              	int3
  787c4b:	cc                                              	int3
  787c4c:	cc                                              	int3
  787c4d:	cc                                              	int3
  787c4e:	cc                                              	int3
  787c4f:	cc                                              	int3
