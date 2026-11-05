# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558cc0 (SACS_ContinueImpl)
Paired Ghidra pseudocode: 10558CC0_SACS_ContinueImpl.c
Window: [0x10558cc0, 0x10558cf0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558cc0: e8 5b 24 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
10558cd0: 00 51 8b c8 ff d2 85 c0 74 0c 8b 4c 24 08 51 8b
10558ce0: c8 e8 0a d0 09 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10558cc0 <.text+0x557cc0>:
10558cc0:	e8 5b 24 00 00                                  	call   0x1055b120
10558cc5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10558cc9:	8b 10                                           	mov    edx,DWORD PTR [eax]
10558ccb:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
10558cd1:	51                                              	push   ecx
10558cd2:	8b c8                                           	mov    ecx,eax
10558cd4:	ff d2                                           	call   edx
10558cd6:	85 c0                                           	test   eax,eax
10558cd8:	74 0c                                           	je     0x10558ce6
10558cda:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10558cde:	51                                              	push   ecx
10558cdf:	8b c8                                           	mov    ecx,eax
10558ce1:	e8 0a d0 09 00                                  	call   0x105f5cf0
10558ce6:	c3                                              	ret
10558ce7:	cc                                              	int3
10558ce8:	cc                                              	int3
10558ce9:	cc                                              	int3
10558cea:	cc                                              	int3
10558ceb:	cc                                              	int3
10558cec:	cc                                              	int3
10558ced:	cc                                              	int3
10558cee:	cc                                              	int3
10558cef:	cc                                              	int3
