# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00741110 (GetNativeDescriptorTypeName_DeviceConfig)
Paired Ghidra pseudocode: 00741110_GetNativeDescriptorTypeName_DeviceConfig.c
Window: [0x00741110, 0x00741120) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00741110: b8 10 1a 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00741110 <.text+0x340110>:
  741110:	b8 10 1a 00 01                                  	mov    eax,0x1001a10
  741115:	c3                                              	ret
  741116:	cc                                              	int3
  741117:	cc                                              	int3
  741118:	cc                                              	int3
  741119:	cc                                              	int3
  74111a:	cc                                              	int3
  74111b:	cc                                              	int3
  74111c:	cc                                              	int3
  74111d:	cc                                              	int3
  74111e:	cc                                              	int3
  74111f:	cc                                              	int3
