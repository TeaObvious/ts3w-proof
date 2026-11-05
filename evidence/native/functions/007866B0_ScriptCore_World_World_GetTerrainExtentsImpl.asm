# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007866b0 (ScriptCore.World::World_GetTerrainExtentsImpl)
Paired Ghidra pseudocode: 007866B0_ScriptCore_World_World_GetTerrainExtentsImpl.c
Window: [0x007866b0, 0x00786700) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007866b0: 8b 44 24 04 0f 57 c0 8b 0d c4 db 1e 01 85 c9 f3
007866c0: 0f 11 00 f3 0f 11 40 04 f3 0f 11 40 08 f3 0f 11
007866d0: 40 0c 74 23 d9 81 b4 00 00 00 d9 18 d9 81 b8 00
007866e0: 00 00 d9 58 04 d9 81 bc 00 00 00 d9 58 08 d9 81
007866f0: c0 00 00 00 d9 58 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007866b0 <.text+0x3856b0>:
  7866b0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7866b4:	0f 57 c0                                        	xorps  xmm0,xmm0
  7866b7:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7866bd:	85 c9                                           	test   ecx,ecx
  7866bf:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  7866c3:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
  7866c8:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
  7866cd:	f3 0f 11 40 0c                                  	movss  DWORD PTR [eax+0xc],xmm0
  7866d2:	74 23                                           	je     0x7866f7
  7866d4:	d9 81 b4 00 00 00                               	fld    DWORD PTR [ecx+0xb4]
  7866da:	d9 18                                           	fstp   DWORD PTR [eax]
  7866dc:	d9 81 b8 00 00 00                               	fld    DWORD PTR [ecx+0xb8]
  7866e2:	d9 58 04                                        	fstp   DWORD PTR [eax+0x4]
  7866e5:	d9 81 bc 00 00 00                               	fld    DWORD PTR [ecx+0xbc]
  7866eb:	d9 58 08                                        	fstp   DWORD PTR [eax+0x8]
  7866ee:	d9 81 c0 00 00 00                               	fld    DWORD PTR [ecx+0xc0]
  7866f4:	d9 58 0c                                        	fstp   DWORD PTR [eax+0xc]
  7866f7:	c3                                              	ret
  7866f8:	cc                                              	int3
  7866f9:	cc                                              	int3
  7866fa:	cc                                              	int3
  7866fb:	cc                                              	int3
  7866fc:	cc                                              	int3
  7866fd:	cc                                              	int3
  7866fe:	cc                                              	int3
  7866ff:	cc                                              	int3
