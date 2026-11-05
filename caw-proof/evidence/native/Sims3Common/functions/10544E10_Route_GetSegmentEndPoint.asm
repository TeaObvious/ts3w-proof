# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10544e10 (Route_GetSegmentEndPoint)
Paired Ghidra pseudocode: 10544E10_Route_GetSegmentEndPoint.c
Window: [0x10544e10, 0x10544e60) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10544e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10544e10: 8b 0d 44 89 c7 10 85 c9 56 74 3b 8b 44 24 08 50
10544e20: e8 cb 72 ff ff 8b f0 85 f6 74 2b 8b 16 8b 42 10
10544e30: 53 8b ce ff d0 8b 4c 24 14 8b 54 24 10 51 52 8b
10544e40: ce e8 da fa ff ff 8a d8 8b 06 8b 50 14 8b ce ff
10544e50: d2 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10544e10 <.text+0x543e10>:
10544e10:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10544e16:	85 c9                                           	test   ecx,ecx
10544e18:	56                                              	push   esi
10544e19:	74 3b                                           	je     0x10544e56
10544e1b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10544e1f:	50                                              	push   eax
10544e20:	e8 cb 72 ff ff                                  	call   0x1053c0f0
10544e25:	8b f0                                           	mov    esi,eax
10544e27:	85 f6                                           	test   esi,esi
10544e29:	74 2b                                           	je     0x10544e56
10544e2b:	8b 16                                           	mov    edx,DWORD PTR [esi]
10544e2d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10544e30:	53                                              	push   ebx
10544e31:	8b ce                                           	mov    ecx,esi
10544e33:	ff d0                                           	call   eax
10544e35:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10544e39:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10544e3d:	51                                              	push   ecx
10544e3e:	52                                              	push   edx
10544e3f:	8b ce                                           	mov    ecx,esi
10544e41:	e8 da fa ff ff                                  	call   0x10544920
10544e46:	8a d8                                           	mov    bl,al
10544e48:	8b 06                                           	mov    eax,DWORD PTR [esi]
10544e4a:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
10544e4d:	8b ce                                           	mov    ecx,esi
10544e4f:	ff d2                                           	call   edx
10544e51:	8a c3                                           	mov    al,bl
10544e53:	5b                                              	pop    ebx
10544e54:	5e                                              	pop    esi
10544e55:	c3                                              	ret
10544e56:	32 c0                                           	xor    al,al
10544e58:	5e                                              	pop    esi
10544e59:	c3                                              	ret
10544e5a:	cc                                              	int3
10544e5b:	cc                                              	int3
10544e5c:	cc                                              	int3
10544e5d:	cc                                              	int3
10544e5e:	cc                                              	int3
10544e5f:	cc                                              	int3
