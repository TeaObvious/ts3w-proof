# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a25520 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetAvailableTravelSlot)
Paired Ghidra pseudocode: 00A25520_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetAvailableTravelSlot.c
Window: [0x00a25520, 0x00a25540) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a25540
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a25520: 8b 0d a0 bd 1e 01 e8 45 6b b4 ff 8b c8 e8 be 92
00a25530: fb ff 8b c8 e9 47 5c 01 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a25520 <.text+0x624520>:
  a25520:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a25526:	e8 45 6b b4 ff                                  	call   0x56c070
  a2552b:	8b c8                                           	mov    ecx,eax
  a2552d:	e8 be 92 fb ff                                  	call   0x9de7f0
  a25532:	8b c8                                           	mov    ecx,eax
  a25534:	e9 47 5c 01 00                                  	jmp    0xa3b180
  a25539:	cc                                              	int3
  a2553a:	cc                                              	int3
  a2553b:	cc                                              	int3
  a2553c:	cc                                              	int3
  a2553d:	cc                                              	int3
  a2553e:	cc                                              	int3
  a2553f:	cc                                              	int3
