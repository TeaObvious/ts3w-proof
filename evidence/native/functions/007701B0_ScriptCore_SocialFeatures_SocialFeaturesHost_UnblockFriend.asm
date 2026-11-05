# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007701b0 (ScriptCore.SocialFeatures::SocialFeaturesHost_UnblockFriend)
Paired Ghidra pseudocode: 007701B0_ScriptCore_SocialFeatures_SocialFeaturesHost_UnblockFriend.c
Window: [0x007701b0, 0x007701d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007701d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007701b0: 8b 44 24 08 8b 4c 24 04 50 51 e8 b1 2a 2b 00 83
007701c0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007701b0 <.text+0x36f1b0>:
  7701b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7701b4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7701b8:	50                                              	push   eax
  7701b9:	51                                              	push   ecx
  7701ba:	e8 b1 2a 2b 00                                  	call   0xa22c70
  7701bf:	83 c4 08                                        	add    esp,0x8
  7701c2:	c3                                              	ret
  7701c3:	cc                                              	int3
  7701c4:	cc                                              	int3
  7701c5:	cc                                              	int3
  7701c6:	cc                                              	int3
  7701c7:	cc                                              	int3
  7701c8:	cc                                              	int3
  7701c9:	cc                                              	int3
  7701ca:	cc                                              	int3
  7701cb:	cc                                              	int3
  7701cc:	cc                                              	int3
  7701cd:	cc                                              	int3
  7701ce:	cc                                              	int3
  7701cf:	cc                                              	int3
