# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770cd0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgePoints)
Paired Ghidra pseudocode: 00770CD0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEarnedBadgePoints.c
Window: [0x00770cd0, 0x00770cf0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770cd0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
00770ce0: fc 41 2b 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770cd0 <.text+0x36fcd0>:
  770cd0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  770cd4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  770cd8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  770cdc:	50                                              	push   eax
  770cdd:	51                                              	push   ecx
  770cde:	52                                              	push   edx
  770cdf:	e8 fc 41 2b 00                                  	call   0xa24ee0
  770ce4:	83 c4 0c                                        	add    esp,0xc
  770ce7:	c3                                              	ret
  770ce8:	cc                                              	int3
  770ce9:	cc                                              	int3
  770cea:	cc                                              	int3
  770ceb:	cc                                              	int3
  770cec:	cc                                              	int3
  770ced:	cc                                              	int3
  770cee:	cc                                              	int3
  770cef:	cc                                              	int3
