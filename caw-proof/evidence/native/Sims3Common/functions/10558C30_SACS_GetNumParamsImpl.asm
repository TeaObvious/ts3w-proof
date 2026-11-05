# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10558c30 (SACS_GetNumParamsImpl)
Paired Ghidra pseudocode: 10558C30_SACS_GetNumParamsImpl.c
Window: [0x10558c30, 0x10558c60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10558c30: e8 eb 24 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
10558c40: 00 51 8b c8 ff d2 85 c0 74 07 8b c8 e9 bf 8f 09
10558c50: 00 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10558c30 <.text+0x557c30>:
10558c30:	e8 eb 24 00 00                                  	call   0x1055b120
10558c35:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10558c39:	8b 10                                           	mov    edx,DWORD PTR [eax]
10558c3b:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
10558c41:	51                                              	push   ecx
10558c42:	8b c8                                           	mov    ecx,eax
10558c44:	ff d2                                           	call   edx
10558c46:	85 c0                                           	test   eax,eax
10558c48:	74 07                                           	je     0x10558c51
10558c4a:	8b c8                                           	mov    ecx,eax
10558c4c:	e9 bf 8f 09 00                                  	jmp    0x105f1c10
10558c51:	33 c0                                           	xor    eax,eax
10558c53:	c3                                              	ret
10558c54:	cc                                              	int3
10558c55:	cc                                              	int3
10558c56:	cc                                              	int3
10558c57:	cc                                              	int3
10558c58:	cc                                              	int3
10558c59:	cc                                              	int3
10558c5a:	cc                                              	int3
10558c5b:	cc                                              	int3
10558c5c:	cc                                              	int3
10558c5d:	cc                                              	int3
10558c5e:	cc                                              	int3
10558c5f:	cc                                              	int3
