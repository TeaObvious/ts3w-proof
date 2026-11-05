# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22860 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetFriendCount)
Paired Ghidra pseudocode: 00A22860_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetFriendCount.c
Window: [0x00a22860, 0x00a22890) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22860: 8b 0d a0 bd 1e 01 e8 05 98 b4 ff 8b c8 e8 fe 03
00a22870: ea ff 85 c0 74 0d 8b 4c 24 04 51 8b c8 e8 9e 39
00a22880: 01 00 c3 b8 01 00 00 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a22860 <.text+0x621860>:
  a22860:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22866:	e8 05 98 b4 ff                                  	call   0x56c070
  a2286b:	8b c8                                           	mov    ecx,eax
  a2286d:	e8 fe 03 ea ff                                  	call   0x8c2c70
  a22872:	85 c0                                           	test   eax,eax
  a22874:	74 0d                                           	je     0xa22883
  a22876:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a2287a:	51                                              	push   ecx
  a2287b:	8b c8                                           	mov    ecx,eax
  a2287d:	e8 9e 39 01 00                                  	call   0xa36220
  a22882:	c3                                              	ret
  a22883:	b8 01 00 00 00                                  	mov    eax,0x1
  a22888:	c3                                              	ret
  a22889:	cc                                              	int3
  a2288a:	cc                                              	int3
  a2288b:	cc                                              	int3
  a2288c:	cc                                              	int3
  a2288d:	cc                                              	int3
  a2288e:	cc                                              	int3
  a2288f:	cc                                              	int3
