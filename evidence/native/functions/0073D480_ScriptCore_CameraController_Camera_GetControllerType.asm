# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d480 (ScriptCore.CameraController::Camera_GetControllerType)
Paired Ghidra pseudocode: 0073D480_ScriptCore_CameraController_Camera_GetControllerType.c
Window: [0x0073d480, 0x0073d4b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d4b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d480: e8 4b c7 22 00 85 c0 74 12 8b c8 e8 60 4b 7e 00
0073d490: 85 c0 74 07 8b 80 90 00 00 00 c3 b8 01 00 00 00
0073d4a0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073d480 <.text+0x33c480>:
  73d480:	e8 4b c7 22 00                                  	call   0x969bd0
  73d485:	85 c0                                           	test   eax,eax
  73d487:	74 12                                           	je     0x73d49b
  73d489:	8b c8                                           	mov    ecx,eax
  73d48b:	e8 60 4b 7e 00                                  	call   0xf21ff0
  73d490:	85 c0                                           	test   eax,eax
  73d492:	74 07                                           	je     0x73d49b
  73d494:	8b 80 90 00 00 00                               	mov    eax,DWORD PTR [eax+0x90]
  73d49a:	c3                                              	ret
  73d49b:	b8 01 00 00 00                                  	mov    eax,0x1
  73d4a0:	c3                                              	ret
  73d4a1:	cc                                              	int3
  73d4a2:	cc                                              	int3
  73d4a3:	cc                                              	int3
  73d4a4:	cc                                              	int3
  73d4a5:	cc                                              	int3
  73d4a6:	cc                                              	int3
  73d4a7:	cc                                              	int3
  73d4a8:	cc                                              	int3
  73d4a9:	cc                                              	int3
  73d4aa:	cc                                              	int3
  73d4ab:	cc                                              	int3
  73d4ac:	cc                                              	int3
  73d4ad:	cc                                              	int3
  73d4ae:	cc                                              	int3
  73d4af:	cc                                              	int3
