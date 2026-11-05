# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a255d0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetPassportMessageType)
Paired Ghidra pseudocode: 00A255D0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetPassportMessageType.c
Window: [0x00a255d0, 0x00a255f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a255f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a255d0: 8b 44 24 04 8b 0d a0 bd 1e 01 50 e8 90 6a b4 ff
00a255e0: 8b c8 e8 09 92 fb ff 8b c8 e8 b2 64 01 00 c3 cc

LINEAR DISASSEMBLY
00a255d0 <.text+0x6245d0>:
  a255d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  a255d4:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a255da:	50                                              	push   eax
  a255db:	e8 90 6a b4 ff                                  	call   0x56c070
  a255e0:	8b c8                                           	mov    ecx,eax
  a255e2:	e8 09 92 fb ff                                  	call   0x9de7f0
  a255e7:	8b c8                                           	mov    ecx,eax
  a255e9:	e8 b2 64 01 00                                  	call   0xa3baa0
  a255ee:	c3                                              	ret
  a255ef:	cc                                              	int3
