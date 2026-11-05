# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770380 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWallPostAuthorImage)
Paired Ghidra pseudocode: 00770380_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWallPostAuthorImage.c
Window: [0x00770380, 0x007703d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007703d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770380: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 10 50
00770390: 8b 44 24 1c 51 52 50 8d 4c 24 10 51 e8 0f 2d 2b
007703a0: 00 8b 4c 24 28 8b 10 89 11 8b 50 04 89 51 04 8b
007703b0: 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4 24
007703c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770380 <.text+0x36f380>:
  770380:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  770384:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  770388:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  77038c:	83 ec 10                                        	sub    esp,0x10
  77038f:	50                                              	push   eax
  770390:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  770394:	51                                              	push   ecx
  770395:	52                                              	push   edx
  770396:	50                                              	push   eax
  770397:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  77039b:	51                                              	push   ecx
  77039c:	e8 0f 2d 2b 00                                  	call   0xa230b0
  7703a1:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7703a5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7703a7:	89 11                                           	mov    DWORD PTR [ecx],edx
  7703a9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7703ac:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  7703af:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  7703b2:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  7703b5:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  7703b8:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  7703bb:	8b c1                                           	mov    eax,ecx
  7703bd:	83 c4 24                                        	add    esp,0x24
  7703c0:	c3                                              	ret
  7703c1:	cc                                              	int3
  7703c2:	cc                                              	int3
  7703c3:	cc                                              	int3
  7703c4:	cc                                              	int3
  7703c5:	cc                                              	int3
  7703c6:	cc                                              	int3
  7703c7:	cc                                              	int3
  7703c8:	cc                                              	int3
  7703c9:	cc                                              	int3
  7703ca:	cc                                              	int3
  7703cb:	cc                                              	int3
  7703cc:	cc                                              	int3
  7703cd:	cc                                              	int3
  7703ce:	cc                                              	int3
  7703cf:	cc                                              	int3
