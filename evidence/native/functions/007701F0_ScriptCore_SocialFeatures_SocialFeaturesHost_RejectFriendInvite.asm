# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007701f0 (ScriptCore.SocialFeatures::SocialFeaturesHost_RejectFriendInvite)
Paired Ghidra pseudocode: 007701F0_ScriptCore_SocialFeatures_SocialFeaturesHost_RejectFriendInvite.c
Window: [0x007701f0, 0x00770210) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007701f0: 8b 44 24 08 8b 4c 24 04 50 51 e8 f1 2a 2b 00 83
00770200: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007701f0 <.text+0x36f1f0>:
  7701f0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7701f4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7701f8:	50                                              	push   eax
  7701f9:	51                                              	push   ecx
  7701fa:	e8 f1 2a 2b 00                                  	call   0xa22cf0
  7701ff:	83 c4 08                                        	add    esp,0x8
  770202:	c3                                              	ret
  770203:	cc                                              	int3
  770204:	cc                                              	int3
  770205:	cc                                              	int3
  770206:	cc                                              	int3
  770207:	cc                                              	int3
  770208:	cc                                              	int3
  770209:	cc                                              	int3
  77020a:	cc                                              	int3
  77020b:	cc                                              	int3
  77020c:	cc                                              	int3
  77020d:	cc                                              	int3
  77020e:	cc                                              	int3
  77020f:	cc                                              	int3
