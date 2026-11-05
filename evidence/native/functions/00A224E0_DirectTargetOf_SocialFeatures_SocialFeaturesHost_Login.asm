# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a224e0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_Login)
Paired Ghidra pseudocode: 00A224E0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_Login.c
Window: [0x00a224e0, 0x00a22500) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a224e0: 8b 0d a0 bd 1e 01 e8 85 9b b4 ff 8b c8 e8 4e c4
00a224f0: 01 00 8b c8 e9 37 6e ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a224e0 <.text+0x6214e0>:
  a224e0:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a224e6:	e8 85 9b b4 ff                                  	call   0x56c070
  a224eb:	8b c8                                           	mov    ecx,eax
  a224ed:	e8 4e c4 01 00                                  	call   0xa3e940
  a224f2:	8b c8                                           	mov    ecx,eax
  a224f4:	e9 37 6e ff ff                                  	jmp    0xa19330
  a224f9:	cc                                              	int3
  a224fa:	cc                                              	int3
  a224fb:	cc                                              	int3
  a224fc:	cc                                              	int3
  a224fd:	cc                                              	int3
  a224fe:	cc                                              	int3
  a224ff:	cc                                              	int3
