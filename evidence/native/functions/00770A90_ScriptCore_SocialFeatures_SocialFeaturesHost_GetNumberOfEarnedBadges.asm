# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770a90 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumberOfEarnedBadges)
Paired Ghidra pseudocode: 00770A90_ScriptCore_SocialFeatures_SocialFeaturesHost_GetNumberOfEarnedBadges.c
Window: [0x00770a90, 0x00770ab0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770a90: 8b 44 24 08 8b 4c 24 04 50 51 e8 61 41 2b 00 83
00770aa0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770a90 <.text+0x36fa90>:
  770a90:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770a94:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770a98:	50                                              	push   eax
  770a99:	51                                              	push   ecx
  770a9a:	e8 61 41 2b 00                                  	call   0xa24c00
  770a9f:	83 c4 08                                        	add    esp,0x8
  770aa2:	c3                                              	ret
  770aa3:	cc                                              	int3
  770aa4:	cc                                              	int3
  770aa5:	cc                                              	int3
  770aa6:	cc                                              	int3
  770aa7:	cc                                              	int3
  770aa8:	cc                                              	int3
  770aa9:	cc                                              	int3
  770aaa:	cc                                              	int3
  770aab:	cc                                              	int3
  770aac:	cc                                              	int3
  770aad:	cc                                              	int3
  770aae:	cc                                              	int3
  770aaf:	cc                                              	int3
