# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00771000 (ScriptCore.SocialFeatures::SocialFeaturesHost_DebugClearAllPassportState)
Paired Ghidra pseudocode: 00771000_ScriptCore_SocialFeatures_SocialFeaturesHost_DebugClearAllPassportState.c
Window: [0x00771000, 0x00771020) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00771020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00771000: e9 4b 46 2b 00 cc cc cc cc cc cc cc cc cc cc cc
00771010: 81 7c 24 04 a0 d6 af 49 0f 94 c0 c2 08 00 cc cc

LINEAR DISASSEMBLY
00771000 <.text+0x370000>:
  771000:	e9 4b 46 2b 00                                  	jmp    0xa25650
  771005:	cc                                              	int3
  771006:	cc                                              	int3
  771007:	cc                                              	int3
  771008:	cc                                              	int3
  771009:	cc                                              	int3
  77100a:	cc                                              	int3
  77100b:	cc                                              	int3
  77100c:	cc                                              	int3
  77100d:	cc                                              	int3
  77100e:	cc                                              	int3
  77100f:	cc                                              	int3
  771010:	81 7c 24 04 a0 d6 af 49                         	cmp    DWORD PTR [esp+0x4],0x49afd6a0
  771018:	0f 94 c0                                        	sete   al
  77101b:	c2 08 00                                        	ret    0x8
  77101e:	cc                                              	int3
  77101f:	cc                                              	int3
