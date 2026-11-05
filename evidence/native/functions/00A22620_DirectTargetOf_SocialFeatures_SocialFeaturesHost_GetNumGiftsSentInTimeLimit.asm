# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22620 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumGiftsSentInTimeLimit)
Paired Ghidra pseudocode: 00A22620_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumGiftsSentInTimeLimit.c
Window: [0x00a22620, 0x00a22640) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22620: 8b 0d a0 bd 1e 01 e8 45 9a b4 ff 8b c8 e8 0e c3
00a22630: 01 00 8b c8 e9 f7 6a ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a22620 <.text+0x621620>:
  a22620:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22626:	e8 45 9a b4 ff                                  	call   0x56c070
  a2262b:	8b c8                                           	mov    ecx,eax
  a2262d:	e8 0e c3 01 00                                  	call   0xa3e940
  a22632:	8b c8                                           	mov    ecx,eax
  a22634:	e9 f7 6a ff ff                                  	jmp    0xa19130
  a22639:	cc                                              	int3
  a2263a:	cc                                              	int3
  a2263b:	cc                                              	int3
  a2263c:	cc                                              	int3
  a2263d:	cc                                              	int3
  a2263e:	cc                                              	int3
  a2263f:	cc                                              	int3
