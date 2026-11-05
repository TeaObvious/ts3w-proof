# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9a00 (ScriptCore.CASUtils::CASUtils_CreateKeySearchImpl)
Paired Ghidra pseudocode: 005A9A00_ScriptCore_CASUtils_CASUtils_CreateKeySearchImpl.c
Window: [0x005a9a00, 0x005a9a60) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a9a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9a00: 56 e8 8a f9 1b 00 6a 00 6a 00 6a 00 6a 00 68 24
005a9a10: f8 fd 00 6a 18 8b f0 e8 e4 aa f3 ff 83 c4 18 85
005a9a20: c0 74 1d 8b 4c 24 08 51 8b c8 e8 11 ff ff ff 8b
005a9a30: 16 6a 35 50 8b 82 c8 00 00 00 8b ce ff d0 5e c3
005a9a40: 8b 16 33 c0 6a 35 50 8b 82 c8 00 00 00 8b ce ff
005a9a50: d0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a9a00 <.text+0x1a8a00>:
  5a9a00:	56                                              	push   esi
  5a9a01:	e8 8a f9 1b 00                                  	call   0x769390
  5a9a06:	6a 00                                           	push   0x0
  5a9a08:	6a 00                                           	push   0x0
  5a9a0a:	6a 00                                           	push   0x0
  5a9a0c:	6a 00                                           	push   0x0
  5a9a0e:	68 24 f8 fd 00                                  	push   0xfdf824
  5a9a13:	6a 18                                           	push   0x18
  5a9a15:	8b f0                                           	mov    esi,eax
  5a9a17:	e8 e4 aa f3 ff                                  	call   0x4e4500
  5a9a1c:	83 c4 18                                        	add    esp,0x18
  5a9a1f:	85 c0                                           	test   eax,eax
  5a9a21:	74 1d                                           	je     0x5a9a40
  5a9a23:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  5a9a27:	51                                              	push   ecx
  5a9a28:	8b c8                                           	mov    ecx,eax
  5a9a2a:	e8 11 ff ff ff                                  	call   0x5a9940
  5a9a2f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a9a31:	6a 35                                           	push   0x35
  5a9a33:	50                                              	push   eax
  5a9a34:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  5a9a3a:	8b ce                                           	mov    ecx,esi
  5a9a3c:	ff d0                                           	call   eax
  5a9a3e:	5e                                              	pop    esi
  5a9a3f:	c3                                              	ret
  5a9a40:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a9a42:	33 c0                                           	xor    eax,eax
  5a9a44:	6a 35                                           	push   0x35
  5a9a46:	50                                              	push   eax
  5a9a47:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  5a9a4d:	8b ce                                           	mov    ecx,esi
  5a9a4f:	ff d0                                           	call   eax
  5a9a51:	5e                                              	pop    esi
  5a9a52:	c3                                              	ret
  5a9a53:	cc                                              	int3
  5a9a54:	cc                                              	int3
  5a9a55:	cc                                              	int3
  5a9a56:	cc                                              	int3
  5a9a57:	cc                                              	int3
  5a9a58:	cc                                              	int3
  5a9a59:	cc                                              	int3
  5a9a5a:	cc                                              	int3
  5a9a5b:	cc                                              	int3
  5a9a5c:	cc                                              	int3
  5a9a5d:	cc                                              	int3
  5a9a5e:	cc                                              	int3
  5a9a5f:	cc                                              	int3
