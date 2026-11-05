# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770c00 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumberOfBadges)
Paired Ghidra pseudocode: 00770C00_ScriptCore_SocialFeatures_SocialFeaturesHost_GetNumberOfBadges.c
Window: [0x00770c00, 0x00770c10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770c00: e9 4b 3d 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770c00 <.text+0x36fc00>:
  770c00:	e9 4b 3d 2b 00                                  	jmp    0xa24950
  770c05:	cc                                              	int3
  770c06:	cc                                              	int3
  770c07:	cc                                              	int3
  770c08:	cc                                              	int3
  770c09:	cc                                              	int3
  770c0a:	cc                                              	int3
  770c0b:	cc                                              	int3
  770c0c:	cc                                              	int3
  770c0d:	cc                                              	int3
  770c0e:	cc                                              	int3
  770c0f:	cc                                              	int3
