# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770de0 (ScriptCore.SocialFeatures::SocialFeaturesHost_AcceptHostMySimInvite)
Paired Ghidra pseudocode: 00770DE0_ScriptCore_SocialFeatures_SocialFeaturesHost_AcceptHostMySimInvite.c
Window: [0x00770de0, 0x00770e00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770e00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770de0: 8b 44 24 08 8b 4c 24 04 50 51 e8 91 43 2b 00 83
00770df0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770de0 <.text+0x36fde0>:
  770de0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770de4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770de8:	50                                              	push   eax
  770de9:	51                                              	push   ecx
  770dea:	e8 91 43 2b 00                                  	call   0xa25180
  770def:	83 c4 08                                        	add    esp,0x8
  770df2:	c3                                              	ret
  770df3:	cc                                              	int3
  770df4:	cc                                              	int3
  770df5:	cc                                              	int3
  770df6:	cc                                              	int3
  770df7:	cc                                              	int3
  770df8:	cc                                              	int3
  770df9:	cc                                              	int3
  770dfa:	cc                                              	int3
  770dfb:	cc                                              	int3
  770dfc:	cc                                              	int3
  770dfd:	cc                                              	int3
  770dfe:	cc                                              	int3
  770dff:	cc                                              	int3
