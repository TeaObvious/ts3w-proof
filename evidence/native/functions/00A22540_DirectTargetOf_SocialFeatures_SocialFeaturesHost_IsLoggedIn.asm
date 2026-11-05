# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22540 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_IsLoggedIn)
Paired Ghidra pseudocode: 00A22540_DirectTargetOf_SocialFeatures_SocialFeaturesHost_IsLoggedIn.c
Window: [0x00a22540, 0x00a22560) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22540: 8b 0d a0 bd 1e 01 e8 25 9b b4 ff 8b c8 e8 ee c3
00a22550: 01 00 8b c8 e9 67 6d ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a22540 <.text+0x621540>:
  a22540:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22546:	e8 25 9b b4 ff                                  	call   0x56c070
  a2254b:	8b c8                                           	mov    ecx,eax
  a2254d:	e8 ee c3 01 00                                  	call   0xa3e940
  a22552:	8b c8                                           	mov    ecx,eax
  a22554:	e9 67 6d ff ff                                  	jmp    0xa192c0
  a22559:	cc                                              	int3
  a2255a:	cc                                              	int3
  a2255b:	cc                                              	int3
  a2255c:	cc                                              	int3
  a2255d:	cc                                              	int3
  a2255e:	cc                                              	int3
  a2255f:	cc                                              	int3
