# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5820 (ScriptCore.CASUtils::CASUtils_InjectTattooOpacity)
Paired Ghidra pseudocode: 005A5820_ScriptCore_CASUtils_CASUtils_InjectTattooOpacity.c
Window: [0x005a5820, 0x005a5830) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5820: e9 bb 08 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5820 <.text+0x1a4820>:
  5a5820:	e9 bb 08 05 00                                  	jmp    0x5f60e0
  5a5825:	cc                                              	int3
  5a5826:	cc                                              	int3
  5a5827:	cc                                              	int3
  5a5828:	cc                                              	int3
  5a5829:	cc                                              	int3
  5a582a:	cc                                              	int3
  5a582b:	cc                                              	int3
  5a582c:	cc                                              	int3
  5a582d:	cc                                              	int3
  5a582e:	cc                                              	int3
  5a582f:	cc                                              	int3
