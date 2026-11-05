# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787ba0 (ScriptCore.World::World_ObjectDesigner_UpdateTextureImpl)
Paired Ghidra pseudocode: 00787BA0_ScriptCore_World_World_ObjectDesigner_UpdateTextureImpl.c
Window: [0x00787ba0, 0x00787bc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787ba0: 8b 44 24 04 50 e8 f6 86 3a 00 8b c8 e8 0f f5 3a
00787bb0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787ba0 <.text+0x386ba0>:
  787ba0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787ba4:	50                                              	push   eax
  787ba5:	e8 f6 86 3a 00                                  	call   0xb302a0
  787baa:	8b c8                                           	mov    ecx,eax
  787bac:	e8 0f f5 3a 00                                  	call   0xb370c0
  787bb1:	c3                                              	ret
  787bb2:	cc                                              	int3
  787bb3:	cc                                              	int3
  787bb4:	cc                                              	int3
  787bb5:	cc                                              	int3
  787bb6:	cc                                              	int3
  787bb7:	cc                                              	int3
  787bb8:	cc                                              	int3
  787bb9:	cc                                              	int3
  787bba:	cc                                              	int3
  787bbb:	cc                                              	int3
  787bbc:	cc                                              	int3
  787bbd:	cc                                              	int3
  787bbe:	cc                                              	int3
  787bbf:	cc                                              	int3
