# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007706e0 (ScriptCore.SocialFeatures::SocialFeaturesHost_PostToSocial)
Paired Ghidra pseudocode: 007706E0_ScriptCore_SocialFeatures_SocialFeaturesHost_PostToSocial.c
Window: [0x007706e0, 0x00770700) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007706e0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
007706f0: 2c 32 2b 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007706e0 <.text+0x36f6e0>:
  7706e0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7706e4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7706e8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7706ec:	50                                              	push   eax
  7706ed:	51                                              	push   ecx
  7706ee:	52                                              	push   edx
  7706ef:	e8 2c 32 2b 00                                  	call   0xa23920
  7706f4:	83 c4 0c                                        	add    esp,0xc
  7706f7:	c3                                              	ret
  7706f8:	cc                                              	int3
  7706f9:	cc                                              	int3
  7706fa:	cc                                              	int3
  7706fb:	cc                                              	int3
  7706fc:	cc                                              	int3
  7706fd:	cc                                              	int3
  7706fe:	cc                                              	int3
  7706ff:	cc                                              	int3
