# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007701d0 (ScriptCore.SocialFeatures::SocialFeaturesHost_AcceptFriendInvite)
Paired Ghidra pseudocode: 007701D0_ScriptCore_SocialFeatures_SocialFeaturesHost_AcceptFriendInvite.c
Window: [0x007701d0, 0x007701f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007701f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007701d0: 8b 44 24 08 8b 4c 24 04 50 51 e8 d1 2a 2b 00 83
007701e0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007701d0 <.text+0x36f1d0>:
  7701d0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7701d4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7701d8:	50                                              	push   eax
  7701d9:	51                                              	push   ecx
  7701da:	e8 d1 2a 2b 00                                  	call   0xa22cb0
  7701df:	83 c4 08                                        	add    esp,0x8
  7701e2:	c3                                              	ret
  7701e3:	cc                                              	int3
  7701e4:	cc                                              	int3
  7701e5:	cc                                              	int3
  7701e6:	cc                                              	int3
  7701e7:	cc                                              	int3
  7701e8:	cc                                              	int3
  7701e9:	cc                                              	int3
  7701ea:	cc                                              	int3
  7701eb:	cc                                              	int3
  7701ec:	cc                                              	int3
  7701ed:	cc                                              	int3
  7701ee:	cc                                              	int3
  7701ef:	cc                                              	int3
