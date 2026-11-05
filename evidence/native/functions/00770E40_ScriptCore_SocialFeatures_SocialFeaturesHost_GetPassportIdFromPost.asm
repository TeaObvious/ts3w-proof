# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770e40 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportIdFromPost)
Paired Ghidra pseudocode: 00770E40_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportIdFromPost.c
Window: [0x00770e40, 0x00770e60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770e40: 8b 44 24 08 8b 4c 24 04 50 51 e8 e1 43 2b 00 83
00770e50: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770e40 <.text+0x36fe40>:
  770e40:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770e44:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770e48:	50                                              	push   eax
  770e49:	51                                              	push   ecx
  770e4a:	e8 e1 43 2b 00                                  	call   0xa25230
  770e4f:	83 c4 08                                        	add    esp,0x8
  770e52:	c3                                              	ret
  770e53:	cc                                              	int3
  770e54:	cc                                              	int3
  770e55:	cc                                              	int3
  770e56:	cc                                              	int3
  770e57:	cc                                              	int3
  770e58:	cc                                              	int3
  770e59:	cc                                              	int3
  770e5a:	cc                                              	int3
  770e5b:	cc                                              	int3
  770e5c:	cc                                              	int3
  770e5d:	cc                                              	int3
  770e5e:	cc                                              	int3
  770e5f:	cc                                              	int3
