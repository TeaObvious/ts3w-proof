# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787cc0 (ScriptCore.World::World_ObjectDesigner_ClearLargePatternThumbnailImpl)
Paired Ghidra pseudocode: 00787CC0_ScriptCore_World_World_ObjectDesigner_ClearLargePatternThumbnailImpl.c
Window: [0x00787cc0, 0x00787cd0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787cd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787cc0: e8 db 85 3a 00 8b c8 e9 24 88 3a 00 cc cc cc cc

LINEAR DISASSEMBLY
00787cc0 <.text+0x386cc0>:
  787cc0:	e8 db 85 3a 00                                  	call   0xb302a0
  787cc5:	8b c8                                           	mov    ecx,eax
  787cc7:	e9 24 88 3a 00                                  	jmp    0xb304f0
  787ccc:	cc                                              	int3
  787ccd:	cc                                              	int3
  787cce:	cc                                              	int3
  787ccf:	cc                                              	int3
