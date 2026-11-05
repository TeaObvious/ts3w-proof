# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22680 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetShareToFB)
Paired Ghidra pseudocode: 00A22680_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetShareToFB.c
Window: [0x00a22680, 0x00a226a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a226a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22680: 8b 0d a0 bd 1e 01 e8 e5 99 b4 ff 8b c8 e8 ae c2
00a22690: 01 00 8b c8 e9 07 6c ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a22680 <.text+0x621680>:
  a22680:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22686:	e8 e5 99 b4 ff                                  	call   0x56c070
  a2268b:	8b c8                                           	mov    ecx,eax
  a2268d:	e8 ae c2 01 00                                  	call   0xa3e940
  a22692:	8b c8                                           	mov    ecx,eax
  a22694:	e9 07 6c ff ff                                  	jmp    0xa192a0
  a22699:	cc                                              	int3
  a2269a:	cc                                              	int3
  a2269b:	cc                                              	int3
  a2269c:	cc                                              	int3
  a2269d:	cc                                              	int3
  a2269e:	cc                                              	int3
  a2269f:	cc                                              	int3
