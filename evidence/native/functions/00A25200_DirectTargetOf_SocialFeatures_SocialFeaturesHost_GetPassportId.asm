# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a25200 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetPassportId)
Paired Ghidra pseudocode: 00A25200_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetPassportId.c
Window: [0x00a25200, 0x00a25230) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a25230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a25200: 8b 0d a0 bd 1e 01 e8 65 6e b4 ff 85 c0 74 18 8b
00a25210: c8 e8 da 95 fb ff 85 c0 74 0d 8b 4c 24 04 51 8b
00a25220: c8 e8 9a 5a 01 00 c3 83 c8 ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00a25200 <.text+0x624200>:
  a25200:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a25206:	e8 65 6e b4 ff                                  	call   0x56c070
  a2520b:	85 c0                                           	test   eax,eax
  a2520d:	74 18                                           	je     0xa25227
  a2520f:	8b c8                                           	mov    ecx,eax
  a25211:	e8 da 95 fb ff                                  	call   0x9de7f0
  a25216:	85 c0                                           	test   eax,eax
  a25218:	74 0d                                           	je     0xa25227
  a2521a:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  a2521e:	51                                              	push   ecx
  a2521f:	8b c8                                           	mov    ecx,eax
  a25221:	e8 9a 5a 01 00                                  	call   0xa3acc0
  a25226:	c3                                              	ret
  a25227:	83 c8 ff                                        	or     eax,0xffffffff
  a2522a:	c3                                              	ret
  a2522b:	cc                                              	int3
  a2522c:	cc                                              	int3
  a2522d:	cc                                              	int3
  a2522e:	cc                                              	int3
  a2522f:	cc                                              	int3
