# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22960 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_FriendsGetSearchResultNucleusID)
Paired Ghidra pseudocode: 00A22960_DirectTargetOf_SocialFeatures_SocialFeaturesHost_FriendsGetSearchResultNucleusID.c
Window: [0x00a22960, 0x00a22990) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22960: 8b 0d a0 bd 1e 01 e8 05 97 b4 ff 8b c8 e8 fe 02
00a22970: ea ff 85 c0 74 0d 8b 4c 24 04 51 8b c8 e8 1e 35
00a22980: 01 00 c3 33 c0 33 d2 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a22960 <.text+0x621960>:
  a22960:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22966:	e8 05 97 b4 ff                                  	call   0x56c070
  a2296b:	8b c8                                           	mov    ecx,eax
  a2296d:	e8 fe 02 ea ff                                  	call   0x8c2c70
  a22972:	85 c0                                           	test   eax,eax
  a22974:	74 0d                                           	je     0xa22983
  a22976:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a2297a:	51                                              	push   ecx
  a2297b:	8b c8                                           	mov    ecx,eax
  a2297d:	e8 1e 35 01 00                                  	call   0xa35ea0
  a22982:	c3                                              	ret
  a22983:	33 c0                                           	xor    eax,eax
  a22985:	33 d2                                           	xor    edx,edx
  a22987:	c3                                              	ret
  a22988:	cc                                              	int3
  a22989:	cc                                              	int3
  a2298a:	cc                                              	int3
  a2298b:	cc                                              	int3
  a2298c:	cc                                              	int3
  a2298d:	cc                                              	int3
  a2298e:	cc                                              	int3
  a2298f:	cc                                              	int3
