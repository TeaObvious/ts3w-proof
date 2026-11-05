# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770030 (ScriptCore.SocialFeatures::SocialFeaturesHost_FriendsGetSearchResultImageKey)
Paired Ghidra pseudocode: 00770030_ScriptCore_SocialFeatures_SocialFeaturesHost_FriendsGetSearchResultImageKey.c
Window: [0x00770030, 0x00770070) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770030: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 9e 28
00770040: 2b 00 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
00770050: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
00770060: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770030 <.text+0x36f030>:
  770030:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770034:	83 ec 10                                        	sub    esp,0x10
  770037:	50                                              	push   eax
  770038:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  77003c:	51                                              	push   ecx
  77003d:	e8 9e 28 2b 00                                  	call   0xa228e0
  770042:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  770046:	8b 10                                           	mov    edx,DWORD PTR [eax]
  770048:	89 11                                           	mov    DWORD PTR [ecx],edx
  77004a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77004d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  770050:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  770053:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  770056:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  770059:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  77005c:	8b c1                                           	mov    eax,ecx
  77005e:	83 c4 18                                        	add    esp,0x18
  770061:	c3                                              	ret
  770062:	cc                                              	int3
  770063:	cc                                              	int3
  770064:	cc                                              	int3
  770065:	cc                                              	int3
  770066:	cc                                              	int3
  770067:	cc                                              	int3
  770068:	cc                                              	int3
  770069:	cc                                              	int3
  77006a:	cc                                              	int3
  77006b:	cc                                              	int3
  77006c:	cc                                              	int3
  77006d:	cc                                              	int3
  77006e:	cc                                              	int3
  77006f:	cc                                              	int3
