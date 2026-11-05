# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1740 (ScriptCore.GameUtils::GameUtils_RegisterCheats)
Paired Ghidra pseudocode: 00EC1740_ScriptCore_GameUtils_GameUtils_RegisterCheats.c
Window: [0x00ec1740, 0x00ec1750) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1740: e9 cb 7e 00 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1740 <.text+0xac0740>:
  ec1740:	e9 cb 7e 00 00                                  	jmp    0xec9610
  ec1745:	cc                                              	int3
  ec1746:	cc                                              	int3
  ec1747:	cc                                              	int3
  ec1748:	cc                                              	int3
  ec1749:	cc                                              	int3
  ec174a:	cc                                              	int3
  ec174b:	cc                                              	int3
  ec174c:	cc                                              	int3
  ec174d:	cc                                              	int3
  ec174e:	cc                                              	int3
  ec174f:	cc                                              	int3
