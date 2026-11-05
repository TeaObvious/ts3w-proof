# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 complete original function body and independent linear disassembly
Annotated Ghidra entry: 0x0073d7d0 (ScriptCore.CameraController::Camera_GetCustomFlyThroughIndex)
Paired Ghidra pseudocode: 0073D7D0_ScriptCore_CameraController_Camera_GetCustomFlyThroughIndex.c
Body: [0x0073d7d0, 0x0073d7ee) (30 bytes; stop exclusive)
Boundary rule: complete contiguous Ghidra function body, checked against original PE bytes.
Stored prototypes are preserved analyst projections; instructions establish physical stack/return behavior.
GNU objdump decodes original bytes linearly in Intel syntax. Child contracts remain separate.


LINEAR DISASSEMBLY
0073d7d0 <.text+0x33c7d0>:
  73d7d0:	e8 fb c3 22 00                                  	call   0x969bd0
  73d7d5:	85 c0                                           	test   eax,eax
  73d7d7:	74 12                                           	je     0x73d7eb
  73d7d9:	8b c8                                           	mov    ecx,eax
  73d7db:	e8 10 48 7e 00                                  	call   0xf21ff0
  73d7e0:	85 c0                                           	test   eax,eax
  73d7e2:	74 07                                           	je     0x73d7eb
  73d7e4:	8b c8                                           	mov    ecx,eax
  73d7e6:	e9 05 c7 22 00                                  	jmp    0x969ef0
  73d7eb:	33 c0                                           	xor    eax,eax
  73d7ed:	c3                                              	ret
