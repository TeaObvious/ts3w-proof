# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787f30 (ScriptCore.World::World_ObjectDesigner_GetDesignPresetIdFromIndexImpl)
Paired Ghidra pseudocode: 00787F30_ScriptCore_World_World_ObjectDesigner_GetDesignPresetIdFromIndexImpl.c
Window: [0x00787f30, 0x00787f50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787f50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787f30: 8b 44 24 04 50 e8 66 83 3a 00 8b c8 e8 9f 91 3a
00787f40: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787f30 <.text+0x386f30>:
  787f30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787f34:	50                                              	push   eax
  787f35:	e8 66 83 3a 00                                  	call   0xb302a0
  787f3a:	8b c8                                           	mov    ecx,eax
  787f3c:	e8 9f 91 3a 00                                  	call   0xb310e0
  787f41:	c3                                              	ret
  787f42:	cc                                              	int3
  787f43:	cc                                              	int3
  787f44:	cc                                              	int3
  787f45:	cc                                              	int3
  787f46:	cc                                              	int3
  787f47:	cc                                              	int3
  787f48:	cc                                              	int3
  787f49:	cc                                              	int3
  787f4a:	cc                                              	int3
  787f4b:	cc                                              	int3
  787f4c:	cc                                              	int3
  787f4d:	cc                                              	int3
  787f4e:	cc                                              	int3
  787f4f:	cc                                              	int3
