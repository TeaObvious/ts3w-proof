# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007702e0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumberOfWallPosts)
Paired Ghidra pseudocode: 007702E0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetNumberOfWallPosts.c
Window: [0x007702e0, 0x00770300) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007702e0: 8b 44 24 08 8b 4c 24 04 50 51 e8 d1 2b 2b 00 83
007702f0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007702e0 <.text+0x36f2e0>:
  7702e0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7702e4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7702e8:	50                                              	push   eax
  7702e9:	51                                              	push   ecx
  7702ea:	e8 d1 2b 2b 00                                  	call   0xa22ec0
  7702ef:	83 c4 08                                        	add    esp,0x8
  7702f2:	c3                                              	ret
  7702f3:	cc                                              	int3
  7702f4:	cc                                              	int3
  7702f5:	cc                                              	int3
  7702f6:	cc                                              	int3
  7702f7:	cc                                              	int3
  7702f8:	cc                                              	int3
  7702f9:	cc                                              	int3
  7702fa:	cc                                              	int3
  7702fb:	cc                                              	int3
  7702fc:	cc                                              	int3
  7702fd:	cc                                              	int3
  7702fe:	cc                                              	int3
  7702ff:	cc                                              	int3
