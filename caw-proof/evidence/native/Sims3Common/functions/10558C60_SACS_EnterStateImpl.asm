# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558c60 (SACS_EnterStateImpl)
Paired Ghidra pseudocode: 10558C60_SACS_EnterStateImpl.c
Window: [0x10558c60, 0x10558c90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558c90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558c60: e8 bb 24 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
10558c70: 00 51 8b c8 ff d2 85 c0 74 11 8b 4c 24 0c 8b 54
10558c80: 24 08 51 52 8b c8 e8 45 cd 09 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
10558c60 <.text+0x557c60>:
10558c60:	e8 bb 24 00 00                                  	call   0x1055b120
10558c65:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10558c69:	8b 10                                           	mov    edx,DWORD PTR [eax]
10558c6b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
10558c71:	51                                              	push   ecx
10558c72:	8b c8                                           	mov    ecx,eax
10558c74:	ff d2                                           	call   edx
10558c76:	85 c0                                           	test   eax,eax
10558c78:	74 11                                           	je     0x10558c8b
10558c7a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10558c7e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10558c82:	51                                              	push   ecx
10558c83:	52                                              	push   edx
10558c84:	8b c8                                           	mov    ecx,eax
10558c86:	e8 45 cd 09 00                                  	call   0x105f59d0
10558c8b:	c3                                              	ret
10558c8c:	cc                                              	int3
10558c8d:	cc                                              	int3
10558c8e:	cc                                              	int3
10558c8f:	cc                                              	int3
