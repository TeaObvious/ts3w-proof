# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00753c10 (ScriptCore.Route::Route_GetSegmentStartDirection)
Paired Ghidra pseudocode: 00753C10_ScriptCore_Route_Route_GetSegmentStartDirection.c
Window: [0x00753c10, 0x00753c60) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00753c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00753c10: 8b 0d c4 50 1d 01 85 c9 56 74 3b 8b 44 24 08 50
00753c20: e8 8b 78 ff ff 8b f0 85 f6 74 2b 8b 16 8b 42 10
00753c30: 53 8b ce ff d0 8b 4c 24 14 8b 54 24 10 51 52 8b
00753c40: ce e8 1a fb ff ff 8a d8 8b 06 8b 50 14 8b ce ff
00753c50: d2 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00753c10 <.text+0x352c10>:
  753c10:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  753c16:	85 c9                                           	test   ecx,ecx
  753c18:	56                                              	push   esi
  753c19:	74 3b                                           	je     0x753c56
  753c1b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  753c1f:	50                                              	push   eax
  753c20:	e8 8b 78 ff ff                                  	call   0x74b4b0
  753c25:	8b f0                                           	mov    esi,eax
  753c27:	85 f6                                           	test   esi,esi
  753c29:	74 2b                                           	je     0x753c56
  753c2b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753c2d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  753c30:	53                                              	push   ebx
  753c31:	8b ce                                           	mov    ecx,esi
  753c33:	ff d0                                           	call   eax
  753c35:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  753c39:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  753c3d:	51                                              	push   ecx
  753c3e:	52                                              	push   edx
  753c3f:	8b ce                                           	mov    ecx,esi
  753c41:	e8 1a fb ff ff                                  	call   0x753760
  753c46:	8a d8                                           	mov    bl,al
  753c48:	8b 06                                           	mov    eax,DWORD PTR [esi]
  753c4a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  753c4d:	8b ce                                           	mov    ecx,esi
  753c4f:	ff d2                                           	call   edx
  753c51:	8a c3                                           	mov    al,bl
  753c53:	5b                                              	pop    ebx
  753c54:	5e                                              	pop    esi
  753c55:	c3                                              	ret
  753c56:	32 c0                                           	xor    al,al
  753c58:	5e                                              	pop    esi
  753c59:	c3                                              	ret
  753c5a:	cc                                              	int3
  753c5b:	cc                                              	int3
  753c5c:	cc                                              	int3
  753c5d:	cc                                              	int3
  753c5e:	cc                                              	int3
  753c5f:	cc                                              	int3
