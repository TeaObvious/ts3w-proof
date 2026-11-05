# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787e30 (ScriptCore.World::World_ObjectDesigner_GetCompositorPreviewImageImpl)
Paired Ghidra pseudocode: 00787E30_ScriptCore_World_World_ObjectDesigner_GetCompositorPreviewImageImpl.c
Window: [0x00787e30, 0x00787e50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787e50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787e30: 8b 44 24 04 50 e8 66 84 3a 00 8b c8 e8 bf be 3a
00787e40: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787e30 <.text+0x386e30>:
  787e30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787e34:	50                                              	push   eax
  787e35:	e8 66 84 3a 00                                  	call   0xb302a0
  787e3a:	8b c8                                           	mov    ecx,eax
  787e3c:	e8 bf be 3a 00                                  	call   0xb33d00
  787e41:	c3                                              	ret
  787e42:	cc                                              	int3
  787e43:	cc                                              	int3
  787e44:	cc                                              	int3
  787e45:	cc                                              	int3
  787e46:	cc                                              	int3
  787e47:	cc                                              	int3
  787e48:	cc                                              	int3
  787e49:	cc                                              	int3
  787e4a:	cc                                              	int3
  787e4b:	cc                                              	int3
  787e4c:	cc                                              	int3
  787e4d:	cc                                              	int3
  787e4e:	cc                                              	int3
  787e4f:	cc                                              	int3
