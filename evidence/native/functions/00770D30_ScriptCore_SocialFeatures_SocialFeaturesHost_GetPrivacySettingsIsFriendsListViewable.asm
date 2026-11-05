# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770d30 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPrivacySettingsIsFriendsListViewable)
Paired Ghidra pseudocode: 00770D30_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPrivacySettingsIsFriendsListViewable.c
Window: [0x00770d30, 0x00770d50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770d50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770d30: 8b 44 24 08 8b 4c 24 04 50 51 e8 c1 42 2b 00 83
00770d40: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770d30 <.text+0x36fd30>:
  770d30:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770d34:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770d38:	50                                              	push   eax
  770d39:	51                                              	push   ecx
  770d3a:	e8 c1 42 2b 00                                  	call   0xa25000
  770d3f:	83 c4 08                                        	add    esp,0x8
  770d42:	c3                                              	ret
  770d43:	cc                                              	int3
  770d44:	cc                                              	int3
  770d45:	cc                                              	int3
  770d46:	cc                                              	int3
  770d47:	cc                                              	int3
  770d48:	cc                                              	int3
  770d49:	cc                                              	int3
  770d4a:	cc                                              	int3
  770d4b:	cc                                              	int3
  770d4c:	cc                                              	int3
  770d4d:	cc                                              	int3
  770d4e:	cc                                              	int3
  770d4f:	cc                                              	int3
