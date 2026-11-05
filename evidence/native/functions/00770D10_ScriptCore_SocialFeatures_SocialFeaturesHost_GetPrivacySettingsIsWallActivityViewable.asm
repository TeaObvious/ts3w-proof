# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770d10 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPrivacySettingsIsWallActivityViewable)
Paired Ghidra pseudocode: 00770D10_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPrivacySettingsIsWallActivityViewable.c
Window: [0x00770d10, 0x00770d30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770d10: 8b 44 24 08 8b 4c 24 04 50 51 e8 a1 42 2b 00 83
00770d20: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770d10 <.text+0x36fd10>:
  770d10:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770d14:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770d18:	50                                              	push   eax
  770d19:	51                                              	push   ecx
  770d1a:	e8 a1 42 2b 00                                  	call   0xa24fc0
  770d1f:	83 c4 08                                        	add    esp,0x8
  770d22:	c3                                              	ret
  770d23:	cc                                              	int3
  770d24:	cc                                              	int3
  770d25:	cc                                              	int3
  770d26:	cc                                              	int3
  770d27:	cc                                              	int3
  770d28:	cc                                              	int3
  770d29:	cc                                              	int3
  770d2a:	cc                                              	int3
  770d2b:	cc                                              	int3
  770d2c:	cc                                              	int3
  770d2d:	cc                                              	int3
  770d2e:	cc                                              	int3
  770d2f:	cc                                              	int3
