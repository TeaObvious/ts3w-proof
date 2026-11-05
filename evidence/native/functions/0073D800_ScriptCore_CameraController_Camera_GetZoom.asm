# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d800 (ScriptCore.CameraController::Camera_GetZoom)
Paired Ghidra pseudocode: 0073D800_ScriptCore_CameraController_Camera_GetZoom.c
Window: [0x0073d800, 0x0073d840) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d800: e8 cb c3 22 00 85 c0 74 2f 8b c8 e8 e0 47 7e 00
0073d810: 85 c0 74 24 8b c8 e8 c5 65 dd ff 85 c0 74 19 8b
0073d820: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073d830: 07 8b c8 e9 28 36 23 00 d9 ee c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0073d800 <.text+0x33c800>:
  73d800:	e8 cb c3 22 00                                  	call   0x969bd0
  73d805:	85 c0                                           	test   eax,eax
  73d807:	74 2f                                           	je     0x73d838
  73d809:	8b c8                                           	mov    ecx,eax
  73d80b:	e8 e0 47 7e 00                                  	call   0xf21ff0
  73d810:	85 c0                                           	test   eax,eax
  73d812:	74 24                                           	je     0x73d838
  73d814:	8b c8                                           	mov    ecx,eax
  73d816:	e8 c5 65 dd ff                                  	call   0x513de0
  73d81b:	85 c0                                           	test   eax,eax
  73d81d:	74 19                                           	je     0x73d838
  73d81f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73d821:	8b c8                                           	mov    ecx,eax
  73d823:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73d826:	68 89 dd 0f 11                                  	push   0x110fdd89
  73d82b:	ff d0                                           	call   eax
  73d82d:	85 c0                                           	test   eax,eax
  73d82f:	74 07                                           	je     0x73d838
  73d831:	8b c8                                           	mov    ecx,eax
  73d833:	e9 28 36 23 00                                  	jmp    0x970e60
  73d838:	d9 ee                                           	fldz
  73d83a:	c3                                              	ret
  73d83b:	cc                                              	int3
  73d83c:	cc                                              	int3
  73d83d:	cc                                              	int3
  73d83e:	cc                                              	int3
  73d83f:	cc                                              	int3
