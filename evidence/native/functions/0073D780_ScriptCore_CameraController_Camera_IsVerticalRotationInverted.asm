# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d780 (ScriptCore.CameraController::Camera_IsVerticalRotationInverted)
Paired Ghidra pseudocode: 0073D780_ScriptCore_CameraController_Camera_IsVerticalRotationInverted.c
Window: [0x0073d780, 0x0073d7a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d7a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d780: e8 4b c4 22 00 85 c0 74 12 8b c8 e8 60 48 7e 00
0073d790: 85 c0 74 07 8a 80 e2 00 00 00 c3 32 c0 c3 cc cc

LINEAR DISASSEMBLY
0073d780 <.text+0x33c780>:
  73d780:	e8 4b c4 22 00                                  	call   0x969bd0
  73d785:	85 c0                                           	test   eax,eax
  73d787:	74 12                                           	je     0x73d79b
  73d789:	8b c8                                           	mov    ecx,eax
  73d78b:	e8 60 48 7e 00                                  	call   0xf21ff0
  73d790:	85 c0                                           	test   eax,eax
  73d792:	74 07                                           	je     0x73d79b
  73d794:	8a 80 e2 00 00 00                               	mov    al,BYTE PTR [eax+0xe2]
  73d79a:	c3                                              	ret
  73d79b:	32 c0                                           	xor    al,al
  73d79d:	c3                                              	ret
  73d79e:	cc                                              	int3
  73d79f:	cc                                              	int3
