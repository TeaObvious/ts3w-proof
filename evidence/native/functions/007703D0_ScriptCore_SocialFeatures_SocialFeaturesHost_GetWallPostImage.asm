# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007703d0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWallPostImage)
Paired Ghidra pseudocode: 007703D0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWallPostImage.c
Window: [0x007703d0, 0x00770420) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770420
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007703d0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 10 50
007703e0: 8b 44 24 1c 51 52 50 8d 4c 24 10 51 e8 4f 2d 2b
007703f0: 00 8b 4c 24 28 8b 10 89 11 8b 50 04 89 51 04 8b
00770400: 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4 24
00770410: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007703d0 <.text+0x36f3d0>:
  7703d0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  7703d4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7703d8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7703dc:	83 ec 10                                        	sub    esp,0x10
  7703df:	50                                              	push   eax
  7703e0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7703e4:	51                                              	push   ecx
  7703e5:	52                                              	push   edx
  7703e6:	50                                              	push   eax
  7703e7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7703eb:	51                                              	push   ecx
  7703ec:	e8 4f 2d 2b 00                                  	call   0xa23140
  7703f1:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7703f5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7703f7:	89 11                                           	mov    DWORD PTR [ecx],edx
  7703f9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7703fc:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  7703ff:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  770402:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  770405:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  770408:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  77040b:	8b c1                                           	mov    eax,ecx
  77040d:	83 c4 24                                        	add    esp,0x24
  770410:	c3                                              	ret
  770411:	cc                                              	int3
  770412:	cc                                              	int3
  770413:	cc                                              	int3
  770414:	cc                                              	int3
  770415:	cc                                              	int3
  770416:	cc                                              	int3
  770417:	cc                                              	int3
  770418:	cc                                              	int3
  770419:	cc                                              	int3
  77041a:	cc                                              	int3
  77041b:	cc                                              	int3
  77041c:	cc                                              	int3
  77041d:	cc                                              	int3
  77041e:	cc                                              	int3
  77041f:	cc                                              	int3
