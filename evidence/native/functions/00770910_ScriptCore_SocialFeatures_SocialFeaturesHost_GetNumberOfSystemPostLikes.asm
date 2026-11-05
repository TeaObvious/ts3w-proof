# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770910 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumberOfSystemPostLikes)
Paired Ghidra pseudocode: 00770910_ScriptCore_SocialFeatures_SocialFeaturesHost_GetNumberOfSystemPostLikes.c
Window: [0x00770910, 0x00770930) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770910: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770920: 08 51 52 50 e8 a7 36 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770910 <.text+0x36f910>:
  770910:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770914:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770918:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77091c:	50                                              	push   eax
  77091d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770921:	51                                              	push   ecx
  770922:	52                                              	push   edx
  770923:	50                                              	push   eax
  770924:	e8 a7 36 2b 00                                  	call   0xa23fd0
  770929:	83 c4 10                                        	add    esp,0x10
  77092c:	c3                                              	ret
  77092d:	cc                                              	int3
  77092e:	cc                                              	int3
  77092f:	cc                                              	int3
