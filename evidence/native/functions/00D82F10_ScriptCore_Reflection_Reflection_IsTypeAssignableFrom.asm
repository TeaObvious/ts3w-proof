# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d82f10 (ScriptCore.Reflection::Reflection_IsTypeAssignableFrom)
Paired Ghidra pseudocode: 00D82F10_ScriptCore_Reflection_Reflection_IsTypeAssignableFrom.c
Window: [0x00d82f10, 0x00d82f50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d82f50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d82f10: 8b 44 24 04 85 c0 74 31 8b 4c 24 08 85 c9 74 29
00d82f20: 8b 40 04 56 8b 71 04 57 50 e8 12 e1 0e 00 56 8b
00d82f30: f8 e8 0a e1 0e 00 50 57 e8 b3 d0 0e 00 83 c4 10
00d82f40: f7 d8 1b c0 5f f7 d8 5e c3 32 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
00d82f10 <.text+0x981f10>:
  d82f10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  d82f14:	85 c0                                           	test   eax,eax
  d82f16:	74 31                                           	je     0xd82f49
  d82f18:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  d82f1c:	85 c9                                           	test   ecx,ecx
  d82f1e:	74 29                                           	je     0xd82f49
  d82f20:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  d82f23:	56                                              	push   esi
  d82f24:	8b 71 04                                        	mov    esi,DWORD PTR [ecx+0x4]
  d82f27:	57                                              	push   edi
  d82f28:	50                                              	push   eax
  d82f29:	e8 12 e1 0e 00                                  	call   0xe71040
  d82f2e:	56                                              	push   esi
  d82f2f:	8b f8                                           	mov    edi,eax
  d82f31:	e8 0a e1 0e 00                                  	call   0xe71040
  d82f36:	50                                              	push   eax
  d82f37:	57                                              	push   edi
  d82f38:	e8 b3 d0 0e 00                                  	call   0xe6fff0
  d82f3d:	83 c4 10                                        	add    esp,0x10
  d82f40:	f7 d8                                           	neg    eax
  d82f42:	1b c0                                           	sbb    eax,eax
  d82f44:	5f                                              	pop    edi
  d82f45:	f7 d8                                           	neg    eax
  d82f47:	5e                                              	pop    esi
  d82f48:	c3                                              	ret
  d82f49:	32 c0                                           	xor    al,al
  d82f4b:	c3                                              	ret
  d82f4c:	cc                                              	int3
  d82f4d:	cc                                              	int3
  d82f4e:	cc                                              	int3
  d82f4f:	cc                                              	int3
