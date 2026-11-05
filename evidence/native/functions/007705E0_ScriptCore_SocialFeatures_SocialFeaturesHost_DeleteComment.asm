# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007705e0 (ScriptCore.SocialFeatures::SocialFeaturesHost_DeleteComment)
Paired Ghidra pseudocode: 007705E0_ScriptCore_SocialFeatures_SocialFeaturesHost_DeleteComment.c
Window: [0x007705e0, 0x00770610) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007705e0: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
007705f0: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 3d
00770600: 2f 2b 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007705e0 <.text+0x36f5e0>:
  7705e0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7705e4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7705e8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  7705ec:	50                                              	push   eax
  7705ed:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7705f1:	51                                              	push   ecx
  7705f2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7705f6:	52                                              	push   edx
  7705f7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  7705fb:	50                                              	push   eax
  7705fc:	51                                              	push   ecx
  7705fd:	52                                              	push   edx
  7705fe:	e8 3d 2f 2b 00                                  	call   0xa23540
  770603:	83 c4 18                                        	add    esp,0x18
  770606:	c3                                              	ret
  770607:	cc                                              	int3
  770608:	cc                                              	int3
  770609:	cc                                              	int3
  77060a:	cc                                              	int3
  77060b:	cc                                              	int3
  77060c:	cc                                              	int3
  77060d:	cc                                              	int3
  77060e:	cc                                              	int3
  77060f:	cc                                              	int3
