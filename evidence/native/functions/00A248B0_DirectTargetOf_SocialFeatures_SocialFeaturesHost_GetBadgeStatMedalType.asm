# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a248b0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatMedalType)
Paired Ghidra pseudocode: 00A248B0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatMedalType.c
Window: [0x00a248b0, 0x00a248e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a248e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a248b0: 8b 0d a0 bd 1e 01 e8 b5 77 b4 ff 8b c8 e8 fe 17
00a248c0: b1 ff 85 c0 74 14 8b 4c 24 04 51 8b c8 e8 2e 57
00a248d0: ff ff 85 c0 74 04 8b 40 14 c3 33 c0 c3 cc cc cc

LINEAR DISASSEMBLY
00a248b0 <.text+0x6238b0>:
  a248b0:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a248b6:	e8 b5 77 b4 ff                                  	call   0x56c070
  a248bb:	8b c8                                           	mov    ecx,eax
  a248bd:	e8 fe 17 b1 ff                                  	call   0x5360c0
  a248c2:	85 c0                                           	test   eax,eax
  a248c4:	74 14                                           	je     0xa248da
  a248c6:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a248ca:	51                                              	push   ecx
  a248cb:	8b c8                                           	mov    ecx,eax
  a248cd:	e8 2e 57 ff ff                                  	call   0xa1a000
  a248d2:	85 c0                                           	test   eax,eax
  a248d4:	74 04                                           	je     0xa248da
  a248d6:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
  a248d9:	c3                                              	ret
  a248da:	33 c0                                           	xor    eax,eax
  a248dc:	c3                                              	ret
  a248dd:	cc                                              	int3
  a248de:	cc                                              	int3
  a248df:	cc                                              	int3
