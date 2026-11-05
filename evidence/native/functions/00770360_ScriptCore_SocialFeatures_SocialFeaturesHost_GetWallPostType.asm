# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770360 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWallPostType)
Paired Ghidra pseudocode: 00770360_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWallPostType.c
Window: [0x00770360, 0x00770380) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770360: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770370: 08 51 52 50 e8 57 2c 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770360 <.text+0x36f360>:
  770360:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770364:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770368:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77036c:	50                                              	push   eax
  77036d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770371:	51                                              	push   ecx
  770372:	52                                              	push   edx
  770373:	50                                              	push   eax
  770374:	e8 57 2c 2b 00                                  	call   0xa22fd0
  770379:	83 c4 10                                        	add    esp,0x10
  77037c:	c3                                              	ret
  77037d:	cc                                              	int3
  77037e:	cc                                              	int3
  77037f:	cc                                              	int3
