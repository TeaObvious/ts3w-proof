# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a57f0 (ScriptCore.CASUtils::CASUtils_InjectTattooColors)
Paired Ghidra pseudocode: 005A57F0_ScriptCore_CASUtils_CASUtils_InjectTattooColors.c
Window: [0x005a57f0, 0x005a5800) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a57f0: e9 db 14 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a57f0 <.text+0x1a47f0>:
  5a57f0:	e9 db 14 05 00                                  	jmp    0x5f6cd0
  5a57f5:	cc                                              	int3
  5a57f6:	cc                                              	int3
  5a57f7:	cc                                              	int3
  5a57f8:	cc                                              	int3
  5a57f9:	cc                                              	int3
  5a57fa:	cc                                              	int3
  5a57fb:	cc                                              	int3
  5a57fc:	cc                                              	int3
  5a57fd:	cc                                              	int3
  5a57fe:	cc                                              	int3
  5a57ff:	cc                                              	int3
