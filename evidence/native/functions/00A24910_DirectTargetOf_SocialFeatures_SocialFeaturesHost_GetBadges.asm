# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a24910 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadges)
Paired Ghidra pseudocode: 00A24910_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadges.c
Window: [0x00a24910, 0x00a24950) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a24950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a24910: 8b 0d a0 bd 1e 01 e8 55 77 b4 ff 8b c8 e8 9e 17
00a24920: b1 ff 85 c0 74 19 8b 4c 24 0c 8b 54 24 08 51 8b
00a24930: 4c 24 08 52 51 8b c8 e8 54 5c ff ff 33 c0 c3 b8
00a24940: 01 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a24910 <.text+0x623910>:
  a24910:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a24916:	e8 55 77 b4 ff                                  	call   0x56c070
  a2491b:	8b c8                                           	mov    ecx,eax
  a2491d:	e8 9e 17 b1 ff                                  	call   0x5360c0
  a24922:	85 c0                                           	test   eax,eax
  a24924:	74 19                                           	je     0xa2493f
  a24926:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  a2492a:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  a2492e:	51                                              	push   ecx
  a2492f:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  a24933:	52                                              	push   edx
  a24934:	51                                              	push   ecx
  a24935:	8b c8                                           	mov    ecx,eax
  a24937:	e8 54 5c ff ff                                  	call   0xa1a590
  a2493c:	33 c0                                           	xor    eax,eax
  a2493e:	c3                                              	ret
  a2493f:	b8 01 00 00 00                                  	mov    eax,0x1
  a24944:	c3                                              	ret
  a24945:	cc                                              	int3
  a24946:	cc                                              	int3
  a24947:	cc                                              	int3
  a24948:	cc                                              	int3
  a24949:	cc                                              	int3
  a2494a:	cc                                              	int3
  a2494b:	cc                                              	int3
  a2494c:	cc                                              	int3
  a2494d:	cc                                              	int3
  a2494e:	cc                                              	int3
  a2494f:	cc                                              	int3
