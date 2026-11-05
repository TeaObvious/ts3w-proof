# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00a22890 (DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumberOfSearchResults)
Paired Ghidra pseudocode: 00A22890_DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumberOfSearchResults.c
Window: [0x00a22890, 0x00a228b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00a228b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00a22890: 8b 0d a0 bd 1e 01 e8 d5 97 b4 ff 8b c8 e8 ce 03
00a228a0: ea ff 85 c0 74 07 8b c8 e9 c3 03 ea ff 33 c0 c3

LINEAR DISASSEMBLY
00a22890 <.text+0x621890>:
  a22890:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  a22896:	e8 d5 97 b4 ff                                  	call   0x56c070
  a2289b:	8b c8                                           	mov    ecx,eax
  a2289d:	e8 ce 03 ea ff                                  	call   0x8c2c70
  a228a2:	85 c0                                           	test   eax,eax
  a228a4:	74 07                                           	je     0xa228ad
  a228a6:	8b c8                                           	mov    ecx,eax
  a228a8:	e9 c3 03 ea ff                                  	jmp    0x8c2c70
  a228ad:	33 c0                                           	xor    eax,eax
  a228af:	c3                                              	ret
