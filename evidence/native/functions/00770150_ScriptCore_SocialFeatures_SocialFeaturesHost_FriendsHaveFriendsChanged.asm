# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770150 (ScriptCore.SocialFeatures::SocialFeaturesHost_FriendsHaveFriendsChanged)
Paired Ghidra pseudocode: 00770150_ScriptCore_SocialFeatures_SocialFeaturesHost_FriendsHaveFriendsChanged.c
Window: [0x00770150, 0x00770170) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770150: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 2a 2b 00 83
00770160: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770150 <.text+0x36f150>:
  770150:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770154:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770158:	50                                              	push   eax
  770159:	51                                              	push   ecx
  77015a:	e8 51 2a 2b 00                                  	call   0xa22bb0
  77015f:	83 c4 08                                        	add    esp,0x8
  770162:	c3                                              	ret
  770163:	cc                                              	int3
  770164:	cc                                              	int3
  770165:	cc                                              	int3
  770166:	cc                                              	int3
  770167:	cc                                              	int3
  770168:	cc                                              	int3
  770169:	cc                                              	int3
  77016a:	cc                                              	int3
  77016b:	cc                                              	int3
  77016c:	cc                                              	int3
  77016d:	cc                                              	int3
  77016e:	cc                                              	int3
  77016f:	cc                                              	int3
