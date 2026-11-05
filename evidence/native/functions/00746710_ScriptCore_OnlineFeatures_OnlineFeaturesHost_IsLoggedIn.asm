# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00746710 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_IsLoggedIn)
Paired Ghidra pseudocode: 00746710_ScriptCore_OnlineFeatures_OnlineFeaturesHost_IsLoggedIn.c
Window: [0x00746710, 0x00746730) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00746730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00746710: a1 68 50 1d 01 85 c0 74 05 83 c0 f8 75 03 32 c0
00746720: c3 8a 40 14 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00746710 <.text+0x345710>:
  746710:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  746715:	85 c0                                           	test   eax,eax
  746717:	74 05                                           	je     0x74671e
  746719:	83 c0 f8                                        	add    eax,0xfffffff8
  74671c:	75 03                                           	jne    0x746721
  74671e:	32 c0                                           	xor    al,al
  746720:	c3                                              	ret
  746721:	8a 40 14                                        	mov    al,BYTE PTR [eax+0x14]
  746724:	c3                                              	ret
  746725:	cc                                              	int3
  746726:	cc                                              	int3
  746727:	cc                                              	int3
  746728:	cc                                              	int3
  746729:	cc                                              	int3
  74672a:	cc                                              	int3
  74672b:	cc                                              	int3
  74672c:	cc                                              	int3
  74672d:	cc                                              	int3
  74672e:	cc                                              	int3
  74672f:	cc                                              	int3
