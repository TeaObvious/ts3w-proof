# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787f70 (ScriptCore.World::World_ObjectDesigner_SetDesignPresetCompositorImpl)
Paired Ghidra pseudocode: 00787F70_ScriptCore_World_World_ObjectDesigner_SetDesignPresetCompositorImpl.c
Window: [0x00787f70, 0x00787fc0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787f70: 83 ec 08 56 e8 27 83 3a 00 8b f0 e8 10 14 fe ff
00787f80: 33 c9 89 4c 24 04 89 4c 24 08 8b 10 8b 52 70 8d
00787f90: 4c 24 04 51 8d 4c 24 0c 51 8b 4c 24 18 51 8b c8
00787fa0: ff d2 8b 44 24 04 8b 4c 24 08 50 51 8b ce e8 5d
00787fb0: 83 3a 00 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787f70 <.text+0x386f70>:
  787f70:	83 ec 08                                        	sub    esp,0x8
  787f73:	56                                              	push   esi
  787f74:	e8 27 83 3a 00                                  	call   0xb302a0
  787f79:	8b f0                                           	mov    esi,eax
  787f7b:	e8 10 14 fe ff                                  	call   0x769390
  787f80:	33 c9                                           	xor    ecx,ecx
  787f82:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  787f86:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  787f8a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787f8c:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  787f8f:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  787f93:	51                                              	push   ecx
  787f94:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  787f98:	51                                              	push   ecx
  787f99:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  787f9d:	51                                              	push   ecx
  787f9e:	8b c8                                           	mov    ecx,eax
  787fa0:	ff d2                                           	call   edx
  787fa2:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787fa6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  787faa:	50                                              	push   eax
  787fab:	51                                              	push   ecx
  787fac:	8b ce                                           	mov    ecx,esi
  787fae:	e8 5d 83 3a 00                                  	call   0xb30310
  787fb3:	5e                                              	pop    esi
  787fb4:	83 c4 08                                        	add    esp,0x8
  787fb7:	c3                                              	ret
  787fb8:	cc                                              	int3
  787fb9:	cc                                              	int3
  787fba:	cc                                              	int3
  787fbb:	cc                                              	int3
  787fbc:	cc                                              	int3
  787fbd:	cc                                              	int3
  787fbe:	cc                                              	int3
  787fbf:	cc                                              	int3
