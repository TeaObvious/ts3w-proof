# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 complete original function body and independent linear disassembly
Annotated Ghidra entry: 0x0073d7a0 (ScriptCore.CameraController::Camera_StartFlyThrough)
Paired Ghidra pseudocode: 0073D7A0_ScriptCore_CameraController_Camera_StartFlyThrough.c
Body: [0x0073d7a0, 0x0073d7c6) (38 bytes; stop exclusive)
Boundary rule: complete contiguous Ghidra function body, checked against original PE bytes.
Stored prototypes are preserved analyst projections; instructions establish physical stack/return behavior.
GNU objdump decodes original bytes linearly in Intel syntax. Child contracts remain separate.


LINEAR DISASSEMBLY
0073d7a0 <.text+0x33c7a0>:
  73d7a0:	e8 2b c4 22 00                                  	call   0x969bd0
  73d7a5:	85 c0                                           	test   eax,eax
  73d7a7:	74 1c                                           	je     0x73d7c5
  73d7a9:	8b c8                                           	mov    ecx,eax
  73d7ab:	e8 40 48 7e 00                                  	call   0xf21ff0
  73d7b0:	85 c0                                           	test   eax,eax
  73d7b2:	74 11                                           	je     0x73d7c5
  73d7b4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  73d7b8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  73d7bc:	51                                              	push   ecx
  73d7bd:	52                                              	push   edx
  73d7be:	8b c8                                           	mov    ecx,eax
  73d7c0:	e8 6b da 22 00                                  	call   0x96b230
  73d7c5:	c3                                              	ret
