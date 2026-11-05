# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787ed0 (ScriptCore.World::World_ObjectDesigner_GetDesignPresetIndexFromIdImpl)
Paired Ghidra pseudocode: 00787ED0_ScriptCore_World_World_ObjectDesigner_GetDesignPresetIndexFromIdImpl.c
Window: [0x00787ed0, 0x00787ef0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787ef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787ed0: 8b 44 24 04 50 e8 c6 83 3a 00 8b c8 e8 6f 91 3a
00787ee0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787ed0 <.text+0x386ed0>:
  787ed0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787ed4:	50                                              	push   eax
  787ed5:	e8 c6 83 3a 00                                  	call   0xb302a0
  787eda:	8b c8                                           	mov    ecx,eax
  787edc:	e8 6f 91 3a 00                                  	call   0xb31050
  787ee1:	c3                                              	ret
  787ee2:	cc                                              	int3
  787ee3:	cc                                              	int3
  787ee4:	cc                                              	int3
  787ee5:	cc                                              	int3
  787ee6:	cc                                              	int3
  787ee7:	cc                                              	int3
  787ee8:	cc                                              	int3
  787ee9:	cc                                              	int3
  787eea:	cc                                              	int3
  787eeb:	cc                                              	int3
  787eec:	cc                                              	int3
  787eed:	cc                                              	int3
  787eee:	cc                                              	int3
  787eef:	cc                                              	int3
