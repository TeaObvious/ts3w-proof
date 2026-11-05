# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558c90 (SACS_PauseImpl)
Paired Ghidra pseudocode: 10558C90_SACS_PauseImpl.c
Window: [0x10558c90, 0x10558cc0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558c90: e8 8b 24 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
10558ca0: 00 51 8b c8 ff d2 85 c0 74 0d 8b 4c 24 08 51 8b
10558cb0: c8 e8 9a cf 09 00 c3 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10558c90 <.text+0x557c90>:
10558c90:	e8 8b 24 00 00                                  	call   0x1055b120
10558c95:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10558c99:	8b 10                                           	mov    edx,DWORD PTR [eax]
10558c9b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
10558ca1:	51                                              	push   ecx
10558ca2:	8b c8                                           	mov    ecx,eax
10558ca4:	ff d2                                           	call   edx
10558ca6:	85 c0                                           	test   eax,eax
10558ca8:	74 0d                                           	je     0x10558cb7
10558caa:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10558cae:	51                                              	push   ecx
10558caf:	8b c8                                           	mov    ecx,eax
10558cb1:	e8 9a cf 09 00                                  	call   0x105f5c50
10558cb6:	c3                                              	ret
10558cb7:	32 c0                                           	xor    al,al
10558cb9:	c3                                              	ret
10558cba:	cc                                              	int3
10558cbb:	cc                                              	int3
10558cbc:	cc                                              	int3
10558cbd:	cc                                              	int3
10558cbe:	cc                                              	int3
10558cbf:	cc                                              	int3
