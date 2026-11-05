# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787d40 (ScriptCore.World::World_ObjectDesigner_GetPatternThumbnailImpl)
Paired Ghidra pseudocode: 00787D40_ScriptCore_World_World_ObjectDesigner_GetPatternThumbnailImpl.c
Window: [0x00787d40, 0x00787db0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787d40: 83 ec 08 56 e8 57 85 3a 00 8b f0 e8 40 16 fe ff
00787d50: 8b 4c 24 20 33 d2 3b ca 89 54 24 04 89 54 24 08
00787d60: 74 16 8b 10 57 8d 7c 24 08 57 8d 7c 24 10 57 51
00787d70: 8b c8 8b 42 70 ff d0 5f 8b 4c 24 04 8b 54 24 08
00787d80: 8b 44 24 1c 51 8b 4c 24 1c 52 8b 54 24 1c 50 8b
00787d90: 44 24 1c 51 52 50 8b ce e8 53 ea 3a 00 5e 83 c4
00787da0: 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787d40 <.text+0x386d40>:
  787d40:	83 ec 08                                        	sub    esp,0x8
  787d43:	56                                              	push   esi
  787d44:	e8 57 85 3a 00                                  	call   0xb302a0
  787d49:	8b f0                                           	mov    esi,eax
  787d4b:	e8 40 16 fe ff                                  	call   0x769390
  787d50:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  787d54:	33 d2                                           	xor    edx,edx
  787d56:	3b ca                                           	cmp    ecx,edx
  787d58:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  787d5c:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  787d60:	74 16                                           	je     0x787d78
  787d62:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787d64:	57                                              	push   edi
  787d65:	8d 7c 24 08                                     	lea    edi,[esp+0x8]
  787d69:	57                                              	push   edi
  787d6a:	8d 7c 24 10                                     	lea    edi,[esp+0x10]
  787d6e:	57                                              	push   edi
  787d6f:	51                                              	push   ecx
  787d70:	8b c8                                           	mov    ecx,eax
  787d72:	8b 42 70                                        	mov    eax,DWORD PTR [edx+0x70]
  787d75:	ff d0                                           	call   eax
  787d77:	5f                                              	pop    edi
  787d78:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  787d7c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  787d80:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  787d84:	51                                              	push   ecx
  787d85:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  787d89:	52                                              	push   edx
  787d8a:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  787d8e:	50                                              	push   eax
  787d8f:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  787d93:	51                                              	push   ecx
  787d94:	52                                              	push   edx
  787d95:	50                                              	push   eax
  787d96:	8b ce                                           	mov    ecx,esi
  787d98:	e8 53 ea 3a 00                                  	call   0xb367f0
  787d9d:	5e                                              	pop    esi
  787d9e:	83 c4 08                                        	add    esp,0x8
  787da1:	c3                                              	ret
  787da2:	cc                                              	int3
  787da3:	cc                                              	int3
  787da4:	cc                                              	int3
  787da5:	cc                                              	int3
  787da6:	cc                                              	int3
  787da7:	cc                                              	int3
  787da8:	cc                                              	int3
  787da9:	cc                                              	int3
  787daa:	cc                                              	int3
  787dab:	cc                                              	int3
  787dac:	cc                                              	int3
  787dad:	cc                                              	int3
  787dae:	cc                                              	int3
  787daf:	cc                                              	int3
