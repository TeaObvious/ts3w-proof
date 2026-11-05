# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5b10 (ScriptCore.CASUtils::CASUtils_SimBuilderCreateImpl)
Paired Ghidra pseudocode: 005A5B10_ScriptCore_CASUtils_CASUtils_SimBuilderCreateImpl.c
Window: [0x005a5b10, 0x005a5b70) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5b10: 56 e8 7a 38 1c 00 6a 00 6a 00 6a 00 6a 00 68 e0
005a5b20: f6 fd 00 68 80 02 00 00 8b f0 e8 d1 e9 f3 ff 83
005a5b30: c4 18 85 c0 74 18 8b c8 e8 43 ed 03 00 8b 16 6a
005a5b40: 35 50 8b 82 c8 00 00 00 8b ce ff d0 5e c3 8b 16
005a5b50: 33 c0 6a 35 50 8b 82 c8 00 00 00 8b ce ff d0 5e
005a5b60: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5b10 <.text+0x1a4b10>:
  5a5b10:	56                                              	push   esi
  5a5b11:	e8 7a 38 1c 00                                  	call   0x769390
  5a5b16:	6a 00                                           	push   0x0
  5a5b18:	6a 00                                           	push   0x0
  5a5b1a:	6a 00                                           	push   0x0
  5a5b1c:	6a 00                                           	push   0x0
  5a5b1e:	68 e0 f6 fd 00                                  	push   0xfdf6e0
  5a5b23:	68 80 02 00 00                                  	push   0x280
  5a5b28:	8b f0                                           	mov    esi,eax
  5a5b2a:	e8 d1 e9 f3 ff                                  	call   0x4e4500
  5a5b2f:	83 c4 18                                        	add    esp,0x18
  5a5b32:	85 c0                                           	test   eax,eax
  5a5b34:	74 18                                           	je     0x5a5b4e
  5a5b36:	8b c8                                           	mov    ecx,eax
  5a5b38:	e8 43 ed 03 00                                  	call   0x5e4880
  5a5b3d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a5b3f:	6a 35                                           	push   0x35
  5a5b41:	50                                              	push   eax
  5a5b42:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  5a5b48:	8b ce                                           	mov    ecx,esi
  5a5b4a:	ff d0                                           	call   eax
  5a5b4c:	5e                                              	pop    esi
  5a5b4d:	c3                                              	ret
  5a5b4e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a5b50:	33 c0                                           	xor    eax,eax
  5a5b52:	6a 35                                           	push   0x35
  5a5b54:	50                                              	push   eax
  5a5b55:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  5a5b5b:	8b ce                                           	mov    ecx,esi
  5a5b5d:	ff d0                                           	call   eax
  5a5b5f:	5e                                              	pop    esi
  5a5b60:	c3                                              	ret
  5a5b61:	cc                                              	int3
  5a5b62:	cc                                              	int3
  5a5b63:	cc                                              	int3
  5a5b64:	cc                                              	int3
  5a5b65:	cc                                              	int3
  5a5b66:	cc                                              	int3
  5a5b67:	cc                                              	int3
  5a5b68:	cc                                              	int3
  5a5b69:	cc                                              	int3
  5a5b6a:	cc                                              	int3
  5a5b6b:	cc                                              	int3
  5a5b6c:	cc                                              	int3
  5a5b6d:	cc                                              	int3
  5a5b6e:	cc                                              	int3
  5a5b6f:	cc                                              	int3
