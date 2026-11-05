# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22560 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_IsLoggedInFromLauncherOrWeb)
Paired Ghidra pseudocode: 00A22560_DirectTargetOf_SocialFeatures_SocialFeaturesHost_IsLoggedInFromLauncherOrWeb.c
Window: [0x00a22560, 0x00a22580) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a22580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22560: 8b 0d a0 bd 1e 01 e8 05 9b b4 ff 8b c8 e8 ce c3
00a22570: 01 00 8b c8 e9 07 75 ff ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00a22560 <.text+0x621560>:
  a22560:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22566:	e8 05 9b b4 ff                                  	call   0x56c070
  a2256b:	8b c8                                           	mov    ecx,eax
  a2256d:	e8 ce c3 01 00                                  	call   0xa3e940
  a22572:	8b c8                                           	mov    ecx,eax
  a22574:	e9 07 75 ff ff                                  	jmp    0xa19a80
  a22579:	cc                                              	int3
  a2257a:	cc                                              	int3
  a2257b:	cc                                              	int3
  a2257c:	cc                                              	int3
  a2257d:	cc                                              	int3
  a2257e:	cc                                              	int3
  a2257f:	cc                                              	int3
