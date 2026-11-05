# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770130 (ScriptCore.SocialFeatures::SocialFeaturesHost_FriendsGetFriendStatusID)
Paired Ghidra pseudocode: 00770130_ScriptCore_SocialFeatures_SocialFeaturesHost_FriendsGetFriendStatusID.c
Window: [0x00770130, 0x00770150) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770130: 8b 44 24 08 8b 4c 24 04 50 51 e8 f1 29 2b 00 83
00770140: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770130 <.text+0x36f130>:
  770130:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770134:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770138:	50                                              	push   eax
  770139:	51                                              	push   ecx
  77013a:	e8 f1 29 2b 00                                  	call   0xa22b30
  77013f:	83 c4 08                                        	add    esp,0x8
  770142:	c3                                              	ret
  770143:	cc                                              	int3
  770144:	cc                                              	int3
  770145:	cc                                              	int3
  770146:	cc                                              	int3
  770147:	cc                                              	int3
  770148:	cc                                              	int3
  770149:	cc                                              	int3
  77014a:	cc                                              	int3
  77014b:	cc                                              	int3
  77014c:	cc                                              	int3
  77014d:	cc                                              	int3
  77014e:	cc                                              	int3
  77014f:	cc                                              	int3
