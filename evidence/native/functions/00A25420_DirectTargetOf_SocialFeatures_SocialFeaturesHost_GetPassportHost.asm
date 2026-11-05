# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a25420 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetPassportHost)
Paired Ghidra pseudocode: 00A25420_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetPassportHost.c
Window: [0x00a25420, 0x00a25440) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a25440
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a25420: 8b 44 24 04 8b 0d a0 bd 1e 01 50 e8 40 6c b4 ff
00a25430: 8b c8 e8 b9 93 fb ff 8b c8 e8 f2 5b 01 00 c3 cc

LINEAR DISASSEMBLY
00a25420 <.text+0x624420>:
  a25420:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  a25424:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a2542a:	50                                              	push   eax
  a2542b:	e8 40 6c b4 ff                                  	call   0x56c070
  a25430:	8b c8                                           	mov    ecx,eax
  a25432:	e8 b9 93 fb ff                                  	call   0x9de7f0
  a25437:	8b c8                                           	mov    ecx,eax
  a25439:	e8 f2 5b 01 00                                  	call   0xa3b030
  a2543e:	c3                                              	ret
  a2543f:	cc                                              	int3
