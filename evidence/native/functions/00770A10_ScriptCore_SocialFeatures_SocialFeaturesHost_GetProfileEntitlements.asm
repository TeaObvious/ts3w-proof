# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770a10 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileEntitlements)
Paired Ghidra pseudocode: 00770A10_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileEntitlements.c
Window: [0x00770a10, 0x00770a30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770a10: 8b 44 24 08 8b 4c 24 04 50 51 e8 a1 38 2b 00 83
00770a20: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770a10 <.text+0x36fa10>:
  770a10:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770a14:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770a18:	50                                              	push   eax
  770a19:	51                                              	push   ecx
  770a1a:	e8 a1 38 2b 00                                  	call   0xa242c0
  770a1f:	83 c4 08                                        	add    esp,0x8
  770a22:	c3                                              	ret
  770a23:	cc                                              	int3
  770a24:	cc                                              	int3
  770a25:	cc                                              	int3
  770a26:	cc                                              	int3
  770a27:	cc                                              	int3
  770a28:	cc                                              	int3
  770a29:	cc                                              	int3
  770a2a:	cc                                              	int3
  770a2b:	cc                                              	int3
  770a2c:	cc                                              	int3
  770a2d:	cc                                              	int3
  770a2e:	cc                                              	int3
  770a2f:	cc                                              	int3
