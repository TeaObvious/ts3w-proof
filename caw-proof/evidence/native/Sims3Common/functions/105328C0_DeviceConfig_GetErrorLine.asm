# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105328c0 (DeviceConfig_GetErrorLine)
Paired Ghidra pseudocode: 105328C0_DeviceConfig_GetErrorLine.c
Window: [0x105328c0, 0x105328e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105328e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105328c0: e8 cb 9a e5 ff 85 c0 74 07 8b 80 bc 00 00 00 c3
105328d0: 83 c8 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105328c0 <.text+0x5318c0>:
105328c0:	e8 cb 9a e5 ff                                  	call   0x1038c390
105328c5:	85 c0                                           	test   eax,eax
105328c7:	74 07                                           	je     0x105328d0
105328c9:	8b 80 bc 00 00 00                               	mov    eax,DWORD PTR [eax+0xbc]
105328cf:	c3                                              	ret
105328d0:	83 c8 ff                                        	or     eax,0xffffffff
105328d3:	c3                                              	ret
105328d4:	cc                                              	int3
105328d5:	cc                                              	int3
105328d6:	cc                                              	int3
105328d7:	cc                                              	int3
105328d8:	cc                                              	int3
105328d9:	cc                                              	int3
105328da:	cc                                              	int3
105328db:	cc                                              	int3
105328dc:	cc                                              	int3
105328dd:	cc                                              	int3
105328de:	cc                                              	int3
105328df:	cc                                              	int3
