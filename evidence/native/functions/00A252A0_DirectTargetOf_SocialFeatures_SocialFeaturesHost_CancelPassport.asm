# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a252a0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_CancelPassport)
Paired Ghidra pseudocode: 00A252A0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_CancelPassport.c
Window: [0x00a252a0, 0x00a252d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a252d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a252a0: 8b 0d a0 bd 1e 01 e8 c5 6d b4 ff 85 c0 74 19 8b
00a252b0: c8 e8 3a 95 fb ff 85 c0 74 0e 8b 4c 24 04 6a 01
00a252c0: 51 8b c8 e8 e8 7d 01 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a252a0 <.text+0x6242a0>:
  a252a0:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a252a6:	e8 c5 6d b4 ff                                  	call   0x56c070
  a252ab:	85 c0                                           	test   eax,eax
  a252ad:	74 19                                           	je     0xa252c8
  a252af:	8b c8                                           	mov    ecx,eax
  a252b1:	e8 3a 95 fb ff                                  	call   0x9de7f0
  a252b6:	85 c0                                           	test   eax,eax
  a252b8:	74 0e                                           	je     0xa252c8
  a252ba:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a252be:	6a 01                                           	push   0x1
  a252c0:	51                                              	push   ecx
  a252c1:	8b c8                                           	mov    ecx,eax
  a252c3:	e8 e8 7d 01 00                                  	call   0xa3d0b0
  a252c8:	c3                                              	ret
  a252c9:	cc                                              	int3
  a252ca:	cc                                              	int3
  a252cb:	cc                                              	int3
  a252cc:	cc                                              	int3
  a252cd:	cc                                              	int3
  a252ce:	cc                                              	int3
  a252cf:	cc                                              	int3
