# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007702b0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWallPostComments)
Paired Ghidra pseudocode: 007702B0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWallPostComments.c
Window: [0x007702b0, 0x007702e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007702e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007702b0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
007702c0: 0c 51 8b 4c 24 0c 52 50 51 e8 a2 2b 2b 00 83 c4
007702d0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007702b0 <.text+0x36f2b0>:
  7702b0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  7702b4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7702b8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7702bc:	50                                              	push   eax
  7702bd:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7702c1:	51                                              	push   ecx
  7702c2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7702c6:	52                                              	push   edx
  7702c7:	50                                              	push   eax
  7702c8:	51                                              	push   ecx
  7702c9:	e8 a2 2b 2b 00                                  	call   0xa22e70
  7702ce:	83 c4 14                                        	add    esp,0x14
  7702d1:	c3                                              	ret
  7702d2:	cc                                              	int3
  7702d3:	cc                                              	int3
  7702d4:	cc                                              	int3
  7702d5:	cc                                              	int3
  7702d6:	cc                                              	int3
  7702d7:	cc                                              	int3
  7702d8:	cc                                              	int3
  7702d9:	cc                                              	int3
  7702da:	cc                                              	int3
  7702db:	cc                                              	int3
  7702dc:	cc                                              	int3
  7702dd:	cc                                              	int3
  7702de:	cc                                              	int3
  7702df:	cc                                              	int3
