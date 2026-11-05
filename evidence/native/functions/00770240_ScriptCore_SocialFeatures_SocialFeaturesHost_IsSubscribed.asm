# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770240 (ScriptCore.SocialFeatures::SocialFeaturesHost_IsSubscribed)
Paired Ghidra pseudocode: 00770240_ScriptCore_SocialFeatures_SocialFeaturesHost_IsSubscribed.c
Window: [0x00770240, 0x00770260) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770240: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 2b 2b 00 83
00770250: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770240 <.text+0x36f240>:
  770240:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770244:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770248:	50                                              	push   eax
  770249:	51                                              	push   ecx
  77024a:	e8 51 2b 2b 00                                  	call   0xa22da0
  77024f:	83 c4 08                                        	add    esp,0x8
  770252:	c3                                              	ret
  770253:	cc                                              	int3
  770254:	cc                                              	int3
  770255:	cc                                              	int3
  770256:	cc                                              	int3
  770257:	cc                                              	int3
  770258:	cc                                              	int3
  770259:	cc                                              	int3
  77025a:	cc                                              	int3
  77025b:	cc                                              	int3
  77025c:	cc                                              	int3
  77025d:	cc                                              	int3
  77025e:	cc                                              	int3
  77025f:	cc                                              	int3
