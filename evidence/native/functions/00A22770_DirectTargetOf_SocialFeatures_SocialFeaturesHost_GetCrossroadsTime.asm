# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22770 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetCrossroadsTime)
Paired Ghidra pseudocode: 00A22770_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetCrossroadsTime.c
Window: [0x00a22770, 0x00a22790) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22790
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22770: 8b 0d a0 bd 1e 01 e8 f5 98 b4 ff 8b c8 e8 be c1
00a22780: 01 00 8b c8 e9 27 68 ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a22770 <.text+0x621770>:
  a22770:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22776:	e8 f5 98 b4 ff                                  	call   0x56c070
  a2277b:	8b c8                                           	mov    ecx,eax
  a2277d:	e8 be c1 01 00                                  	call   0xa3e940
  a22782:	8b c8                                           	mov    ecx,eax
  a22784:	e9 27 68 ff ff                                  	jmp    0xa18fb0
  a22789:	cc                                              	int3
  a2278a:	cc                                              	int3
  a2278b:	cc                                              	int3
  a2278c:	cc                                              	int3
  a2278d:	cc                                              	int3
  a2278e:	cc                                              	int3
  a2278f:	cc                                              	int3
