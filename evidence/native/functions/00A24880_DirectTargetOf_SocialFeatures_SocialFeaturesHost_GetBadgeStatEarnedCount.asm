# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a24880 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatEarnedCount)
Paired Ghidra pseudocode: 00A24880_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatEarnedCount.c
Window: [0x00a24880, 0x00a248b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a248b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a24880: 8b 0d a0 bd 1e 01 e8 e5 77 b4 ff 8b c8 e8 2e 18
00a24890: b1 ff 85 c0 74 14 8b 4c 24 04 51 8b c8 e8 5e 57
00a248a0: ff ff 85 c0 74 04 8b 40 10 c3 b8 01 00 00 00 c3

LINEAR DISASSEMBLY
00a24880 <.text+0x623880>:
  a24880:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a24886:	e8 e5 77 b4 ff                                  	call   0x56c070
  a2488b:	8b c8                                           	mov    ecx,eax
  a2488d:	e8 2e 18 b1 ff                                  	call   0x5360c0
  a24892:	85 c0                                           	test   eax,eax
  a24894:	74 14                                           	je     0xa248aa
  a24896:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a2489a:	51                                              	push   ecx
  a2489b:	8b c8                                           	mov    ecx,eax
  a2489d:	e8 5e 57 ff ff                                  	call   0xa1a000
  a248a2:	85 c0                                           	test   eax,eax
  a248a4:	74 04                                           	je     0xa248aa
  a248a6:	8b 40 10                                        	mov    eax,DWORD PTR [eax+0x10]
  a248a9:	c3                                              	ret
  a248aa:	b8 01 00 00 00                                  	mov    eax,0x1
  a248af:	c3                                              	ret
