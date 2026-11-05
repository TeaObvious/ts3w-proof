# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00776980 (GetNativeDescriptorTypeName_Swarm)
Paired Ghidra pseudocode: 00776980_GetNativeDescriptorTypeName_Swarm.c
Window: [0x00776980, 0x00776990) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00776990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00776980: b8 5c da ff 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00776980 <.text+0x375980>:
  776980:	b8 5c da ff 00                                  	mov    eax,0xffda5c
  776985:	c3                                              	ret
  776986:	cc                                              	int3
  776987:	cc                                              	int3
  776988:	cc                                              	int3
  776989:	cc                                              	int3
  77698a:	cc                                              	int3
  77698b:	cc                                              	int3
  77698c:	cc                                              	int3
  77698d:	cc                                              	int3
  77698e:	cc                                              	int3
  77698f:	cc                                              	int3
