# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744b70 (GetNativeRegistrationTable_NameGuidMapService)
Paired Ghidra pseudocode: 00744B70_GetNativeRegistrationTable_NameGuidMapService.c
Window: [0x00744b70, 0x00744b80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744b70: 8b 44 24 04 c7 00 d8 13 16 01 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
00744b70 <.text+0x343b70>:
  744b70:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  744b74:	c7 00 d8 13 16 01                               	mov    DWORD PTR [eax],0x11613d8
  744b7a:	c2 04 00                                        	ret    0x4
  744b7d:	cc                                              	int3
  744b7e:	cc                                              	int3
  744b7f:	cc                                              	int3
