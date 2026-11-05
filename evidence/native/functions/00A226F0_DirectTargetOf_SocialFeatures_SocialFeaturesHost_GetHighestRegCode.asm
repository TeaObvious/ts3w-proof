# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a226f0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetHighestRegCode)
Paired Ghidra pseudocode: 00A226F0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetHighestRegCode.c
Window: [0x00a226f0, 0x00a22710) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a226f0: 8b 0d a0 bd 1e 01 e8 75 99 b4 ff 8b c8 e8 3e c2
00a22700: 01 00 8b c8 e9 e7 65 ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a226f0 <.text+0x6216f0>:
  a226f0:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a226f6:	e8 75 99 b4 ff                                  	call   0x56c070
  a226fb:	8b c8                                           	mov    ecx,eax
  a226fd:	e8 3e c2 01 00                                  	call   0xa3e940
  a22702:	8b c8                                           	mov    ecx,eax
  a22704:	e9 e7 65 ff ff                                  	jmp    0xa18cf0
  a22709:	cc                                              	int3
  a2270a:	cc                                              	int3
  a2270b:	cc                                              	int3
  a2270c:	cc                                              	int3
  a2270d:	cc                                              	int3
  a2270e:	cc                                              	int3
  a2270f:	cc                                              	int3
