# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770860 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetSystemWallPostXroadsID)
Paired Ghidra pseudocode: 00770860_ScriptCore_SocialFeatures_SocialFeaturesHost_GetSystemWallPostXroadsID.c
Window: [0x00770860, 0x00770880) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770880
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770860: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
00770870: 5c 35 2b 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770860 <.text+0x36f860>:
  770860:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  770864:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  770868:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  77086c:	50                                              	push   eax
  77086d:	51                                              	push   ecx
  77086e:	52                                              	push   edx
  77086f:	e8 5c 35 2b 00                                  	call   0xa23dd0
  770874:	83 c4 0c                                        	add    esp,0xc
  770877:	c3                                              	ret
  770878:	cc                                              	int3
  770879:	cc                                              	int3
  77087a:	cc                                              	int3
  77087b:	cc                                              	int3
  77087c:	cc                                              	int3
  77087d:	cc                                              	int3
  77087e:	cc                                              	int3
  77087f:	cc                                              	int3
