# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a57d0 (ScriptCore.CASUtils::CASUtils_DesignPresetExtractTattooTemplate)
Paired Ghidra pseudocode: 005A57D0_ScriptCore_CASUtils_CASUtils_DesignPresetExtractTattooTemplate.c
Window: [0x005a57d0, 0x005a57e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a57e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a57d0: e9 4b 0e 05 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a57d0 <.text+0x1a47d0>:
  5a57d0:	e9 4b 0e 05 00                                  	jmp    0x5f6620
  5a57d5:	cc                                              	int3
  5a57d6:	cc                                              	int3
  5a57d7:	cc                                              	int3
  5a57d8:	cc                                              	int3
  5a57d9:	cc                                              	int3
  5a57da:	cc                                              	int3
  5a57db:	cc                                              	int3
  5a57dc:	cc                                              	int3
  5a57dd:	cc                                              	int3
  5a57de:	cc                                              	int3
  5a57df:	cc                                              	int3
