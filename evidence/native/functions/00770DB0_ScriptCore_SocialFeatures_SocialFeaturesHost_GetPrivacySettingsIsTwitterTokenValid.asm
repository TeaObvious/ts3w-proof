# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770db0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPrivacySettingsIsTwitterTokenValid)
Paired Ghidra pseudocode: 00770DB0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPrivacySettingsIsTwitterTokenValid.c
Window: [0x00770db0, 0x00770dd0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770dd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770db0: 8b 44 24 08 8b 4c 24 04 50 51 e8 31 43 2b 00 83
00770dc0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770db0 <.text+0x36fdb0>:
  770db0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770db4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770db8:	50                                              	push   eax
  770db9:	51                                              	push   ecx
  770dba:	e8 31 43 2b 00                                  	call   0xa250f0
  770dbf:	83 c4 08                                        	add    esp,0x8
  770dc2:	c3                                              	ret
  770dc3:	cc                                              	int3
  770dc4:	cc                                              	int3
  770dc5:	cc                                              	int3
  770dc6:	cc                                              	int3
  770dc7:	cc                                              	int3
  770dc8:	cc                                              	int3
  770dc9:	cc                                              	int3
  770dca:	cc                                              	int3
  770dcb:	cc                                              	int3
  770dcc:	cc                                              	int3
  770dcd:	cc                                              	int3
  770dce:	cc                                              	int3
  770dcf:	cc                                              	int3
