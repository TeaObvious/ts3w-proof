# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787cd0 (ScriptCore.World::World_ObjectDesigner_CreateLargePatternThumbnailImpl)
Paired Ghidra pseudocode: 00787CD0_ScriptCore_World_World_ObjectDesigner_CreateLargePatternThumbnailImpl.c
Window: [0x00787cd0, 0x00787d40) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787cd0: 83 ec 08 56 e8 c7 85 3a 00 8b f0 e8 b0 16 fe ff
00787ce0: 8b 4c 24 20 33 d2 3b ca 89 54 24 04 89 54 24 08
00787cf0: 74 16 8b 10 57 8d 7c 24 08 57 8d 7c 24 10 57 51
00787d00: 8b c8 8b 42 70 ff d0 5f 8b 4c 24 04 8b 54 24 08
00787d10: 8b 44 24 1c 51 8b 4c 24 1c 52 8b 54 24 1c 50 8b
00787d20: 44 24 1c 51 52 50 8b ce e8 33 c2 3a 00 5e 83 c4
00787d30: 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787cd0 <.text+0x386cd0>:
  787cd0:	83 ec 08                                        	sub    esp,0x8
  787cd3:	56                                              	push   esi
  787cd4:	e8 c7 85 3a 00                                  	call   0xb302a0
  787cd9:	8b f0                                           	mov    esi,eax
  787cdb:	e8 b0 16 fe ff                                  	call   0x769390
  787ce0:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  787ce4:	33 d2                                           	xor    edx,edx
  787ce6:	3b ca                                           	cmp    ecx,edx
  787ce8:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  787cec:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  787cf0:	74 16                                           	je     0x787d08
  787cf2:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787cf4:	57                                              	push   edi
  787cf5:	8d 7c 24 08                                     	lea    edi,[esp+0x8]
  787cf9:	57                                              	push   edi
  787cfa:	8d 7c 24 10                                     	lea    edi,[esp+0x10]
  787cfe:	57                                              	push   edi
  787cff:	51                                              	push   ecx
  787d00:	8b c8                                           	mov    ecx,eax
  787d02:	8b 42 70                                        	mov    eax,DWORD PTR [edx+0x70]
  787d05:	ff d0                                           	call   eax
  787d07:	5f                                              	pop    edi
  787d08:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  787d0c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  787d10:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  787d14:	51                                              	push   ecx
  787d15:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  787d19:	52                                              	push   edx
  787d1a:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  787d1e:	50                                              	push   eax
  787d1f:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  787d23:	51                                              	push   ecx
  787d24:	52                                              	push   edx
  787d25:	50                                              	push   eax
  787d26:	8b ce                                           	mov    ecx,esi
  787d28:	e8 33 c2 3a 00                                  	call   0xb33f60
  787d2d:	5e                                              	pop    esi
  787d2e:	83 c4 08                                        	add    esp,0x8
  787d31:	c3                                              	ret
  787d32:	cc                                              	int3
  787d33:	cc                                              	int3
  787d34:	cc                                              	int3
  787d35:	cc                                              	int3
  787d36:	cc                                              	int3
  787d37:	cc                                              	int3
  787d38:	cc                                              	int3
  787d39:	cc                                              	int3
  787d3a:	cc                                              	int3
  787d3b:	cc                                              	int3
  787d3c:	cc                                              	int3
  787d3d:	cc                                              	int3
  787d3e:	cc                                              	int3
  787d3f:	cc                                              	int3
