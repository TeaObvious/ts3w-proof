# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770190 (ScriptCore.SocialFeatures::SocialFeaturesHost_BlockFriend)
Paired Ghidra pseudocode: 00770190_ScriptCore_SocialFeatures_SocialFeaturesHost_BlockFriend.c
Window: [0x00770190, 0x007701b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007701b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770190: 8b 44 24 08 8b 4c 24 04 50 51 e8 91 2a 2b 00 83
007701a0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770190 <.text+0x36f190>:
  770190:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770194:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770198:	50                                              	push   eax
  770199:	51                                              	push   ecx
  77019a:	e8 91 2a 2b 00                                  	call   0xa22c30
  77019f:	83 c4 08                                        	add    esp,0x8
  7701a2:	c3                                              	ret
  7701a3:	cc                                              	int3
  7701a4:	cc                                              	int3
  7701a5:	cc                                              	int3
  7701a6:	cc                                              	int3
  7701a7:	cc                                              	int3
  7701a8:	cc                                              	int3
  7701a9:	cc                                              	int3
  7701aa:	cc                                              	int3
  7701ab:	cc                                              	int3
  7701ac:	cc                                              	int3
  7701ad:	cc                                              	int3
  7701ae:	cc                                              	int3
  7701af:	cc                                              	int3
