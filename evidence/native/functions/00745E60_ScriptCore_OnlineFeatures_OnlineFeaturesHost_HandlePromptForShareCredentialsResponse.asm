# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745e60 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_HandlePromptForShareCredentialsResponse)
Paired Ghidra pseudocode: 00745E60_ScriptCore_OnlineFeatures_OnlineFeaturesHost_HandlePromptForShareCredentialsResponse.c
Window: [0x00745e60, 0x00745e70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745e60: e9 6b c6 12 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00745e60 <.text+0x344e60>:
  745e60:	e9 6b c6 12 00                                  	jmp    0x8724d0
  745e65:	cc                                              	int3
  745e66:	cc                                              	int3
  745e67:	cc                                              	int3
  745e68:	cc                                              	int3
  745e69:	cc                                              	int3
  745e6a:	cc                                              	int3
  745e6b:	cc                                              	int3
  745e6c:	cc                                              	int3
  745e6d:	cc                                              	int3
  745e6e:	cc                                              	int3
  745e6f:	cc                                              	int3
