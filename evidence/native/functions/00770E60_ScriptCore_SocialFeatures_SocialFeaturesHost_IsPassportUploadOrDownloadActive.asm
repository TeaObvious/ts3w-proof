# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770e60 (ScriptCore.SocialFeatures::SocialFeaturesHost_IsPassportUploadOrDownloadActive)
Paired Ghidra pseudocode: 00770E60_ScriptCore_SocialFeatures_SocialFeaturesHost_IsPassportUploadOrDownloadActive.c
Window: [0x00770e60, 0x00770e70) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770e60: e9 fb 43 2b 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770e60 <.text+0x36fe60>:
  770e60:	e9 fb 43 2b 00                                  	jmp    0xa25260
  770e65:	cc                                              	int3
  770e66:	cc                                              	int3
  770e67:	cc                                              	int3
  770e68:	cc                                              	int3
  770e69:	cc                                              	int3
  770e6a:	cc                                              	int3
  770e6b:	cc                                              	int3
  770e6c:	cc                                              	int3
  770e6d:	cc                                              	int3
  770e6e:	cc                                              	int3
  770e6f:	cc                                              	int3
