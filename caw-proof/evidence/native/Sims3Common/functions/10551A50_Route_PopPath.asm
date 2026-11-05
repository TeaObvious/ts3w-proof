# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10551a50 (Route_PopPath)
Paired Ghidra pseudocode: 10551A50_Route_PopPath.c
Window: [0x10551a50, 0x10551a90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10551a90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10551a50: 8b 0d 44 89 c7 10 85 c9 74 2c 8b 44 24 04 56 50
10551a60: e8 8b a6 fe ff 8b f0 85 f6 74 1a 8b 16 8b 42 10
10551a70: 8b ce ff d0 8b ce e8 b5 d6 ff ff 8b 16 8b 42 14
10551a80: 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10551a50 <.text+0x550a50>:
10551a50:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10551a56:	85 c9                                           	test   ecx,ecx
10551a58:	74 2c                                           	je     0x10551a86
10551a5a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10551a5e:	56                                              	push   esi
10551a5f:	50                                              	push   eax
10551a60:	e8 8b a6 fe ff                                  	call   0x1053c0f0
10551a65:	8b f0                                           	mov    esi,eax
10551a67:	85 f6                                           	test   esi,esi
10551a69:	74 1a                                           	je     0x10551a85
10551a6b:	8b 16                                           	mov    edx,DWORD PTR [esi]
10551a6d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10551a70:	8b ce                                           	mov    ecx,esi
10551a72:	ff d0                                           	call   eax
10551a74:	8b ce                                           	mov    ecx,esi
10551a76:	e8 b5 d6 ff ff                                  	call   0x1054f130
10551a7b:	8b 16                                           	mov    edx,DWORD PTR [esi]
10551a7d:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10551a80:	8b ce                                           	mov    ecx,esi
10551a82:	5e                                              	pop    esi
10551a83:	ff e0                                           	jmp    eax
10551a85:	5e                                              	pop    esi
10551a86:	c3                                              	ret
10551a87:	cc                                              	int3
10551a88:	cc                                              	int3
10551a89:	cc                                              	int3
10551a8a:	cc                                              	int3
10551a8b:	cc                                              	int3
10551a8c:	cc                                              	int3
10551a8d:	cc                                              	int3
10551a8e:	cc                                              	int3
10551a8f:	cc                                              	int3
