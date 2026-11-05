# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a24950 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumberOfBadges)
Paired Ghidra pseudocode: 00A24950_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumberOfBadges.c
Window: [0x00a24950, 0x00a24980) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a24980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a24950: 8b 0d a0 bd 1e 01 e8 15 77 b4 ff 8b c8 e8 5e 17
00a24960: b1 ff 85 c0 74 07 8b c8 e9 03 e3 e9 ff b8 01 00
00a24970: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a24950 <.text+0x623950>:
  a24950:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a24956:	e8 15 77 b4 ff                                  	call   0x56c070
  a2495b:	8b c8                                           	mov    ecx,eax
  a2495d:	e8 5e 17 b1 ff                                  	call   0x5360c0
  a24962:	85 c0                                           	test   eax,eax
  a24964:	74 07                                           	je     0xa2496d
  a24966:	8b c8                                           	mov    ecx,eax
  a24968:	e9 03 e3 e9 ff                                  	jmp    0x8c2c70
  a2496d:	b8 01 00 00 00                                  	mov    eax,0x1
  a24972:	c3                                              	ret
  a24973:	cc                                              	int3
  a24974:	cc                                              	int3
  a24975:	cc                                              	int3
  a24976:	cc                                              	int3
  a24977:	cc                                              	int3
  a24978:	cc                                              	int3
  a24979:	cc                                              	int3
  a2497a:	cc                                              	int3
  a2497b:	cc                                              	int3
  a2497c:	cc                                              	int3
  a2497d:	cc                                              	int3
  a2497e:	cc                                              	int3
  a2497f:	cc                                              	int3
