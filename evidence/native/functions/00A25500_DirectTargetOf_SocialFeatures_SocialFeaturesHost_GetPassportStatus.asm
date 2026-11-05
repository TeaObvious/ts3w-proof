# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a25500 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetPassportStatus)
Paired Ghidra pseudocode: 00A25500_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetPassportStatus.c
Window: [0x00a25500, 0x00a25520) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a25520
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a25500: 8b 44 24 04 8b 0d a0 bd 1e 01 50 e8 60 6b b4 ff
00a25510: 8b c8 e8 d9 92 fb ff 8b c8 e8 02 56 01 00 c3 cc

LINEAR DISASSEMBLY
00a25500 <.text+0x624500>:
  a25500:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  a25504:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a2550a:	50                                              	push   eax
  a2550b:	e8 60 6b b4 ff                                  	call   0x56c070
  a25510:	8b c8                                           	mov    ecx,eax
  a25512:	e8 d9 92 fb ff                                  	call   0x9de7f0
  a25517:	8b c8                                           	mov    ecx,eax
  a25519:	e8 02 56 01 00                                  	call   0xa3ab20
  a2551e:	c3                                              	ret
  a2551f:	cc                                              	int3
