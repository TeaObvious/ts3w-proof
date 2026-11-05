# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce69d0 (ScriptCore.UserToolUtils::UserToolUtils_GetBuildModePriceScaleImpl)
Paired Ghidra pseudocode: 00CE69D0_ScriptCore_UserToolUtils_UserToolUtils_GetBuildModePriceScaleImpl.c
Window: [0x00ce69d0, 0x00ce69f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce69f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce69d0: a1 18 e7 1e 01 85 c0 74 0c 8b 48 08 85 c9 74 05
00ce69e0: e9 5b 8c 00 00 d9 e8 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce69d0 <.text+0x8e59d0>:
  ce69d0:	a1 18 e7 1e 01                                  	mov    eax,ds:0x11ee718
  ce69d5:	85 c0                                           	test   eax,eax
  ce69d7:	74 0c                                           	je     0xce69e5
  ce69d9:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  ce69dc:	85 c9                                           	test   ecx,ecx
  ce69de:	74 05                                           	je     0xce69e5
  ce69e0:	e9 5b 8c 00 00                                  	jmp    0xcef640
  ce69e5:	d9 e8                                           	fld1
  ce69e7:	c3                                              	ret
  ce69e8:	cc                                              	int3
  ce69e9:	cc                                              	int3
  ce69ea:	cc                                              	int3
  ce69eb:	cc                                              	int3
  ce69ec:	cc                                              	int3
  ce69ed:	cc                                              	int3
  ce69ee:	cc                                              	int3
  ce69ef:	cc                                              	int3
