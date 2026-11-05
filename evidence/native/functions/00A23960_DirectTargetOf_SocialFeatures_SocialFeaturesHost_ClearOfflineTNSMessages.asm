# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a23960 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_ClearOfflineTNSMessages)
Paired Ghidra pseudocode: 00A23960_DirectTargetOf_SocialFeatures_SocialFeaturesHost_ClearOfflineTNSMessages.c
Window: [0x00a23960, 0x00a23990) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a23990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a23960: 8b 0d a0 bd 1e 01 e8 05 87 b4 ff 8b c8 e8 7e e6
00a23970: 4f 00 8b c8 e8 47 ab 01 00 85 c0 74 0b 8d 88 60
00a23980: 01 00 00 e9 08 e5 01 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a23960 <.text+0x622960>:
  a23960:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a23966:	e8 05 87 b4 ff                                  	call   0x56c070
  a2396b:	8b c8                                           	mov    ecx,eax
  a2396d:	e8 7e e6 4f 00                                  	call   0xf21ff0
  a23972:	8b c8                                           	mov    ecx,eax
  a23974:	e8 47 ab 01 00                                  	call   0xa3e4c0
  a23979:	85 c0                                           	test   eax,eax
  a2397b:	74 0b                                           	je     0xa23988
  a2397d:	8d 88 60 01 00 00                               	lea    ecx,[eax+0x160]
  a23983:	e9 08 e5 01 00                                  	jmp    0xa41e90
  a23988:	c3                                              	ret
  a23989:	cc                                              	int3
  a2398a:	cc                                              	int3
  a2398b:	cc                                              	int3
  a2398c:	cc                                              	int3
  a2398d:	cc                                              	int3
  a2398e:	cc                                              	int3
  a2398f:	cc                                              	int3
