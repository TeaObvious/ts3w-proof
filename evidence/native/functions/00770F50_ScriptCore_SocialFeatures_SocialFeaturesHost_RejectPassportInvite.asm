# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770f50 (ScriptCore.SocialFeatures::SocialFeaturesHost_RejectPassportInvite)
Paired Ghidra pseudocode: 00770F50_ScriptCore_SocialFeatures_SocialFeaturesHost_RejectPassportInvite.c
Window: [0x00770f50, 0x00770f70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770f70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770f50: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 45 2b 00 83
00770f60: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770f50 <.text+0x36ff50>:
  770f50:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770f54:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770f58:	50                                              	push   eax
  770f59:	51                                              	push   ecx
  770f5a:	e8 51 45 2b 00                                  	call   0xa254b0
  770f5f:	83 c4 08                                        	add    esp,0x8
  770f62:	c3                                              	ret
  770f63:	cc                                              	int3
  770f64:	cc                                              	int3
  770f65:	cc                                              	int3
  770f66:	cc                                              	int3
  770f67:	cc                                              	int3
  770f68:	cc                                              	int3
  770f69:	cc                                              	int3
  770f6a:	cc                                              	int3
  770f6b:	cc                                              	int3
  770f6c:	cc                                              	int3
  770f6d:	cc                                              	int3
  770f6e:	cc                                              	int3
  770f6f:	cc                                              	int3
