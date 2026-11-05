# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770fa0 (ScriptCore.SocialFeatures::SocialFeaturesHost_IsPassportPostValid)
Paired Ghidra pseudocode: 00770FA0_ScriptCore_SocialFeatures_SocialFeaturesHost_IsPassportPostValid.c
Window: [0x00770fa0, 0x00770fc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770fa0: 8b 44 24 08 8b 4c 24 04 50 51 e8 91 45 2b 00 83
00770fb0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770fa0 <.text+0x36ffa0>:
  770fa0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770fa4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770fa8:	50                                              	push   eax
  770fa9:	51                                              	push   ecx
  770faa:	e8 91 45 2b 00                                  	call   0xa25540
  770faf:	83 c4 08                                        	add    esp,0x8
  770fb2:	c3                                              	ret
  770fb3:	cc                                              	int3
  770fb4:	cc                                              	int3
  770fb5:	cc                                              	int3
  770fb6:	cc                                              	int3
  770fb7:	cc                                              	int3
  770fb8:	cc                                              	int3
  770fb9:	cc                                              	int3
  770fba:	cc                                              	int3
  770fbb:	cc                                              	int3
  770fbc:	cc                                              	int3
  770fbd:	cc                                              	int3
  770fbe:	cc                                              	int3
  770fbf:	cc                                              	int3
