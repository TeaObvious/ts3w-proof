# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007704f0 (ScriptCore.SocialFeatures::SocialFeaturesHost_LikePost)
Paired Ghidra pseudocode: 007704F0_ScriptCore_SocialFeatures_SocialFeaturesHost_LikePost.c
Window: [0x007704f0, 0x00770510) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007704f0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770500: 08 51 52 50 e8 57 2e 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
007704f0 <.text+0x36f4f0>:
  7704f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7704f4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7704f8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  7704fc:	50                                              	push   eax
  7704fd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770501:	51                                              	push   ecx
  770502:	52                                              	push   edx
  770503:	50                                              	push   eax
  770504:	e8 57 2e 2b 00                                  	call   0xa23360
  770509:	83 c4 10                                        	add    esp,0x10
  77050c:	c3                                              	ret
  77050d:	cc                                              	int3
  77050e:	cc                                              	int3
  77050f:	cc                                              	int3
