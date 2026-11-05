# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d840 (ScriptCore.CameraController::Camera_GetRegularZoomLimits)
Paired Ghidra pseudocode: 0073D840_ScriptCore_CameraController_Camera_GetRegularZoomLimits.c
Window: [0x0073d840, 0x0073d890) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d840: e8 8b c3 22 00 85 c0 74 39 8b c8 e8 a0 47 7e 00
0073d850: 85 c0 74 2e 8b c8 e8 85 65 dd ff 85 c0 74 23 8b
0073d860: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073d870: 11 8b 4c 24 08 8b 54 24 04 51 52 8b c8 e8 5e 27
0073d880: 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073d840 <.text+0x33c840>:
  73d840:	e8 8b c3 22 00                                  	call   0x969bd0
  73d845:	85 c0                                           	test   eax,eax
  73d847:	74 39                                           	je     0x73d882
  73d849:	8b c8                                           	mov    ecx,eax
  73d84b:	e8 a0 47 7e 00                                  	call   0xf21ff0
  73d850:	85 c0                                           	test   eax,eax
  73d852:	74 2e                                           	je     0x73d882
  73d854:	8b c8                                           	mov    ecx,eax
  73d856:	e8 85 65 dd ff                                  	call   0x513de0
  73d85b:	85 c0                                           	test   eax,eax
  73d85d:	74 23                                           	je     0x73d882
  73d85f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73d861:	8b c8                                           	mov    ecx,eax
  73d863:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73d866:	68 89 dd 0f 11                                  	push   0x110fdd89
  73d86b:	ff d0                                           	call   eax
  73d86d:	85 c0                                           	test   eax,eax
  73d86f:	74 11                                           	je     0x73d882
  73d871:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  73d875:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  73d879:	51                                              	push   ecx
  73d87a:	52                                              	push   edx
  73d87b:	8b c8                                           	mov    ecx,eax
  73d87d:	e8 5e 27 23 00                                  	call   0x96ffe0
  73d882:	c3                                              	ret
  73d883:	cc                                              	int3
  73d884:	cc                                              	int3
  73d885:	cc                                              	int3
  73d886:	cc                                              	int3
  73d887:	cc                                              	int3
  73d888:	cc                                              	int3
  73d889:	cc                                              	int3
  73d88a:	cc                                              	int3
  73d88b:	cc                                              	int3
  73d88c:	cc                                              	int3
  73d88d:	cc                                              	int3
  73d88e:	cc                                              	int3
  73d88f:	cc                                              	int3
