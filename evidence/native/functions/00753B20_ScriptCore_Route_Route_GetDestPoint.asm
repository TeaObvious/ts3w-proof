# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00753b20 (ScriptCore.Route::Route_GetDestPoint)
Paired Ghidra pseudocode: 00753B20_ScriptCore_Route_Route_GetDestPoint.c
Window: [0x00753b20, 0x00753b70) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00753b70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00753b20: 8b 0d c4 50 1d 01 85 c9 56 74 36 8b 44 24 08 50
00753b30: e8 7b 79 ff ff 8b f0 85 f6 74 26 8b 16 8b 42 10
00753b40: 53 8b ce ff d0 8b 4c 24 10 51 8b ce e8 4f f9 ff
00753b50: ff 8b 16 8a d8 8b 42 14 8b ce ff d0 8a c3 5b 5e
00753b60: c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00753b20 <.text+0x352b20>:
  753b20:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  753b26:	85 c9                                           	test   ecx,ecx
  753b28:	56                                              	push   esi
  753b29:	74 36                                           	je     0x753b61
  753b2b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  753b2f:	50                                              	push   eax
  753b30:	e8 7b 79 ff ff                                  	call   0x74b4b0
  753b35:	8b f0                                           	mov    esi,eax
  753b37:	85 f6                                           	test   esi,esi
  753b39:	74 26                                           	je     0x753b61
  753b3b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753b3d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  753b40:	53                                              	push   ebx
  753b41:	8b ce                                           	mov    ecx,esi
  753b43:	ff d0                                           	call   eax
  753b45:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  753b49:	51                                              	push   ecx
  753b4a:	8b ce                                           	mov    ecx,esi
  753b4c:	e8 4f f9 ff ff                                  	call   0x7534a0
  753b51:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753b53:	8a d8                                           	mov    bl,al
  753b55:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  753b58:	8b ce                                           	mov    ecx,esi
  753b5a:	ff d0                                           	call   eax
  753b5c:	8a c3                                           	mov    al,bl
  753b5e:	5b                                              	pop    ebx
  753b5f:	5e                                              	pop    esi
  753b60:	c3                                              	ret
  753b61:	32 c0                                           	xor    al,al
  753b63:	5e                                              	pop    esi
  753b64:	c3                                              	ret
  753b65:	cc                                              	int3
  753b66:	cc                                              	int3
  753b67:	cc                                              	int3
  753b68:	cc                                              	int3
  753b69:	cc                                              	int3
  753b6a:	cc                                              	int3
  753b6b:	cc                                              	int3
  753b6c:	cc                                              	int3
  753b6d:	cc                                              	int3
  753b6e:	cc                                              	int3
  753b6f:	cc                                              	int3
