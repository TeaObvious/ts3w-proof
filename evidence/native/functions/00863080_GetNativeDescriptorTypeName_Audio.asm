# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863080 (GetNativeDescriptorTypeName_Audio)
Paired Ghidra pseudocode: 00863080_GetNativeDescriptorTypeName_Audio.c
Window: [0x00863080, 0x00863090) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863080: b8 fc 8e 02 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00863080 <.text+0x462080>:
  863080:	b8 fc 8e 02 01                                  	mov    eax,0x1028efc
  863085:	c3                                              	ret
  863086:	cc                                              	int3
  863087:	cc                                              	int3
  863088:	cc                                              	int3
  863089:	cc                                              	int3
  86308a:	cc                                              	int3
  86308b:	cc                                              	int3
  86308c:	cc                                              	int3
  86308d:	cc                                              	int3
  86308e:	cc                                              	int3
  86308f:	cc                                              	int3
