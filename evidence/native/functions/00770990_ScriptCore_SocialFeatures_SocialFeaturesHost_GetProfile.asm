# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770990 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfile)
Paired Ghidra pseudocode: 00770990_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfile.c
Window: [0x00770990, 0x007709b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007709b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770990: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
007709a0: 08 51 52 50 e8 37 37 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770990 <.text+0x36f990>:
  770990:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770994:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770998:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77099c:	50                                              	push   eax
  77099d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7709a1:	51                                              	push   ecx
  7709a2:	52                                              	push   edx
  7709a3:	50                                              	push   eax
  7709a4:	e8 37 37 2b 00                                  	call   0xa240e0
  7709a9:	83 c4 10                                        	add    esp,0x10
  7709ac:	c3                                              	ret
  7709ad:	cc                                              	int3
  7709ae:	cc                                              	int3
  7709af:	cc                                              	int3
