# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787c50 (ScriptCore.World::World_ObjectDesigner_SetHairSwatchCompositorImpl)
Paired Ghidra pseudocode: 00787C50_ScriptCore_World_World_ObjectDesigner_SetHairSwatchCompositorImpl.c
Window: [0x00787c50, 0x00787ca0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787c50: 83 ec 08 56 e8 47 86 3a 00 8b f0 e8 30 17 fe ff
00787c60: 33 c9 89 4c 24 04 89 4c 24 08 8b 10 8b 52 70 8d
00787c70: 4c 24 04 51 8d 4c 24 0c 51 8b 4c 24 18 51 8b c8
00787c80: ff d2 8b 44 24 04 8b 4c 24 08 50 51 8b ce e8 5d
00787c90: 87 3a 00 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787c50 <.text+0x386c50>:
  787c50:	83 ec 08                                        	sub    esp,0x8
  787c53:	56                                              	push   esi
  787c54:	e8 47 86 3a 00                                  	call   0xb302a0
  787c59:	8b f0                                           	mov    esi,eax
  787c5b:	e8 30 17 fe ff                                  	call   0x769390
  787c60:	33 c9                                           	xor    ecx,ecx
  787c62:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  787c66:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  787c6a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787c6c:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  787c6f:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  787c73:	51                                              	push   ecx
  787c74:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  787c78:	51                                              	push   ecx
  787c79:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  787c7d:	51                                              	push   ecx
  787c7e:	8b c8                                           	mov    ecx,eax
  787c80:	ff d2                                           	call   edx
  787c82:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787c86:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  787c8a:	50                                              	push   eax
  787c8b:	51                                              	push   ecx
  787c8c:	8b ce                                           	mov    ecx,esi
  787c8e:	e8 5d 87 3a 00                                  	call   0xb303f0
  787c93:	5e                                              	pop    esi
  787c94:	83 c4 08                                        	add    esp,0x8
  787c97:	c3                                              	ret
  787c98:	cc                                              	int3
  787c99:	cc                                              	int3
  787c9a:	cc                                              	int3
  787c9b:	cc                                              	int3
  787c9c:	cc                                              	int3
  787c9d:	cc                                              	int3
  787c9e:	cc                                              	int3
  787c9f:	cc                                              	int3
