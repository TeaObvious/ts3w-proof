# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a252d0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_ResetPassportSlot)
Paired Ghidra pseudocode: 00A252D0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_ResetPassportSlot.c
Window: [0x00a252d0, 0x00a25300) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a25300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a252d0: 8b 0d a0 bd 1e 01 e8 95 6d b4 ff 85 c0 74 17 8b
00a252e0: c8 e8 0a 95 fb ff 85 c0 74 0c 8b 4c 24 04 51 8b
00a252f0: c8 e8 aa 5a 01 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a252d0 <.text+0x6242d0>:
  a252d0:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a252d6:	e8 95 6d b4 ff                                  	call   0x56c070
  a252db:	85 c0                                           	test   eax,eax
  a252dd:	74 17                                           	je     0xa252f6
  a252df:	8b c8                                           	mov    ecx,eax
  a252e1:	e8 0a 95 fb ff                                  	call   0x9de7f0
  a252e6:	85 c0                                           	test   eax,eax
  a252e8:	74 0c                                           	je     0xa252f6
  a252ea:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a252ee:	51                                              	push   ecx
  a252ef:	8b c8                                           	mov    ecx,eax
  a252f1:	e8 aa 5a 01 00                                  	call   0xa3ada0
  a252f6:	c3                                              	ret
  a252f7:	cc                                              	int3
  a252f8:	cc                                              	int3
  a252f9:	cc                                              	int3
  a252fa:	cc                                              	int3
  a252fb:	cc                                              	int3
  a252fc:	cc                                              	int3
  a252fd:	cc                                              	int3
  a252fe:	cc                                              	int3
  a252ff:	cc                                              	int3
