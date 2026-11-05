# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a248e0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatPlatform)
Paired Ghidra pseudocode: 00A248E0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatPlatform.c
Window: [0x00a248e0, 0x00a24910) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a24910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a248e0: 8b 0d a0 bd 1e 01 e8 85 77 b4 ff 8b c8 e8 ce 17
00a248f0: b1 ff 85 c0 74 14 8b 4c 24 04 51 8b c8 e8 fe 56
00a24900: ff ff 85 c0 74 04 8b 40 18 c3 33 c0 c3 cc cc cc

LINEAR DISASSEMBLY
00a248e0 <.text+0x6238e0>:
  a248e0:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a248e6:	e8 85 77 b4 ff                                  	call   0x56c070
  a248eb:	8b c8                                           	mov    ecx,eax
  a248ed:	e8 ce 17 b1 ff                                  	call   0x5360c0
  a248f2:	85 c0                                           	test   eax,eax
  a248f4:	74 14                                           	je     0xa2490a
  a248f6:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a248fa:	51                                              	push   ecx
  a248fb:	8b c8                                           	mov    ecx,eax
  a248fd:	e8 fe 56 ff ff                                  	call   0xa1a000
  a24902:	85 c0                                           	test   eax,eax
  a24904:	74 04                                           	je     0xa2490a
  a24906:	8b 40 18                                        	mov    eax,DWORD PTR [eax+0x18]
  a24909:	c3                                              	ret
  a2490a:	33 c0                                           	xor    eax,eax
  a2490c:	c3                                              	ret
  a2490d:	cc                                              	int3
  a2490e:	cc                                              	int3
  a2490f:	cc                                              	int3
