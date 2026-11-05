# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00745e40 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_IsStatusUpdateComplete)
Paired Ghidra pseudocode: 00745E40_ScriptCore_OnlineFeatures_OnlineFeaturesHost_IsStatusUpdateComplete.c
Window: [0x00745e40, 0x00745e50) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00745e50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00745e40: 33 c0 38 05 fc 4f 1d 01 0f 94 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
00745e40 <.text+0x344e40>:
  745e40:	33 c0                                           	xor    eax,eax
  745e42:	38 05 fc 4f 1d 01                               	cmp    BYTE PTR ds:0x11d4ffc,al
  745e48:	0f 94 c0                                        	sete   al
  745e4b:	c3                                              	ret
  745e4c:	cc                                              	int3
  745e4d:	cc                                              	int3
  745e4e:	cc                                              	int3
  745e4f:	cc                                              	int3
