# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770a60 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadges)
Paired Ghidra pseudocode: 00770A60_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEarnedBadges.c
Window: [0x00770a60, 0x00770a90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770a90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770a60: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
00770a70: 0c 51 8b 4c 24 0c 52 50 51 e8 32 41 2b 00 83 c4
00770a80: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770a60 <.text+0x36fa60>:
  770a60:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  770a64:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  770a68:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  770a6c:	50                                              	push   eax
  770a6d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  770a71:	51                                              	push   ecx
  770a72:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770a76:	52                                              	push   edx
  770a77:	50                                              	push   eax
  770a78:	51                                              	push   ecx
  770a79:	e8 32 41 2b 00                                  	call   0xa24bb0
  770a7e:	83 c4 14                                        	add    esp,0x14
  770a81:	c3                                              	ret
  770a82:	cc                                              	int3
  770a83:	cc                                              	int3
  770a84:	cc                                              	int3
  770a85:	cc                                              	int3
  770a86:	cc                                              	int3
  770a87:	cc                                              	int3
  770a88:	cc                                              	int3
  770a89:	cc                                              	int3
  770a8a:	cc                                              	int3
  770a8b:	cc                                              	int3
  770a8c:	cc                                              	int3
  770a8d:	cc                                              	int3
  770a8e:	cc                                              	int3
  770a8f:	cc                                              	int3
