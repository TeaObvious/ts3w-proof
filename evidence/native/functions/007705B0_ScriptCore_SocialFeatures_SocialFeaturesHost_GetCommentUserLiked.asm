# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007705b0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetCommentUserLiked)
Paired Ghidra pseudocode: 007705B0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetCommentUserLiked.c
Window: [0x007705b0, 0x007705e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007705e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007705b0: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
007705c0: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 1d
007705d0: 2f 2b 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007705b0 <.text+0x36f5b0>:
  7705b0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7705b4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7705b8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  7705bc:	50                                              	push   eax
  7705bd:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7705c1:	51                                              	push   ecx
  7705c2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7705c6:	52                                              	push   edx
  7705c7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  7705cb:	50                                              	push   eax
  7705cc:	51                                              	push   ecx
  7705cd:	52                                              	push   edx
  7705ce:	e8 1d 2f 2b 00                                  	call   0xa234f0
  7705d3:	83 c4 18                                        	add    esp,0x18
  7705d6:	c3                                              	ret
  7705d7:	cc                                              	int3
  7705d8:	cc                                              	int3
  7705d9:	cc                                              	int3
  7705da:	cc                                              	int3
  7705db:	cc                                              	int3
  7705dc:	cc                                              	int3
  7705dd:	cc                                              	int3
  7705de:	cc                                              	int3
  7705df:	cc                                              	int3
