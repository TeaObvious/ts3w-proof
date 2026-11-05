# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a57c0 (ScriptCore.CASUtils::CASUtils_CompareCompositeTattooPresets)
Paired Ghidra pseudocode: 005A57C0_ScriptCore_CASUtils_CASUtils_CompareCompositeTattooPresets.c
Window: [0x005a57c0, 0x005a57d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a57d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a57c0: e9 6b 1d 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a57c0 <.text+0x1a47c0>:
  5a57c0:	e9 6b 1d 05 00                                  	jmp    0x5f7530
  5a57c5:	cc                                              	int3
  5a57c6:	cc                                              	int3
  5a57c7:	cc                                              	int3
  5a57c8:	cc                                              	int3
  5a57c9:	cc                                              	int3
  5a57ca:	cc                                              	int3
  5a57cb:	cc                                              	int3
  5a57cc:	cc                                              	int3
  5a57cd:	cc                                              	int3
  5a57ce:	cc                                              	int3
  5a57cf:	cc                                              	int3
