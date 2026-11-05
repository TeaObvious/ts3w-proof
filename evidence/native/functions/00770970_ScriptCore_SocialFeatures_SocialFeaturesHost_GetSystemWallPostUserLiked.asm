# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770970 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetSystemWallPostUserLiked)
Paired Ghidra pseudocode: 00770970_ScriptCore_SocialFeatures_SocialFeaturesHost_GetSystemWallPostUserLiked.c
Window: [0x00770970, 0x00770990) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770970: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770980: 08 51 52 50 e8 87 36 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770970 <.text+0x36f970>:
  770970:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770974:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770978:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77097c:	50                                              	push   eax
  77097d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770981:	51                                              	push   ecx
  770982:	52                                              	push   edx
  770983:	50                                              	push   eax
  770984:	e8 87 36 2b 00                                  	call   0xa24010
  770989:	83 c4 10                                        	add    esp,0x10
  77098c:	c3                                              	ret
  77098d:	cc                                              	int3
  77098e:	cc                                              	int3
  77098f:	cc                                              	int3
