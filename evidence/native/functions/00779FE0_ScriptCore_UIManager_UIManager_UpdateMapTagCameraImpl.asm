# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779fe0 (ScriptCore.UIManager::UIManager_UpdateMapTagCameraImpl)
Paired Ghidra pseudocode: 00779FE0_ScriptCore_UIManager_UIManager_UpdateMapTagCameraImpl.c
Window: [0x00779fe0, 0x0077a000) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077a000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779fe0: e8 7b ff 06 00 85 c0 74 07 8b c8 e9 a0 fe 06 00
00779ff0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779fe0 <.text+0x378fe0>:
  779fe0:	e8 7b ff 06 00                                  	call   0x7e9f60
  779fe5:	85 c0                                           	test   eax,eax
  779fe7:	74 07                                           	je     0x779ff0
  779fe9:	8b c8                                           	mov    ecx,eax
  779feb:	e9 a0 fe 06 00                                  	jmp    0x7e9e90
  779ff0:	c3                                              	ret
  779ff1:	cc                                              	int3
  779ff2:	cc                                              	int3
  779ff3:	cc                                              	int3
  779ff4:	cc                                              	int3
  779ff5:	cc                                              	int3
  779ff6:	cc                                              	int3
  779ff7:	cc                                              	int3
  779ff8:	cc                                              	int3
  779ff9:	cc                                              	int3
  779ffa:	cc                                              	int3
  779ffb:	cc                                              	int3
  779ffc:	cc                                              	int3
  779ffd:	cc                                              	int3
  779ffe:	cc                                              	int3
  779fff:	cc                                              	int3
