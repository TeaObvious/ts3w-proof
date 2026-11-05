# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00753bc0 (ScriptCore.Route::Route_GetSegmentEndPoint)
Paired Ghidra pseudocode: 00753BC0_ScriptCore_Route_Route_GetSegmentEndPoint.c
Window: [0x00753bc0, 0x00753c10) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00753c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00753bc0: 8b 0d c4 50 1d 01 85 c9 56 74 3b 8b 44 24 08 50
00753bd0: e8 db 78 ff ff 8b f0 85 f6 74 2b 8b 16 8b 42 10
00753be0: 53 8b ce ff d0 8b 4c 24 14 8b 54 24 10 51 52 8b
00753bf0: ce e8 8a fa ff ff 8a d8 8b 06 8b 50 14 8b ce ff
00753c00: d2 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00753bc0 <.text+0x352bc0>:
  753bc0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  753bc6:	85 c9                                           	test   ecx,ecx
  753bc8:	56                                              	push   esi
  753bc9:	74 3b                                           	je     0x753c06
  753bcb:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  753bcf:	50                                              	push   eax
  753bd0:	e8 db 78 ff ff                                  	call   0x74b4b0
  753bd5:	8b f0                                           	mov    esi,eax
  753bd7:	85 f6                                           	test   esi,esi
  753bd9:	74 2b                                           	je     0x753c06
  753bdb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  753bdd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  753be0:	53                                              	push   ebx
  753be1:	8b ce                                           	mov    ecx,esi
  753be3:	ff d0                                           	call   eax
  753be5:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  753be9:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  753bed:	51                                              	push   ecx
  753bee:	52                                              	push   edx
  753bef:	8b ce                                           	mov    ecx,esi
  753bf1:	e8 8a fa ff ff                                  	call   0x753680
  753bf6:	8a d8                                           	mov    bl,al
  753bf8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  753bfa:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  753bfd:	8b ce                                           	mov    ecx,esi
  753bff:	ff d2                                           	call   edx
  753c01:	8a c3                                           	mov    al,bl
  753c03:	5b                                              	pop    ebx
  753c04:	5e                                              	pop    esi
  753c05:	c3                                              	ret
  753c06:	32 c0                                           	xor    al,al
  753c08:	5e                                              	pop    esi
  753c09:	c3                                              	ret
  753c0a:	cc                                              	int3
  753c0b:	cc                                              	int3
  753c0c:	cc                                              	int3
  753c0d:	cc                                              	int3
  753c0e:	cc                                              	int3
  753c0f:	cc                                              	int3
