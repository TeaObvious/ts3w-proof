# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745e50 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_HandlePromptForCredentialsResponse)
Paired Ghidra pseudocode: 00745E50_ScriptCore_OnlineFeatures_OnlineFeaturesHost_HandlePromptForCredentialsResponse.c
Window: [0x00745e50, 0x00745e60) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745e50: e9 2b c6 12 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00745e50 <.text+0x344e50>:
  745e50:	e9 2b c6 12 00                                  	jmp    0x872480
  745e55:	cc                                              	int3
  745e56:	cc                                              	int3
  745e57:	cc                                              	int3
  745e58:	cc                                              	int3
  745e59:	cc                                              	int3
  745e5a:	cc                                              	int3
  745e5b:	cc                                              	int3
  745e5c:	cc                                              	int3
  745e5d:	cc                                              	int3
  745e5e:	cc                                              	int3
  745e5f:	cc                                              	int3
