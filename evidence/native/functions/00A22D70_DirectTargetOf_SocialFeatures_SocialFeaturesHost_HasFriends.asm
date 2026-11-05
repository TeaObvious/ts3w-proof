# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22d70 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_HasFriends)
Paired Ghidra pseudocode: 00A22D70_DirectTargetOf_SocialFeatures_SocialFeaturesHost_HasFriends.c
Window: [0x00a22d70, 0x00a22da0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22d70: 8b 0d a0 bd 1e 01 e8 f5 92 b4 ff 8b c8 e8 6e f2
00a22d80: 4f 00 8b c8 e8 37 b7 01 00 85 c0 74 0b 8d 88 f0
00a22d90: 00 00 00 e9 18 1e 01 00 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00a22d70 <.text+0x621d70>:
  a22d70:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22d76:	e8 f5 92 b4 ff                                  	call   0x56c070
  a22d7b:	8b c8                                           	mov    ecx,eax
  a22d7d:	e8 6e f2 4f 00                                  	call   0xf21ff0
  a22d82:	8b c8                                           	mov    ecx,eax
  a22d84:	e8 37 b7 01 00                                  	call   0xa3e4c0
  a22d89:	85 c0                                           	test   eax,eax
  a22d8b:	74 0b                                           	je     0xa22d98
  a22d8d:	8d 88 f0 00 00 00                               	lea    ecx,[eax+0xf0]
  a22d93:	e9 18 1e 01 00                                  	jmp    0xa34bb0
  a22d98:	32 c0                                           	xor    al,al
  a22d9a:	c3                                              	ret
  a22d9b:	cc                                              	int3
  a22d9c:	cc                                              	int3
  a22d9d:	cc                                              	int3
  a22d9e:	cc                                              	int3
  a22d9f:	cc                                              	int3
