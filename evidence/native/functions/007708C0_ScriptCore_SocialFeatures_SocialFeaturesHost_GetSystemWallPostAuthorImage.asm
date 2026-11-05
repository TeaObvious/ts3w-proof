# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007708c0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetSystemWallPostAuthorImage)
Paired Ghidra pseudocode: 007708C0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetSystemWallPostAuthorImage.c
Window: [0x007708c0, 0x00770910) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007708c0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 10 50
007708d0: 8b 44 24 1c 51 52 50 8d 4c 24 10 51 e8 5f 36 2b
007708e0: 00 8b 4c 24 28 8b 10 89 11 8b 50 04 89 51 04 8b
007708f0: 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4 24
00770900: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007708c0 <.text+0x36f8c0>:
  7708c0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  7708c4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7708c8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7708cc:	83 ec 10                                        	sub    esp,0x10
  7708cf:	50                                              	push   eax
  7708d0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7708d4:	51                                              	push   ecx
  7708d5:	52                                              	push   edx
  7708d6:	50                                              	push   eax
  7708d7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7708db:	51                                              	push   ecx
  7708dc:	e8 5f 36 2b 00                                  	call   0xa23f40
  7708e1:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7708e5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7708e7:	89 11                                           	mov    DWORD PTR [ecx],edx
  7708e9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7708ec:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  7708ef:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  7708f2:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  7708f5:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  7708f8:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  7708fb:	8b c1                                           	mov    eax,ecx
  7708fd:	83 c4 24                                        	add    esp,0x24
  770900:	c3                                              	ret
  770901:	cc                                              	int3
  770902:	cc                                              	int3
  770903:	cc                                              	int3
  770904:	cc                                              	int3
  770905:	cc                                              	int3
  770906:	cc                                              	int3
  770907:	cc                                              	int3
  770908:	cc                                              	int3
  770909:	cc                                              	int3
  77090a:	cc                                              	int3
  77090b:	cc                                              	int3
  77090c:	cc                                              	int3
  77090d:	cc                                              	int3
  77090e:	cc                                              	int3
  77090f:	cc                                              	int3
