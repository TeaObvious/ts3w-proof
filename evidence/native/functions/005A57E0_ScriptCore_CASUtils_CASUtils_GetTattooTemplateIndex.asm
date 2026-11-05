# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a57e0 (ScriptCore.CASUtils::CASUtils_GetTattooTemplateIndex)
Paired Ghidra pseudocode: 005A57E0_ScriptCore_CASUtils_CASUtils_GetTattooTemplateIndex.c
Window: [0x005a57e0, 0x005a57f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a57f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a57e0: e9 1b 13 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a57e0 <.text+0x1a47e0>:
  5a57e0:	e9 1b 13 05 00                                  	jmp    0x5f6b00
  5a57e5:	cc                                              	int3
  5a57e6:	cc                                              	int3
  5a57e7:	cc                                              	int3
  5a57e8:	cc                                              	int3
  5a57e9:	cc                                              	int3
  5a57ea:	cc                                              	int3
  5a57eb:	cc                                              	int3
  5a57ec:	cc                                              	int3
  5a57ed:	cc                                              	int3
  5a57ee:	cc                                              	int3
  5a57ef:	cc                                              	int3
