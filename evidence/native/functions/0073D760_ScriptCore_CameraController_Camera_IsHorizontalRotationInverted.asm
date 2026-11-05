# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d760 (ScriptCore.CameraController::Camera_IsHorizontalRotationInverted)
Paired Ghidra pseudocode: 0073D760_ScriptCore_CameraController_Camera_IsHorizontalRotationInverted.c
Window: [0x0073d760, 0x0073d780) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d760: e8 6b c4 22 00 85 c0 74 12 8b c8 e8 80 48 7e 00
0073d770: 85 c0 74 07 8a 80 e1 00 00 00 c3 32 c0 c3 cc cc

LINEAR DISASSEMBLY
0073d760 <.text+0x33c760>:
  73d760:	e8 6b c4 22 00                                  	call   0x969bd0
  73d765:	85 c0                                           	test   eax,eax
  73d767:	74 12                                           	je     0x73d77b
  73d769:	8b c8                                           	mov    ecx,eax
  73d76b:	e8 80 48 7e 00                                  	call   0xf21ff0
  73d770:	85 c0                                           	test   eax,eax
  73d772:	74 07                                           	je     0x73d77b
  73d774:	8a 80 e1 00 00 00                               	mov    al,BYTE PTR [eax+0xe1]
  73d77a:	c3                                              	ret
  73d77b:	32 c0                                           	xor    al,al
  73d77d:	c3                                              	ret
  73d77e:	cc                                              	int3
  73d77f:	cc                                              	int3
