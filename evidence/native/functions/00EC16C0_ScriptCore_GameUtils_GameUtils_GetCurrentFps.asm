# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec16c0 (ScriptCore.GameUtils::GameUtils_GetCurrentFps)
Paired Ghidra pseudocode: 00EC16C0_ScriptCore_GameUtils_GameUtils_GetCurrentFps.c
Window: [0x00ec16c0, 0x00ec1700) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec16c0: 51 e8 0a ed ff ff d9 14 24 d9 05 c8 e2 f9 00 d9
00ec16d0: c9 df f1 dd d8 76 17 f3 0f 10 05 f8 98 f9 00 f3
00ec16e0: 0f 5e 04 24 f3 0f 11 04 24 d9 04 24 59 c3 0f 57
00ec16f0: c0 f3 0f 11 04 24 d9 04 24 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00ec16c0 <.text+0xac06c0>:
  ec16c0:	51                                              	push   ecx
  ec16c1:	e8 0a ed ff ff                                  	call   0xec03d0
  ec16c6:	d9 14 24                                        	fst    DWORD PTR [esp]
  ec16c9:	d9 05 c8 e2 f9 00                               	fld    DWORD PTR ds:0xf9e2c8
  ec16cf:	d9 c9                                           	fxch   st(1)
  ec16d1:	df f1                                           	fcomip st,st(1)
  ec16d3:	dd d8                                           	fstp   st(0)
  ec16d5:	76 17                                           	jbe    0xec16ee
  ec16d7:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  ec16df:	f3 0f 5e 04 24                                  	divss  xmm0,DWORD PTR [esp]
  ec16e4:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  ec16e9:	d9 04 24                                        	fld    DWORD PTR [esp]
  ec16ec:	59                                              	pop    ecx
  ec16ed:	c3                                              	ret
  ec16ee:	0f 57 c0                                        	xorps  xmm0,xmm0
  ec16f1:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  ec16f6:	d9 04 24                                        	fld    DWORD PTR [esp]
  ec16f9:	59                                              	pop    ecx
  ec16fa:	c3                                              	ret
  ec16fb:	cc                                              	int3
  ec16fc:	cc                                              	int3
  ec16fd:	cc                                              	int3
  ec16fe:	cc                                              	int3
  ec16ff:	cc                                              	int3
