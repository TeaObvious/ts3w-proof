# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a247e0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumberOfBadgeStatistics)
Paired Ghidra pseudocode: 00A247E0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumberOfBadgeStatistics.c
Window: [0x00a247e0, 0x00a24810) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a24810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a247e0: 8b 0d a0 bd 1e 01 e8 85 78 b4 ff 8b c8 e8 ce 18
00a247f0: b1 ff 85 c0 74 07 8b c8 e9 a3 52 d1 ff b8 01 00
00a24800: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a247e0 <.text+0x6237e0>:
  a247e0:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a247e6:	e8 85 78 b4 ff                                  	call   0x56c070
  a247eb:	8b c8                                           	mov    ecx,eax
  a247ed:	e8 ce 18 b1 ff                                  	call   0x5360c0
  a247f2:	85 c0                                           	test   eax,eax
  a247f4:	74 07                                           	je     0xa247fd
  a247f6:	8b c8                                           	mov    ecx,eax
  a247f8:	e9 a3 52 d1 ff                                  	jmp    0x739aa0
  a247fd:	b8 01 00 00 00                                  	mov    eax,0x1
  a24802:	c3                                              	ret
  a24803:	cc                                              	int3
  a24804:	cc                                              	int3
  a24805:	cc                                              	int3
  a24806:	cc                                              	int3
  a24807:	cc                                              	int3
  a24808:	cc                                              	int3
  a24809:	cc                                              	int3
  a2480a:	cc                                              	int3
  a2480b:	cc                                              	int3
  a2480c:	cc                                              	int3
  a2480d:	cc                                              	int3
  a2480e:	cc                                              	int3
  a2480f:	cc                                              	int3
