# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989df0 (KeyNameMap_Add)
Paired Ghidra pseudocode: 10989DF0_KeyNameMap_Add.c
Window: [0x10989df0, 0x10989e10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989e10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989df0: 8b 44 24 10 50 8d 4c 24 0c 51 8b 4c 24 0c e8 ed
10989e00: 7f b9 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10989df0 <.text+0x988df0>:
10989df0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10989df4:	50                                              	push   eax
10989df5:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10989df9:	51                                              	push   ecx
10989dfa:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10989dfe:	e8 ed 7f b9 ff                                  	call   0x10521df0
10989e03:	c3                                              	ret
10989e04:	cc                                              	int3
10989e05:	cc                                              	int3
10989e06:	cc                                              	int3
10989e07:	cc                                              	int3
10989e08:	cc                                              	int3
10989e09:	cc                                              	int3
10989e0a:	cc                                              	int3
10989e0b:	cc                                              	int3
10989e0c:	cc                                              	int3
10989e0d:	cc                                              	int3
10989e0e:	cc                                              	int3
10989e0f:	cc                                              	int3
