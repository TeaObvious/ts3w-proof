# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007777c0 (GetNativeRegistrationTable_VisualEffect)
Paired Ghidra pseudocode: 007777C0_GetNativeRegistrationTable_VisualEffect.c
Window: [0x007777c0, 0x007777d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007777d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007777c0: 8b 44 24 04 c7 00 a0 29 16 01 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
007777c0 <.text+0x3767c0>:
  7777c0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7777c4:	c7 00 a0 29 16 01                               	mov    DWORD PTR [eax],0x11629a0
  7777ca:	c2 04 00                                        	ret    0x4
  7777cd:	cc                                              	int3
  7777ce:	cc                                              	int3
  7777cf:	cc                                              	int3
