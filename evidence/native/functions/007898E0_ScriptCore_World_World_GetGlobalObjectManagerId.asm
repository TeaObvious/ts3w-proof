# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007898e0 (ScriptCore.World::World_GetGlobalObjectManagerId)
Paired Ghidra pseudocode: 007898E0_ScriptCore_World_World_GetGlobalObjectManagerId.c
Window: [0x007898e0, 0x00789900) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789900
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007898e0: a1 c4 db 1e 01 85 c0 74 11 8b 88 b0 00 00 00 85
007898f0: c9 74 07 8b 41 48 8b 51 4c c3 33 c0 33 d2 c3 cc

LINEAR DISASSEMBLY
007898e0 <.text+0x3888e0>:
  7898e0:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  7898e5:	85 c0                                           	test   eax,eax
  7898e7:	74 11                                           	je     0x7898fa
  7898e9:	8b 88 b0 00 00 00                               	mov    ecx,DWORD PTR [eax+0xb0]
  7898ef:	85 c9                                           	test   ecx,ecx
  7898f1:	74 07                                           	je     0x7898fa
  7898f3:	8b 41 48                                        	mov    eax,DWORD PTR [ecx+0x48]
  7898f6:	8b 51 4c                                        	mov    edx,DWORD PTR [ecx+0x4c]
  7898f9:	c3                                              	ret
  7898fa:	33 c0                                           	xor    eax,eax
  7898fc:	33 d2                                           	xor    edx,edx
  7898fe:	c3                                              	ret
  7898ff:	cc                                              	int3
