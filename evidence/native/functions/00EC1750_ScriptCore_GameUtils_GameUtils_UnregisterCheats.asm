# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1750 (ScriptCore.GameUtils::GameUtils_UnregisterCheats)
Paired Ghidra pseudocode: 00EC1750_ScriptCore_GameUtils_GameUtils_UnregisterCheats.c
Window: [0x00ec1750, 0x00ec1760) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1750: e9 5b 79 00 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1750 <.text+0xac0750>:
  ec1750:	e9 5b 79 00 00                                  	jmp    0xec90b0
  ec1755:	cc                                              	int3
  ec1756:	cc                                              	int3
  ec1757:	cc                                              	int3
  ec1758:	cc                                              	int3
  ec1759:	cc                                              	int3
  ec175a:	cc                                              	int3
  ec175b:	cc                                              	int3
  ec175c:	cc                                              	int3
  ec175d:	cc                                              	int3
  ec175e:	cc                                              	int3
  ec175f:	cc                                              	int3
