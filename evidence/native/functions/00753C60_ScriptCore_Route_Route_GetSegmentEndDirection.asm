# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00753c60 (ScriptCore.Route::Route_GetSegmentEndDirection)
Paired Ghidra pseudocode: 00753C60_ScriptCore_Route_Route_GetSegmentEndDirection.c
Window: [0x00753c60, 0x00753cb0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00753cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00753c60: 8b 0d c4 50 1d 01 85 c9 56 74 3b 8b 44 24 08 50
00753c70: e8 3b 78 ff ff 8b f0 85 f6 74 2b 8b 16 8b 42 10
00753c80: 53 8b ce ff d0 8b 4c 24 14 8b 54 24 10 51 52 8b
00753c90: ce e8 aa fb ff ff 8a d8 8b 06 8b 50 14 8b ce ff
00753ca0: d2 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00753c60 <.text+0x352c60>:
  753c60:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  753c66:	85 c9                                           	test   ecx,ecx
  753c68:	56                                              	push   esi
  753c69:	74 3b                                           	je     0x753ca6
  753c6b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  753c6f:	50                                              	push   eax
  753c70:	e8 3b 78 ff ff                                  	call   0x74b4b0
  753c75:	8b f0                                           	mov    esi,eax
  753c77:	85 f6                                           	test   esi,esi
  753c79:	74 2b                                           	je     0x753ca6
  753c7b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753c7d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  753c80:	53                                              	push   ebx
  753c81:	8b ce                                           	mov    ecx,esi
  753c83:	ff d0                                           	call   eax
  753c85:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  753c89:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  753c8d:	51                                              	push   ecx
  753c8e:	52                                              	push   edx
  753c8f:	8b ce                                           	mov    ecx,esi
  753c91:	e8 aa fb ff ff                                  	call   0x753840
  753c96:	8a d8                                           	mov    bl,al
  753c98:	8b 06                                           	mov    eax,DWORD PTR [esi]
  753c9a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  753c9d:	8b ce                                           	mov    ecx,esi
  753c9f:	ff d2                                           	call   edx
  753ca1:	8a c3                                           	mov    al,bl
  753ca3:	5b                                              	pop    ebx
  753ca4:	5e                                              	pop    esi
  753ca5:	c3                                              	ret
  753ca6:	32 c0                                           	xor    al,al
  753ca8:	5e                                              	pop    esi
  753ca9:	c3                                              	ret
  753caa:	cc                                              	int3
  753cab:	cc                                              	int3
  753cac:	cc                                              	int3
  753cad:	cc                                              	int3
  753cae:	cc                                              	int3
  753caf:	cc                                              	int3
