# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558e30 (SACS_GetParamImpl)
Paired Ghidra pseudocode: 10558E30_SACS_GetParamImpl.c
Window: [0x10558e30, 0x10558e60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558e60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558e30: e8 eb 22 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
10558e40: 00 51 8b c8 ff d2 85 c0 74 0f 8b 4c 24 08 6a 00
10558e50: 51 8b c8 e8 88 a9 09 00 c3 33 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
10558e30 <.text+0x557e30>:
10558e30:	e8 eb 22 00 00                                  	call   0x1055b120
10558e35:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10558e39:	8b 10                                           	mov    edx,DWORD PTR [eax]
10558e3b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
10558e41:	51                                              	push   ecx
10558e42:	8b c8                                           	mov    ecx,eax
10558e44:	ff d2                                           	call   edx
10558e46:	85 c0                                           	test   eax,eax
10558e48:	74 0f                                           	je     0x10558e59
10558e4a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10558e4e:	6a 00                                           	push   0x0
10558e50:	51                                              	push   ecx
10558e51:	8b c8                                           	mov    ecx,eax
10558e53:	e8 88 a9 09 00                                  	call   0x105f37e0
10558e58:	c3                                              	ret
10558e59:	33 c0                                           	xor    eax,eax
10558e5b:	c3                                              	ret
10558e5c:	cc                                              	int3
10558e5d:	cc                                              	int3
10558e5e:	cc                                              	int3
10558e5f:	cc                                              	int3
