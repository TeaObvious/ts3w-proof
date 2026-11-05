# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770440 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWallPostUserLiked)
Paired Ghidra pseudocode: 00770440_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWallPostUserLiked.c
Window: [0x00770440, 0x00770460) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770460
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770440: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770450: 08 51 52 50 e8 f7 2d 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770440 <.text+0x36f440>:
  770440:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770444:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770448:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77044c:	50                                              	push   eax
  77044d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770451:	51                                              	push   ecx
  770452:	52                                              	push   edx
  770453:	50                                              	push   eax
  770454:	e8 f7 2d 2b 00                                  	call   0xa23250
  770459:	83 c4 10                                        	add    esp,0x10
  77045c:	c3                                              	ret
  77045d:	cc                                              	int3
  77045e:	cc                                              	int3
  77045f:	cc                                              	int3
