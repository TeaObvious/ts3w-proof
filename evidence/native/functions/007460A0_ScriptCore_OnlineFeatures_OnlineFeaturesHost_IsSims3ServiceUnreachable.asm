# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007460a0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_IsSims3ServiceUnreachable)
Paired Ghidra pseudocode: 007460A0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_IsSims3ServiceUnreachable.c
Window: [0x007460a0, 0x007460c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007460c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007460a0: a1 68 50 1d 01 85 c0 74 07 8d 48 f8 85 c9 75 03
007460b0: 32 c0 c3 e9 e8 b3 13 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007460a0 <.text+0x3450a0>:
  7460a0:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  7460a5:	85 c0                                           	test   eax,eax
  7460a7:	74 07                                           	je     0x7460b0
  7460a9:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  7460ac:	85 c9                                           	test   ecx,ecx
  7460ae:	75 03                                           	jne    0x7460b3
  7460b0:	32 c0                                           	xor    al,al
  7460b2:	c3                                              	ret
  7460b3:	e9 e8 b3 13 00                                  	jmp    0x8814a0
  7460b8:	cc                                              	int3
  7460b9:	cc                                              	int3
  7460ba:	cc                                              	int3
  7460bb:	cc                                              	int3
  7460bc:	cc                                              	int3
  7460bd:	cc                                              	int3
  7460be:	cc                                              	int3
  7460bf:	cc                                              	int3
