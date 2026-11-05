# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053de60 (Route_IsLoop)
Paired Ghidra pseudocode: 1053DE60_Route_IsLoop.c
Window: [0x1053de60, 0x1053dea0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053dea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053de60: 8b 0d 44 89 c7 10 85 c9 56 74 2e 8b 44 24 08 50
1053de70: e8 7b e2 ff ff 8b f0 85 f6 74 1e 8b 16 8b 42 10
1053de80: 53 8b ce ff d0 8b 16 8b 42 14 8a 9e f4 00 00 00
1053de90: 8b ce ff d0 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
1053de60 <.text+0x53ce60>:
1053de60:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1053de66:	85 c9                                           	test   ecx,ecx
1053de68:	56                                              	push   esi
1053de69:	74 2e                                           	je     0x1053de99
1053de6b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1053de6f:	50                                              	push   eax
1053de70:	e8 7b e2 ff ff                                  	call   0x1053c0f0
1053de75:	8b f0                                           	mov    esi,eax
1053de77:	85 f6                                           	test   esi,esi
1053de79:	74 1e                                           	je     0x1053de99
1053de7b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053de7d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1053de80:	53                                              	push   ebx
1053de81:	8b ce                                           	mov    ecx,esi
1053de83:	ff d0                                           	call   eax
1053de85:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053de87:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1053de8a:	8a 9e f4 00 00 00                               	mov    bl,BYTE PTR [esi+0xf4]
1053de90:	8b ce                                           	mov    ecx,esi
1053de92:	ff d0                                           	call   eax
1053de94:	8a c3                                           	mov    al,bl
1053de96:	5b                                              	pop    ebx
1053de97:	5e                                              	pop    esi
1053de98:	c3                                              	ret
1053de99:	32 c0                                           	xor    al,al
1053de9b:	5e                                              	pop    esi
1053de9c:	c3                                              	ret
1053de9d:	cc                                              	int3
1053de9e:	cc                                              	int3
1053de9f:	cc                                              	int3
