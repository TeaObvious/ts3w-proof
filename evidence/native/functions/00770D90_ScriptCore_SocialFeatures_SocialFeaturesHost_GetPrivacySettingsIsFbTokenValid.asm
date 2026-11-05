# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770d90 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPrivacySettingsIsFbTokenValid)
Paired Ghidra pseudocode: 00770D90_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPrivacySettingsIsFbTokenValid.c
Window: [0x00770d90, 0x00770db0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770d90: 8b 44 24 08 8b 4c 24 04 50 51 e8 21 43 2b 00 83
00770da0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770d90 <.text+0x36fd90>:
  770d90:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770d94:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770d98:	50                                              	push   eax
  770d99:	51                                              	push   ecx
  770d9a:	e8 21 43 2b 00                                  	call   0xa250c0
  770d9f:	83 c4 08                                        	add    esp,0x8
  770da2:	c3                                              	ret
  770da3:	cc                                              	int3
  770da4:	cc                                              	int3
  770da5:	cc                                              	int3
  770da6:	cc                                              	int3
  770da7:	cc                                              	int3
  770da8:	cc                                              	int3
  770da9:	cc                                              	int3
  770daa:	cc                                              	int3
  770dab:	cc                                              	int3
  770dac:	cc                                              	int3
  770dad:	cc                                              	int3
  770dae:	cc                                              	int3
  770daf:	cc                                              	int3
