# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a247b0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatistics)
Paired Ghidra pseudocode: 00A247B0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatistics.c
Window: [0x00a247b0, 0x00a247e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a247e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a247b0: 8b 0d a0 bd 1e 01 e8 b5 78 b4 ff 8b c8 e8 fe 18
00a247c0: b1 ff 85 c0 74 0f 8b 4c 24 04 51 8b c8 e8 1e 59
00a247d0: ff ff 33 c0 c3 b8 01 00 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00a247b0 <.text+0x6237b0>:
  a247b0:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a247b6:	e8 b5 78 b4 ff                                  	call   0x56c070
  a247bb:	8b c8                                           	mov    ecx,eax
  a247bd:	e8 fe 18 b1 ff                                  	call   0x5360c0
  a247c2:	85 c0                                           	test   eax,eax
  a247c4:	74 0f                                           	je     0xa247d5
  a247c6:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a247ca:	51                                              	push   ecx
  a247cb:	8b c8                                           	mov    ecx,eax
  a247cd:	e8 1e 59 ff ff                                  	call   0xa1a0f0
  a247d2:	33 c0                                           	xor    eax,eax
  a247d4:	c3                                              	ret
  a247d5:	b8 01 00 00 00                                  	mov    eax,0x1
  a247da:	c3                                              	ret
  a247db:	cc                                              	int3
  a247dc:	cc                                              	int3
  a247dd:	cc                                              	int3
  a247de:	cc                                              	int3
  a247df:	cc                                              	int3
