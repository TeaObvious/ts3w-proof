# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00753b70 (ScriptCore.Route::Route_GetSegmentStartPoint)
Paired Ghidra pseudocode: 00753B70_ScriptCore_Route_Route_GetSegmentStartPoint.c
Window: [0x00753b70, 0x00753bc0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00753bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00753b70: 8b 0d c4 50 1d 01 85 c9 56 74 3b 8b 44 24 08 50
00753b80: e8 2b 79 ff ff 8b f0 85 f6 74 2b 8b 16 8b 42 10
00753b90: 53 8b ce ff d0 8b 4c 24 14 8b 54 24 10 51 52 8b
00753ba0: ce e8 fa f9 ff ff 8a d8 8b 06 8b 50 14 8b ce ff
00753bb0: d2 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00753b70 <.text+0x352b70>:
  753b70:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  753b76:	85 c9                                           	test   ecx,ecx
  753b78:	56                                              	push   esi
  753b79:	74 3b                                           	je     0x753bb6
  753b7b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  753b7f:	50                                              	push   eax
  753b80:	e8 2b 79 ff ff                                  	call   0x74b4b0
  753b85:	8b f0                                           	mov    esi,eax
  753b87:	85 f6                                           	test   esi,esi
  753b89:	74 2b                                           	je     0x753bb6
  753b8b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753b8d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  753b90:	53                                              	push   ebx
  753b91:	8b ce                                           	mov    ecx,esi
  753b93:	ff d0                                           	call   eax
  753b95:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  753b99:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  753b9d:	51                                              	push   ecx
  753b9e:	52                                              	push   edx
  753b9f:	8b ce                                           	mov    ecx,esi
  753ba1:	e8 fa f9 ff ff                                  	call   0x7535a0
  753ba6:	8a d8                                           	mov    bl,al
  753ba8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  753baa:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  753bad:	8b ce                                           	mov    ecx,esi
  753baf:	ff d2                                           	call   edx
  753bb1:	8a c3                                           	mov    al,bl
  753bb3:	5b                                              	pop    ebx
  753bb4:	5e                                              	pop    esi
  753bb5:	c3                                              	ret
  753bb6:	32 c0                                           	xor    al,al
  753bb8:	5e                                              	pop    esi
  753bb9:	c3                                              	ret
  753bba:	cc                                              	int3
  753bbb:	cc                                              	int3
  753bbc:	cc                                              	int3
  753bbd:	cc                                              	int3
  753bbe:	cc                                              	int3
  753bbf:	cc                                              	int3
