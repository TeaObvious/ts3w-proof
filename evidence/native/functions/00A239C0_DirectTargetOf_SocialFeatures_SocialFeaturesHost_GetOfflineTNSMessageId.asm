# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a239c0 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetOfflineTNSMessageId)
Paired Ghidra pseudocode: 00A239C0_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetOfflineTNSMessageId.c
Window: [0x00a239c0, 0x00a23a00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a23a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a239c0: 8b 0d a0 bd 1e 01 e8 a5 86 b4 ff 8b c8 e8 1e e6
00a239d0: 4f 00 8b c8 e8 e7 aa 01 00 85 c0 74 11 8b 4c 24
00a239e0: 04 51 8d 88 60 01 00 00 e8 a3 de 9d ff c3 33 c0
00a239f0: 33 d2 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a239c0 <.text+0x6229c0>:
  a239c0:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a239c6:	e8 a5 86 b4 ff                                  	call   0x56c070
  a239cb:	8b c8                                           	mov    ecx,eax
  a239cd:	e8 1e e6 4f 00                                  	call   0xf21ff0
  a239d2:	8b c8                                           	mov    ecx,eax
  a239d4:	e8 e7 aa 01 00                                  	call   0xa3e4c0
  a239d9:	85 c0                                           	test   eax,eax
  a239db:	74 11                                           	je     0xa239ee
  a239dd:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a239e1:	51                                              	push   ecx
  a239e2:	8d 88 60 01 00 00                               	lea    ecx,[eax+0x160]
  a239e8:	e8 a3 de 9d ff                                  	call   0x401890
  a239ed:	c3                                              	ret
  a239ee:	33 c0                                           	xor    eax,eax
  a239f0:	33 d2                                           	xor    edx,edx
  a239f2:	c3                                              	ret
  a239f3:	cc                                              	int3
  a239f4:	cc                                              	int3
  a239f5:	cc                                              	int3
  a239f6:	cc                                              	int3
  a239f7:	cc                                              	int3
  a239f8:	cc                                              	int3
  a239f9:	cc                                              	int3
  a239fa:	cc                                              	int3
  a239fb:	cc                                              	int3
  a239fc:	cc                                              	int3
  a239fd:	cc                                              	int3
  a239fe:	cc                                              	int3
  a239ff:	cc                                              	int3
