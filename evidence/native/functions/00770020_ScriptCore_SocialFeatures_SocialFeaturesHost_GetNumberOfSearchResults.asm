# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770020 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumberOfSearchResults)
Paired Ghidra pseudocode: 00770020_ScriptCore_SocialFeatures_SocialFeaturesHost_GetNumberOfSearchResults.c
Window: [0x00770020, 0x00770030) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770020: e9 6b 28 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770020 <.text+0x36f020>:
  770020:	e9 6b 28 2b 00                                  	jmp    0xa22890
  770025:	cc                                              	int3
  770026:	cc                                              	int3
  770027:	cc                                              	int3
  770028:	cc                                              	int3
  770029:	cc                                              	int3
  77002a:	cc                                              	int3
  77002b:	cc                                              	int3
  77002c:	cc                                              	int3
  77002d:	cc                                              	int3
  77002e:	cc                                              	int3
  77002f:	cc                                              	int3
