# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770d70 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPrivacySettingsIsReshareAllowed)
Paired Ghidra pseudocode: 00770D70_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPrivacySettingsIsReshareAllowed.c
Window: [0x00770d70, 0x00770d90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770d70: 8b 44 24 08 8b 4c 24 04 50 51 e8 01 43 2b 00 83
00770d80: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770d70 <.text+0x36fd70>:
  770d70:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770d74:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770d78:	50                                              	push   eax
  770d79:	51                                              	push   ecx
  770d7a:	e8 01 43 2b 00                                  	call   0xa25080
  770d7f:	83 c4 08                                        	add    esp,0x8
  770d82:	c3                                              	ret
  770d83:	cc                                              	int3
  770d84:	cc                                              	int3
  770d85:	cc                                              	int3
  770d86:	cc                                              	int3
  770d87:	cc                                              	int3
  770d88:	cc                                              	int3
  770d89:	cc                                              	int3
  770d8a:	cc                                              	int3
  770d8b:	cc                                              	int3
  770d8c:	cc                                              	int3
  770d8d:	cc                                              	int3
  770d8e:	cc                                              	int3
  770d8f:	cc                                              	int3
