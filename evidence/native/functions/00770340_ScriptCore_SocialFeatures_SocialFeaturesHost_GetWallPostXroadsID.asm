# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770340 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWallPostXroadsID)
Paired Ghidra pseudocode: 00770340_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWallPostXroadsID.c
Window: [0x00770340, 0x00770360) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770340: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
00770350: 3c 2c 2b 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770340 <.text+0x36f340>:
  770340:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  770344:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  770348:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  77034c:	50                                              	push   eax
  77034d:	51                                              	push   ecx
  77034e:	52                                              	push   edx
  77034f:	e8 3c 2c 2b 00                                  	call   0xa22f90
  770354:	83 c4 0c                                        	add    esp,0xc
  770357:	c3                                              	ret
  770358:	cc                                              	int3
  770359:	cc                                              	int3
  77035a:	cc                                              	int3
  77035b:	cc                                              	int3
  77035c:	cc                                              	int3
  77035d:	cc                                              	int3
  77035e:	cc                                              	int3
  77035f:	cc                                              	int3
