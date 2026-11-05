# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6ae0 (ScriptCore.CASUtils::CASUtils_SetPieMenuHeadScale)
Paired Ghidra pseudocode: 005A6AE0_ScriptCore_CASUtils_CASUtils_SetPieMenuHeadScale.c
Window: [0x005a6ae0, 0x005a6af0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6ae0: d9 44 24 04 51 d9 1c 24 e8 a3 36 0f 00 59 c3 cc

LINEAR DISASSEMBLY
005a6ae0 <.text+0x1a5ae0>:
  5a6ae0:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
  5a6ae4:	51                                              	push   ecx
  5a6ae5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5a6ae8:	e8 a3 36 0f 00                                  	call   0x69a190
  5a6aed:	59                                              	pop    ecx
  5a6aee:	c3                                              	ret
  5a6aef:	cc                                              	int3
