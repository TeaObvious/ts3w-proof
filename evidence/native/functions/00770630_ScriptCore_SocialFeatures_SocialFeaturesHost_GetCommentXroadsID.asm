# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770630 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetCommentXroadsID)
Paired Ghidra pseudocode: 00770630_ScriptCore_SocialFeatures_SocialFeaturesHost_GetCommentXroadsID.c
Window: [0x00770630, 0x00770660) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770630: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
00770640: 0c 51 8b 4c 24 0c 52 50 51 e8 82 2f 2b 00 83 c4
00770650: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770630 <.text+0x36f630>:
  770630:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  770634:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  770638:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  77063c:	50                                              	push   eax
  77063d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  770641:	51                                              	push   ecx
  770642:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770646:	52                                              	push   edx
  770647:	50                                              	push   eax
  770648:	51                                              	push   ecx
  770649:	e8 82 2f 2b 00                                  	call   0xa235d0
  77064e:	83 c4 14                                        	add    esp,0x14
  770651:	c3                                              	ret
  770652:	cc                                              	int3
  770653:	cc                                              	int3
  770654:	cc                                              	int3
  770655:	cc                                              	int3
  770656:	cc                                              	int3
  770657:	cc                                              	int3
  770658:	cc                                              	int3
  770659:	cc                                              	int3
  77065a:	cc                                              	int3
  77065b:	cc                                              	int3
  77065c:	cc                                              	int3
  77065d:	cc                                              	int3
  77065e:	cc                                              	int3
  77065f:	cc                                              	int3
