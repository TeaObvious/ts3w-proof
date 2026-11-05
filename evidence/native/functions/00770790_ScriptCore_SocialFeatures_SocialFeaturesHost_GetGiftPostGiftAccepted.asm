# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770790 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetGiftPostGiftAccepted)
Paired Ghidra pseudocode: 00770790_ScriptCore_SocialFeatures_SocialFeaturesHost_GetGiftPostGiftAccepted.c
Window: [0x00770790, 0x007707b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007707b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770790: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
007707a0: 08 51 52 50 e8 97 34 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770790 <.text+0x36f790>:
  770790:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770794:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770798:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77079c:	50                                              	push   eax
  77079d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7707a1:	51                                              	push   ecx
  7707a2:	52                                              	push   edx
  7707a3:	50                                              	push   eax
  7707a4:	e8 97 34 2b 00                                  	call   0xa23c40
  7707a9:	83 c4 10                                        	add    esp,0x10
  7707ac:	c3                                              	ret
  7707ad:	cc                                              	int3
  7707ae:	cc                                              	int3
  7707af:	cc                                              	int3
