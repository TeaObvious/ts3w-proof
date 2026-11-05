# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a23990 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumOfflineTNSMessages)
Paired Ghidra pseudocode: 00A23990_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumOfflineTNSMessages.c
Window: [0x00a23990, 0x00a239c0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a239c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a23990: 8b 0d a0 bd 1e 01 e8 d5 86 b4 ff 8b c8 e8 4e e6
00a239a0: 4f 00 8b c8 e8 17 ab 01 00 85 c0 74 0b 8d 88 60
00a239b0: 01 00 00 e9 38 bf 01 00 33 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00a23990 <.text+0x622990>:
  a23990:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a23996:	e8 d5 86 b4 ff                                  	call   0x56c070
  a2399b:	8b c8                                           	mov    ecx,eax
  a2399d:	e8 4e e6 4f 00                                  	call   0xf21ff0
  a239a2:	8b c8                                           	mov    ecx,eax
  a239a4:	e8 17 ab 01 00                                  	call   0xa3e4c0
  a239a9:	85 c0                                           	test   eax,eax
  a239ab:	74 0b                                           	je     0xa239b8
  a239ad:	8d 88 60 01 00 00                               	lea    ecx,[eax+0x160]
  a239b3:	e9 38 bf 01 00                                  	jmp    0xa3f8f0
  a239b8:	33 c0                                           	xor    eax,eax
  a239ba:	c3                                              	ret
  a239bb:	cc                                              	int3
  a239bc:	cc                                              	int3
  a239bd:	cc                                              	int3
  a239be:	cc                                              	int3
  a239bf:	cc                                              	int3
