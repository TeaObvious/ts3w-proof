# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10544dc0 (Route_GetSegmentStartPoint)
Paired Ghidra pseudocode: 10544DC0_Route_GetSegmentStartPoint.c
Window: [0x10544dc0, 0x10544e10) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10544e10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10544dc0: 8b 0d 44 89 c7 10 85 c9 56 74 3b 8b 44 24 08 50
10544dd0: e8 1b 73 ff ff 8b f0 85 f6 74 2b 8b 16 8b 42 10
10544de0: 53 8b ce ff d0 8b 4c 24 14 8b 54 24 10 51 52 8b
10544df0: ce e8 4a fa ff ff 8a d8 8b 06 8b 50 14 8b ce ff
10544e00: d2 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10544dc0 <.text+0x543dc0>:
10544dc0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10544dc6:	85 c9                                           	test   ecx,ecx
10544dc8:	56                                              	push   esi
10544dc9:	74 3b                                           	je     0x10544e06
10544dcb:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10544dcf:	50                                              	push   eax
10544dd0:	e8 1b 73 ff ff                                  	call   0x1053c0f0
10544dd5:	8b f0                                           	mov    esi,eax
10544dd7:	85 f6                                           	test   esi,esi
10544dd9:	74 2b                                           	je     0x10544e06
10544ddb:	8b 16                                           	mov    edx,DWORD PTR [esi]
10544ddd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10544de0:	53                                              	push   ebx
10544de1:	8b ce                                           	mov    ecx,esi
10544de3:	ff d0                                           	call   eax
10544de5:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10544de9:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10544ded:	51                                              	push   ecx
10544dee:	52                                              	push   edx
10544def:	8b ce                                           	mov    ecx,esi
10544df1:	e8 4a fa ff ff                                  	call   0x10544840
10544df6:	8a d8                                           	mov    bl,al
10544df8:	8b 06                                           	mov    eax,DWORD PTR [esi]
10544dfa:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
10544dfd:	8b ce                                           	mov    ecx,esi
10544dff:	ff d2                                           	call   edx
10544e01:	8a c3                                           	mov    al,bl
10544e03:	5b                                              	pop    ebx
10544e04:	5e                                              	pop    esi
10544e05:	c3                                              	ret
10544e06:	32 c0                                           	xor    al,al
10544e08:	5e                                              	pop    esi
10544e09:	c3                                              	ret
10544e0a:	cc                                              	int3
10544e0b:	cc                                              	int3
10544e0c:	cc                                              	int3
10544e0d:	cc                                              	int3
10544e0e:	cc                                              	int3
10544e0f:	cc                                              	int3
