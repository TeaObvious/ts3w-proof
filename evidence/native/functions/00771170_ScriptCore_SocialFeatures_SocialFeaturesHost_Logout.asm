# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00771170 (ScriptCore.SocialFeatures::SocialFeaturesHost_Logout)
Paired Ghidra pseudocode: 00771170_ScriptCore_SocialFeatures_SocialFeaturesHost_Logout.c
Window: [0x00771170, 0x007711c0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007711c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00771170: 80 7c 24 04 00 a1 68 50 1d 01 74 21 85 c0 74 0f
00771180: 8d 48 f8 6a 01 e8 c6 45 11 00 e9 71 13 2b 00 33
00771190: c9 6a 01 e8 b8 45 11 00 e9 63 13 2b 00 85 c0 74
007711a0: 0f 8d 48 f8 6a 00 e8 a5 45 11 00 e9 50 13 2b 00
007711b0: 33 c9 51 e8 98 45 11 00 e9 43 13 2b 00 cc cc cc

LINEAR DISASSEMBLY
00771170 <.text+0x370170>:
  771170:	80 7c 24 04 00                                  	cmp    BYTE PTR [esp+0x4],0x0
  771175:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  77117a:	74 21                                           	je     0x77119d
  77117c:	85 c0                                           	test   eax,eax
  77117e:	74 0f                                           	je     0x77118f
  771180:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  771183:	6a 01                                           	push   0x1
  771185:	e8 c6 45 11 00                                  	call   0x885750
  77118a:	e9 71 13 2b 00                                  	jmp    0xa22500
  77118f:	33 c9                                           	xor    ecx,ecx
  771191:	6a 01                                           	push   0x1
  771193:	e8 b8 45 11 00                                  	call   0x885750
  771198:	e9 63 13 2b 00                                  	jmp    0xa22500
  77119d:	85 c0                                           	test   eax,eax
  77119f:	74 0f                                           	je     0x7711b0
  7711a1:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  7711a4:	6a 00                                           	push   0x0
  7711a6:	e8 a5 45 11 00                                  	call   0x885750
  7711ab:	e9 50 13 2b 00                                  	jmp    0xa22500
  7711b0:	33 c9                                           	xor    ecx,ecx
  7711b2:	51                                              	push   ecx
  7711b3:	e8 98 45 11 00                                  	call   0x885750
  7711b8:	e9 43 13 2b 00                                  	jmp    0xa22500
  7711bd:	cc                                              	int3
  7711be:	cc                                              	int3
  7711bf:	cc                                              	int3
