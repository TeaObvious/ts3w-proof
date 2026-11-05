# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a57b0 (ScriptCore.CASUtils::CASUtils_DesignPresetMergeTattooTemplates)
Paired Ghidra pseudocode: 005A57B0_ScriptCore_CASUtils_CASUtils_DesignPresetMergeTattooTemplates.c
Window: [0x005a57b0, 0x005a57c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a57c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a57b0: e9 0b 10 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a57b0 <.text+0x1a47b0>:
  5a57b0:	e9 0b 10 05 00                                  	jmp    0x5f67c0
  5a57b5:	cc                                              	int3
  5a57b6:	cc                                              	int3
  5a57b7:	cc                                              	int3
  5a57b8:	cc                                              	int3
  5a57b9:	cc                                              	int3
  5a57ba:	cc                                              	int3
  5a57bb:	cc                                              	int3
  5a57bc:	cc                                              	int3
  5a57bd:	cc                                              	int3
  5a57be:	cc                                              	int3
  5a57bf:	cc                                              	int3
