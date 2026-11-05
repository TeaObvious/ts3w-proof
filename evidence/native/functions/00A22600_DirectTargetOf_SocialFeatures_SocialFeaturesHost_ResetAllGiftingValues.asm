# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22600 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_ResetAllGiftingValues)
Paired Ghidra pseudocode: 00A22600_DirectTargetOf_SocialFeatures_SocialFeaturesHost_ResetAllGiftingValues.c
Window: [0x00a22600, 0x00a22620) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22600: 8b 0d a0 bd 1e 01 e8 65 9a b4 ff 8b c8 e8 2e c3
00a22610: 01 00 8b c8 e9 c7 73 ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a22600 <.text+0x621600>:
  a22600:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22606:	e8 65 9a b4 ff                                  	call   0x56c070
  a2260b:	8b c8                                           	mov    ecx,eax
  a2260d:	e8 2e c3 01 00                                  	call   0xa3e940
  a22612:	8b c8                                           	mov    ecx,eax
  a22614:	e9 c7 73 ff ff                                  	jmp    0xa199e0
  a22619:	cc                                              	int3
  a2261a:	cc                                              	int3
  a2261b:	cc                                              	int3
  a2261c:	cc                                              	int3
  a2261d:	cc                                              	int3
  a2261e:	cc                                              	int3
  a2261f:	cc                                              	int3
