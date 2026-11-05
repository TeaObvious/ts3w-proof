# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558e60 (SACS_CanPauseImpl)
Paired Ghidra pseudocode: 10558E60_SACS_CanPauseImpl.c
Window: [0x10558e60, 0x10558e90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558e60: e8 bb 22 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
10558e70: 00 51 8b c8 ff d2 85 c0 74 0d 8b 4c 24 08 51 8b
10558e80: c8 e8 ea 8d 09 00 c3 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10558e60 <.text+0x557e60>:
10558e60:	e8 bb 22 00 00                                  	call   0x1055b120
10558e65:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10558e69:	8b 10                                           	mov    edx,DWORD PTR [eax]
10558e6b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
10558e71:	51                                              	push   ecx
10558e72:	8b c8                                           	mov    ecx,eax
10558e74:	ff d2                                           	call   edx
10558e76:	85 c0                                           	test   eax,eax
10558e78:	74 0d                                           	je     0x10558e87
10558e7a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10558e7e:	51                                              	push   ecx
10558e7f:	8b c8                                           	mov    ecx,eax
10558e81:	e8 ea 8d 09 00                                  	call   0x105f1c70
10558e86:	c3                                              	ret
10558e87:	32 c0                                           	xor    al,al
10558e89:	c3                                              	ret
10558e8a:	cc                                              	int3
10558e8b:	cc                                              	int3
10558e8c:	cc                                              	int3
10558e8d:	cc                                              	int3
10558e8e:	cc                                              	int3
10558e8f:	cc                                              	int3
