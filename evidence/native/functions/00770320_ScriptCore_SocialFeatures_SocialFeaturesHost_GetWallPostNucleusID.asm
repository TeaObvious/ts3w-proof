# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770320 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWallPostNucleusID)
Paired Ghidra pseudocode: 00770320_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWallPostNucleusID.c
Window: [0x00770320, 0x00770340) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770320: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770330: 08 51 52 50 e8 07 2c 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770320 <.text+0x36f320>:
  770320:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770324:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770328:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77032c:	50                                              	push   eax
  77032d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770331:	51                                              	push   ecx
  770332:	52                                              	push   edx
  770333:	50                                              	push   eax
  770334:	e8 07 2c 2b 00                                  	call   0xa22f40
  770339:	83 c4 10                                        	add    esp,0x10
  77033c:	c3                                              	ret
  77033d:	cc                                              	int3
  77033e:	cc                                              	int3
  77033f:	cc                                              	int3
