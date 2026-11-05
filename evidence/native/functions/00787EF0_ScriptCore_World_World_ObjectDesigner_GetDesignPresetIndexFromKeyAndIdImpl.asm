# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787ef0 (ScriptCore.World::World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl)
Paired Ghidra pseudocode: 00787EF0_ScriptCore_World_World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl.c
Window: [0x00787ef0, 0x00787f30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787ef0: 83 ec 10 8b 4c 24 20 8b 54 24 14 8b 44 24 1c 89
00787f00: 4c 24 04 8b 4c 24 24 89 54 24 08 89 04 24 8b 44
00787f10: 24 18 51 8d 54 24 04 52 89 44 24 14 e8 7f 83 3a
00787f20: 00 8b c8 e8 f8 ab 3a 00 83 c4 10 c3 cc cc cc cc

LINEAR DISASSEMBLY
00787ef0 <.text+0x386ef0>:
  787ef0:	83 ec 10                                        	sub    esp,0x10
  787ef3:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  787ef7:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  787efb:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  787eff:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  787f03:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  787f07:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  787f0b:	89 04 24                                        	mov    DWORD PTR [esp],eax
  787f0e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  787f12:	51                                              	push   ecx
  787f13:	8d 54 24 04                                     	lea    edx,[esp+0x4]
  787f17:	52                                              	push   edx
  787f18:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  787f1c:	e8 7f 83 3a 00                                  	call   0xb302a0
  787f21:	8b c8                                           	mov    ecx,eax
  787f23:	e8 f8 ab 3a 00                                  	call   0xb32b20
  787f28:	83 c4 10                                        	add    esp,0x10
  787f2b:	c3                                              	ret
  787f2c:	cc                                              	int3
  787f2d:	cc                                              	int3
  787f2e:	cc                                              	int3
  787f2f:	cc                                              	int3
