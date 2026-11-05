# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a226a0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetShareToTwitter)
Paired Ghidra pseudocode: 00A226A0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetShareToTwitter.c
Window: [0x00a226a0, 0x00a226c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a226c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a226a0: 8b 0d a0 bd 1e 01 e8 c5 99 b4 ff 8b c8 e8 8e c2
00a226b0: 01 00 8b c8 e9 f7 6b ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a226a0 <.text+0x6216a0>:
  a226a0:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a226a6:	e8 c5 99 b4 ff                                  	call   0x56c070
  a226ab:	8b c8                                           	mov    ecx,eax
  a226ad:	e8 8e c2 01 00                                  	call   0xa3e940
  a226b2:	8b c8                                           	mov    ecx,eax
  a226b4:	e9 f7 6b ff ff                                  	jmp    0xa192b0
  a226b9:	cc                                              	int3
  a226ba:	cc                                              	int3
  a226bb:	cc                                              	int3
  a226bc:	cc                                              	int3
  a226bd:	cc                                              	int3
  a226be:	cc                                              	int3
  a226bf:	cc                                              	int3
