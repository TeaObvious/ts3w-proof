# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770810 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetSystemPostsWall)
Paired Ghidra pseudocode: 00770810_ScriptCore_SocialFeatures_SocialFeaturesHost_GetSystemPostsWall.c
Window: [0x00770810, 0x00770840) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770810: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
00770820: 0c 51 8b 4c 24 0c 52 50 51 e8 12 35 2b 00 83 c4
00770830: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770810 <.text+0x36f810>:
  770810:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  770814:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  770818:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  77081c:	50                                              	push   eax
  77081d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  770821:	51                                              	push   ecx
  770822:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770826:	52                                              	push   edx
  770827:	50                                              	push   eax
  770828:	51                                              	push   ecx
  770829:	e8 12 35 2b 00                                  	call   0xa23d40
  77082e:	83 c4 14                                        	add    esp,0x14
  770831:	c3                                              	ret
  770832:	cc                                              	int3
  770833:	cc                                              	int3
  770834:	cc                                              	int3
  770835:	cc                                              	int3
  770836:	cc                                              	int3
  770837:	cc                                              	int3
  770838:	cc                                              	int3
  770839:	cc                                              	int3
  77083a:	cc                                              	int3
  77083b:	cc                                              	int3
  77083c:	cc                                              	int3
  77083d:	cc                                              	int3
  77083e:	cc                                              	int3
  77083f:	cc                                              	int3
