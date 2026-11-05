# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770580 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumberOfCommentLikes)
Paired Ghidra pseudocode: 00770580_ScriptCore_SocialFeatures_SocialFeaturesHost_GetNumberOfCommentLikes.c
Window: [0x00770580, 0x007705b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007705b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770580: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
00770590: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 fd
007705a0: 2e 2b 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770580 <.text+0x36f580>:
  770580:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  770584:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  770588:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77058c:	50                                              	push   eax
  77058d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770591:	51                                              	push   ecx
  770592:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  770596:	52                                              	push   edx
  770597:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77059b:	50                                              	push   eax
  77059c:	51                                              	push   ecx
  77059d:	52                                              	push   edx
  77059e:	e8 fd 2e 2b 00                                  	call   0xa234a0
  7705a3:	83 c4 18                                        	add    esp,0x18
  7705a6:	c3                                              	ret
  7705a7:	cc                                              	int3
  7705a8:	cc                                              	int3
  7705a9:	cc                                              	int3
  7705aa:	cc                                              	int3
  7705ab:	cc                                              	int3
  7705ac:	cc                                              	int3
  7705ad:	cc                                              	int3
  7705ae:	cc                                              	int3
  7705af:	cc                                              	int3
