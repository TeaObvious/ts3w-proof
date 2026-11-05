# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740130 (GetNativeDescriptorTypeName_DataFactory)
Paired Ghidra pseudocode: 00740130_GetNativeDescriptorTypeName_DataFactory.c
Window: [0x00740130, 0x00740140) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740130: b8 b4 17 00 01 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00740130 <.text+0x33f130>:
  740130:	b8 b4 17 00 01                                  	mov    eax,0x10017b4
  740135:	c3                                              	ret
  740136:	cc                                              	int3
  740137:	cc                                              	int3
  740138:	cc                                              	int3
  740139:	cc                                              	int3
  74013a:	cc                                              	int3
  74013b:	cc                                              	int3
  74013c:	cc                                              	int3
  74013d:	cc                                              	int3
  74013e:	cc                                              	int3
  74013f:	cc                                              	int3
