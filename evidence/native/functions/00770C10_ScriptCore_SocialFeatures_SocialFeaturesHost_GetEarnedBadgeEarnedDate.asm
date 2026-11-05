# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770c10 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgeEarnedDate)
Paired Ghidra pseudocode: 00770C10_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEarnedBadgeEarnedDate.c
Window: [0x00770c10, 0x00770c30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770c30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770c10: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
00770c20: 2c 42 2b 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770c10 <.text+0x36fc10>:
  770c10:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  770c14:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  770c18:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  770c1c:	50                                              	push   eax
  770c1d:	51                                              	push   ecx
  770c1e:	52                                              	push   edx
  770c1f:	e8 2c 42 2b 00                                  	call   0xa24e50
  770c24:	83 c4 0c                                        	add    esp,0xc
  770c27:	c3                                              	ret
  770c28:	cc                                              	int3
  770c29:	cc                                              	int3
  770c2a:	cc                                              	int3
  770c2b:	cc                                              	int3
  770c2c:	cc                                              	int3
  770c2d:	cc                                              	int3
  770c2e:	cc                                              	int3
  770c2f:	cc                                              	int3
