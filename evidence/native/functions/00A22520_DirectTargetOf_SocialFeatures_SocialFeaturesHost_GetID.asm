# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22520 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetID)
Paired Ghidra pseudocode: 00A22520_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetID.c
Window: [0x00a22520, 0x00a22540) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22520: 8b 0d a0 bd 1e 01 e8 45 9b b4 ff 8b c8 e8 0e c4
00a22530: 01 00 8b c8 8b 41 08 8b 51 0c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00a22520 <.text+0x621520>:
  a22520:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22526:	e8 45 9b b4 ff                                  	call   0x56c070
  a2252b:	8b c8                                           	mov    ecx,eax
  a2252d:	e8 0e c4 01 00                                  	call   0xa3e940
  a22532:	8b c8                                           	mov    ecx,eax
  a22534:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  a22537:	8b 51 0c                                        	mov    edx,DWORD PTR [ecx+0xc]
  a2253a:	c3                                              	ret
  a2253b:	cc                                              	int3
  a2253c:	cc                                              	int3
  a2253d:	cc                                              	int3
  a2253e:	cc                                              	int3
  a2253f:	cc                                              	int3
