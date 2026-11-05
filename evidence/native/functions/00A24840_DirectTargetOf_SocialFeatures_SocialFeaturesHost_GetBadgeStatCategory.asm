# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a24840 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatCategory)
Paired Ghidra pseudocode: 00A24840_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatCategory.c
Window: [0x00a24840, 0x00a24880) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a24880
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a24840: 8b 0d a0 bd 1e 01 e8 25 78 b4 ff 8b c8 e8 6e 18
00a24850: b1 ff 85 c0 74 19 8b 4c 24 04 51 8b c8 e8 9e 57
00a24860: ff ff 8b c8 85 c9 74 07 8b 41 08 8b 51 0c c3 b8
00a24870: 01 00 00 00 33 d2 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a24840 <.text+0x623840>:
  a24840:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a24846:	e8 25 78 b4 ff                                  	call   0x56c070
  a2484b:	8b c8                                           	mov    ecx,eax
  a2484d:	e8 6e 18 b1 ff                                  	call   0x5360c0
  a24852:	85 c0                                           	test   eax,eax
  a24854:	74 19                                           	je     0xa2486f
  a24856:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a2485a:	51                                              	push   ecx
  a2485b:	8b c8                                           	mov    ecx,eax
  a2485d:	e8 9e 57 ff ff                                  	call   0xa1a000
  a24862:	8b c8                                           	mov    ecx,eax
  a24864:	85 c9                                           	test   ecx,ecx
  a24866:	74 07                                           	je     0xa2486f
  a24868:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  a2486b:	8b 51 0c                                        	mov    edx,DWORD PTR [ecx+0xc]
  a2486e:	c3                                              	ret
  a2486f:	b8 01 00 00 00                                  	mov    eax,0x1
  a24874:	33 d2                                           	xor    edx,edx
  a24876:	c3                                              	ret
  a24877:	cc                                              	int3
  a24878:	cc                                              	int3
  a24879:	cc                                              	int3
  a2487a:	cc                                              	int3
  a2487b:	cc                                              	int3
  a2487c:	cc                                              	int3
  a2487d:	cc                                              	int3
  a2487e:	cc                                              	int3
  a2487f:	cc                                              	int3
