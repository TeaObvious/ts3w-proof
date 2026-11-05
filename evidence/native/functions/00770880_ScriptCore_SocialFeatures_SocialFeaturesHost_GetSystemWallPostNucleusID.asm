# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770880 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetSystemWallPostNucleusID)
Paired Ghidra pseudocode: 00770880_ScriptCore_SocialFeatures_SocialFeaturesHost_GetSystemWallPostNucleusID.c
Window: [0x00770880, 0x007708a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007708a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770880: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770890: 08 51 52 50 e8 77 35 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770880 <.text+0x36f880>:
  770880:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770884:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770888:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77088c:	50                                              	push   eax
  77088d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770891:	51                                              	push   ecx
  770892:	52                                              	push   edx
  770893:	50                                              	push   eax
  770894:	e8 77 35 2b 00                                  	call   0xa23e10
  770899:	83 c4 10                                        	add    esp,0x10
  77089c:	c3                                              	ret
  77089d:	cc                                              	int3
  77089e:	cc                                              	int3
  77089f:	cc                                              	int3
