# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787460 (ScriptCore.World::World_GetPagodaRoofCurveChoiceImpl)
Paired Ghidra pseudocode: 00787460_ScriptCore_World_World_GetPagodaRoofCurveChoiceImpl.c
Window: [0x00787460, 0x00787470) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787460: e9 cb 54 37 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787460 <.text+0x386460>:
  787460:	e9 cb 54 37 00                                  	jmp    0xafc930
  787465:	cc                                              	int3
  787466:	cc                                              	int3
  787467:	cc                                              	int3
  787468:	cc                                              	int3
  787469:	cc                                              	int3
  78746a:	cc                                              	int3
  78746b:	cc                                              	int3
  78746c:	cc                                              	int3
  78746d:	cc                                              	int3
  78746e:	cc                                              	int3
  78746f:	cc                                              	int3
