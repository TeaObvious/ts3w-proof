# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a24810 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatCount)
Paired Ghidra pseudocode: 00A24810_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetBadgeStatCount.c
Window: [0x00a24810, 0x00a24840) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a24840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a24810: 8b 0d a0 bd 1e 01 e8 55 78 b4 ff 8b c8 e8 9e 18
00a24820: b1 ff 85 c0 74 13 8b 4c 24 04 51 8b c8 e8 ce 57
00a24830: ff ff 85 c0 74 03 8b 00 c3 b8 01 00 00 00 c3 cc

LINEAR DISASSEMBLY
00a24810 <.text+0x623810>:
  a24810:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a24816:	e8 55 78 b4 ff                                  	call   0x56c070
  a2481b:	8b c8                                           	mov    ecx,eax
  a2481d:	e8 9e 18 b1 ff                                  	call   0x5360c0
  a24822:	85 c0                                           	test   eax,eax
  a24824:	74 13                                           	je     0xa24839
  a24826:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a2482a:	51                                              	push   ecx
  a2482b:	8b c8                                           	mov    ecx,eax
  a2482d:	e8 ce 57 ff ff                                  	call   0xa1a000
  a24832:	85 c0                                           	test   eax,eax
  a24834:	74 03                                           	je     0xa24839
  a24836:	8b 00                                           	mov    eax,DWORD PTR [eax]
  a24838:	c3                                              	ret
  a24839:	b8 01 00 00 00                                  	mov    eax,0x1
  a2483e:	c3                                              	ret
  a2483f:	cc                                              	int3
