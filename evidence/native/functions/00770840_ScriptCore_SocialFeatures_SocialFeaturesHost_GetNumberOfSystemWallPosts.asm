# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770840 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumberOfSystemWallPosts)
Paired Ghidra pseudocode: 00770840_ScriptCore_SocialFeatures_SocialFeaturesHost_GetNumberOfSystemWallPosts.c
Window: [0x00770840, 0x00770860) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770840: 8b 44 24 08 8b 4c 24 04 50 51 e8 41 35 2b 00 83
00770850: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770840 <.text+0x36f840>:
  770840:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770844:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770848:	50                                              	push   eax
  770849:	51                                              	push   ecx
  77084a:	e8 41 35 2b 00                                  	call   0xa23d90
  77084f:	83 c4 08                                        	add    esp,0x8
  770852:	c3                                              	ret
  770853:	cc                                              	int3
  770854:	cc                                              	int3
  770855:	cc                                              	int3
  770856:	cc                                              	int3
  770857:	cc                                              	int3
  770858:	cc                                              	int3
  770859:	cc                                              	int3
  77085a:	cc                                              	int3
  77085b:	cc                                              	int3
  77085c:	cc                                              	int3
  77085d:	cc                                              	int3
  77085e:	cc                                              	int3
  77085f:	cc                                              	int3
