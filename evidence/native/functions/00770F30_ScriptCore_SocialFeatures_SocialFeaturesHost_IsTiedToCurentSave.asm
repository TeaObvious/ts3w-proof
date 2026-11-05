# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770f30 (ScriptCore.SocialFeatures::SocialFeaturesHost_IsTiedToCurentSave)
Paired Ghidra pseudocode: 00770F30_ScriptCore_SocialFeatures_SocialFeaturesHost_IsTiedToCurentSave.c
Window: [0x00770f30, 0x00770f50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770f50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770f30: 8b 44 24 08 8b 4c 24 04 50 51 e8 41 45 2b 00 83
00770f40: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770f30 <.text+0x36ff30>:
  770f30:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770f34:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770f38:	50                                              	push   eax
  770f39:	51                                              	push   ecx
  770f3a:	e8 41 45 2b 00                                  	call   0xa25480
  770f3f:	83 c4 08                                        	add    esp,0x8
  770f42:	c3                                              	ret
  770f43:	cc                                              	int3
  770f44:	cc                                              	int3
  770f45:	cc                                              	int3
  770f46:	cc                                              	int3
  770f47:	cc                                              	int3
  770f48:	cc                                              	int3
  770f49:	cc                                              	int3
  770f4a:	cc                                              	int3
  770f4b:	cc                                              	int3
  770f4c:	cc                                              	int3
  770f4d:	cc                                              	int3
  770f4e:	cc                                              	int3
  770f4f:	cc                                              	int3
