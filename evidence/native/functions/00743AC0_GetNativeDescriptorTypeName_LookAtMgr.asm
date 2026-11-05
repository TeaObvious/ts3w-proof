# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743ac0 (GetNativeDescriptorTypeName_LookAtMgr)
Paired Ghidra pseudocode: 00743AC0_GetNativeDescriptorTypeName_LookAtMgr.c
Window: [0x00743ac0, 0x00743ae0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743ac0: b8 c4 2d 00 01 c3 cc cc cc cc cc cc cc cc cc cc
00743ad0: 83 e9 04 e9 28 01 00 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743ac0 <.text+0x342ac0>:
  743ac0:	b8 c4 2d 00 01                                  	mov    eax,0x1002dc4
  743ac5:	c3                                              	ret
  743ac6:	cc                                              	int3
  743ac7:	cc                                              	int3
  743ac8:	cc                                              	int3
  743ac9:	cc                                              	int3
  743aca:	cc                                              	int3
  743acb:	cc                                              	int3
  743acc:	cc                                              	int3
  743acd:	cc                                              	int3
  743ace:	cc                                              	int3
  743acf:	cc                                              	int3
  743ad0:	83 e9 04                                        	sub    ecx,0x4
  743ad3:	e9 28 01 00 00                                  	jmp    0x743c00
  743ad8:	cc                                              	int3
  743ad9:	cc                                              	int3
  743ada:	cc                                              	int3
  743adb:	cc                                              	int3
  743adc:	cc                                              	int3
  743add:	cc                                              	int3
  743ade:	cc                                              	int3
  743adf:	cc                                              	int3
