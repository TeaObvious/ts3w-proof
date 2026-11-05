# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007704a0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWallCommentTime)
Paired Ghidra pseudocode: 007704A0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWallCommentTime.c
Window: [0x007704a0, 0x007704d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007704d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007704a0: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
007704b0: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 4d
007704c0: 2e 2b 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007704a0 <.text+0x36f4a0>:
  7704a0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7704a4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7704a8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  7704ac:	50                                              	push   eax
  7704ad:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7704b1:	51                                              	push   ecx
  7704b2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7704b6:	52                                              	push   edx
  7704b7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  7704bb:	50                                              	push   eax
  7704bc:	51                                              	push   ecx
  7704bd:	52                                              	push   edx
  7704be:	e8 4d 2e 2b 00                                  	call   0xa23310
  7704c3:	83 c4 18                                        	add    esp,0x18
  7704c6:	c3                                              	ret
  7704c7:	cc                                              	int3
  7704c8:	cc                                              	int3
  7704c9:	cc                                              	int3
  7704ca:	cc                                              	int3
  7704cb:	cc                                              	int3
  7704cc:	cc                                              	int3
  7704cd:	cc                                              	int3
  7704ce:	cc                                              	int3
  7704cf:	cc                                              	int3
