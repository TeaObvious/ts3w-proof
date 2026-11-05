# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007707d0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetGiftPostDefaultText)
Paired Ghidra pseudocode: 007707D0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetGiftPostDefaultText.c
Window: [0x007707d0, 0x007707f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007707f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007707d0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
007707e0: 08 51 52 50 e8 d7 34 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
007707d0 <.text+0x36f7d0>:
  7707d0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7707d4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7707d8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  7707dc:	50                                              	push   eax
  7707dd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7707e1:	51                                              	push   ecx
  7707e2:	52                                              	push   edx
  7707e3:	50                                              	push   eax
  7707e4:	e8 d7 34 2b 00                                  	call   0xa23cc0
  7707e9:	83 c4 10                                        	add    esp,0x10
  7707ec:	c3                                              	ret
  7707ed:	cc                                              	int3
  7707ee:	cc                                              	int3
  7707ef:	cc                                              	int3
