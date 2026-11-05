# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a25650 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_DebugClearAllPassportState)
Paired Ghidra pseudocode: 00A25650_DirectTargetOf_SocialFeatures_SocialFeaturesHost_DebugClearAllPassportState.c
Window: [0x00a25650, 0x00a25670) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a25670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a25650: 8b 0d a0 bd 1e 01 e8 15 6a b4 ff 8b c8 e8 8e 91
00a25660: fb ff 8b c8 e9 c7 82 01 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a25650 <.text+0x624650>:
  a25650:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a25656:	e8 15 6a b4 ff                                  	call   0x56c070
  a2565b:	8b c8                                           	mov    ecx,eax
  a2565d:	e8 8e 91 fb ff                                  	call   0x9de7f0
  a25662:	8b c8                                           	mov    ecx,eax
  a25664:	e9 c7 82 01 00                                  	jmp    0xa3d930
  a25669:	cc                                              	int3
  a2566a:	cc                                              	int3
  a2566b:	cc                                              	int3
  a2566c:	cc                                              	int3
  a2566d:	cc                                              	int3
  a2566e:	cc                                              	int3
  a2566f:	cc                                              	int3
