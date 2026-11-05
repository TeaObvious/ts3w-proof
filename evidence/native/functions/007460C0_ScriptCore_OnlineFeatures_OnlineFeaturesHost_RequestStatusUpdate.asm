# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007460c0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_RequestStatusUpdate)
Paired Ghidra pseudocode: 007460C0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_RequestStatusUpdate.c
Window: [0x007460c0, 0x007460f0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007460f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007460c0: 80 3d fc 4f 1d 01 00 75 1e a1 68 50 1d 01 85 c0
007460d0: c6 05 fc 4f 1d 01 01 74 0e 8d 48 f8 85 c9 74 07
007460e0: 6a 00 e8 99 c7 13 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007460c0 <.text+0x3450c0>:
  7460c0:	80 3d fc 4f 1d 01 00                            	cmp    BYTE PTR ds:0x11d4ffc,0x0
  7460c7:	75 1e                                           	jne    0x7460e7
  7460c9:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  7460ce:	85 c0                                           	test   eax,eax
  7460d0:	c6 05 fc 4f 1d 01 01                            	mov    BYTE PTR ds:0x11d4ffc,0x1
  7460d7:	74 0e                                           	je     0x7460e7
  7460d9:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  7460dc:	85 c9                                           	test   ecx,ecx
  7460de:	74 07                                           	je     0x7460e7
  7460e0:	6a 00                                           	push   0x0
  7460e2:	e8 99 c7 13 00                                  	call   0x882880
  7460e7:	c3                                              	ret
  7460e8:	cc                                              	int3
  7460e9:	cc                                              	int3
  7460ea:	cc                                              	int3
  7460eb:	cc                                              	int3
  7460ec:	cc                                              	int3
  7460ed:	cc                                              	int3
  7460ee:	cc                                              	int3
  7460ef:	cc                                              	int3
