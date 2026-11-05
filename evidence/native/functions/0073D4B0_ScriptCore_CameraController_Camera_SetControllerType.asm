# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 complete original function body and independent linear disassembly
Annotated Ghidra entry: 0x0073d4b0 (ScriptCore.CameraController::Camera_SetControllerType)
Paired Ghidra pseudocode: 0073D4B0_ScriptCore_CameraController_Camera_SetControllerType.c
Body: [0x0073d4b0, 0x0073d4d5) (37 bytes; stop exclusive)
Boundary rule: complete contiguous Ghidra function body, checked against original PE bytes.
Stored prototypes are preserved analyst projections; instructions establish physical stack/return behavior.
GNU objdump decodes original bytes linearly in Intel syntax. Child contracts remain separate.


LINEAR DISASSEMBLY
0073d4b0 <.text+0x33c4b0>:
  73d4b0:	e8 1b c7 22 00                                  	call   0x969bd0
  73d4b5:	85 c0                                           	test   eax,eax
  73d4b7:	74 19                                           	je     0x73d4d2
  73d4b9:	8b c8                                           	mov    ecx,eax
  73d4bb:	e8 30 4b 7e 00                                  	call   0xf21ff0
  73d4c0:	85 c0                                           	test   eax,eax
  73d4c2:	74 0e                                           	je     0x73d4d2
  73d4c4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  73d4c8:	6a 00                                           	push   0x0
  73d4ca:	51                                              	push   ecx
  73d4cb:	8b c8                                           	mov    ecx,eax
  73d4cd:	e8 8e db 22 00                                  	call   0x96b060
  73d4d2:	b0 01                                           	mov    al,0x1
  73d4d4:	c3                                              	ret
