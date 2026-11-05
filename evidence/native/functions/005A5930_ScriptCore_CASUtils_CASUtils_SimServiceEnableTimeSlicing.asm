# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5930 (ScriptCore.CASUtils::CASUtils_SimServiceEnableTimeSlicing)
Paired Ghidra pseudocode: 005A5930_ScriptCore_CASUtils_CASUtils_SimServiceEnableTimeSlicing.c
Window: [0x005a5930, 0x005a5950) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5930: e8 8b 61 04 00 85 c0 74 0a 8a 4c 24 04 88 88 39
005a5940: 01 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5930 <.text+0x1a4930>:
  5a5930:	e8 8b 61 04 00                                  	call   0x5ebac0
  5a5935:	85 c0                                           	test   eax,eax
  5a5937:	74 0a                                           	je     0x5a5943
  5a5939:	8a 4c 24 04                                     	mov    cl,BYTE PTR [esp+0x4]
  5a593d:	88 88 39 01 00 00                               	mov    BYTE PTR [eax+0x139],cl
  5a5943:	c3                                              	ret
  5a5944:	cc                                              	int3
  5a5945:	cc                                              	int3
  5a5946:	cc                                              	int3
  5a5947:	cc                                              	int3
  5a5948:	cc                                              	int3
  5a5949:	cc                                              	int3
  5a594a:	cc                                              	int3
  5a594b:	cc                                              	int3
  5a594c:	cc                                              	int3
  5a594d:	cc                                              	int3
  5a594e:	cc                                              	int3
  5a594f:	cc                                              	int3
