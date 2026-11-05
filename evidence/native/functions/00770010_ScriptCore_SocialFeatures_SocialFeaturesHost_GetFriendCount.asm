# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770010 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetFriendCount)
Paired Ghidra pseudocode: 00770010_ScriptCore_SocialFeatures_SocialFeaturesHost_GetFriendCount.c
Window: [0x00770010, 0x00770020) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770010: e9 4b 28 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770010 <.text+0x36f010>:
  770010:	e9 4b 28 2b 00                                  	jmp    0xa22860
  770015:	cc                                              	int3
  770016:	cc                                              	int3
  770017:	cc                                              	int3
  770018:	cc                                              	int3
  770019:	cc                                              	int3
  77001a:	cc                                              	int3
  77001b:	cc                                              	int3
  77001c:	cc                                              	int3
  77001d:	cc                                              	int3
  77001e:	cc                                              	int3
  77001f:	cc                                              	int3
