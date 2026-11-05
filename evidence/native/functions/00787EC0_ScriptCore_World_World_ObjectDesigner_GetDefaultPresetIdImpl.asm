# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787ec0 (ScriptCore.World::World_ObjectDesigner_GetDefaultPresetIdImpl)
Paired Ghidra pseudocode: 00787EC0_ScriptCore_World_World_ObjectDesigner_GetDefaultPresetIdImpl.c
Window: [0x00787ec0, 0x00787ed0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787ec0: e8 db 83 3a 00 8b c8 e9 74 8c 3a 00 cc cc cc cc

LINEAR DISASSEMBLY
00787ec0 <.text+0x386ec0>:
  787ec0:	e8 db 83 3a 00                                  	call   0xb302a0
  787ec5:	8b c8                                           	mov    ecx,eax
  787ec7:	e9 74 8c 3a 00                                  	jmp    0xb30b40
  787ecc:	cc                                              	int3
  787ecd:	cc                                              	int3
  787ece:	cc                                              	int3
  787ecf:	cc                                              	int3
