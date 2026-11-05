# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995f30 (ObjectManagerWrap_SetGameObjDisplayName)
Paired Ghidra pseudocode: 10995F30_ObjectManagerWrap_SetGameObjDisplayName.c
Window: [0x10995f30, 0x10995f60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995f30: 8b 4c 24 04 85 c9 74 16 8b 44 24 0c 8b 54 24 08
10995f40: 50 52 e8 59 05 8b ff f6 d8 1b c0 f7 d8 c3 33 c0
10995f50: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995f30 <.text+0x994f30>:
10995f30:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10995f34:	85 c9                                           	test   ecx,ecx
10995f36:	74 16                                           	je     0x10995f4e
10995f38:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10995f3c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10995f40:	50                                              	push   eax
10995f41:	52                                              	push   edx
10995f42:	e8 59 05 8b ff                                  	call   0x102464a0
10995f47:	f6 d8                                           	neg    al
10995f49:	1b c0                                           	sbb    eax,eax
10995f4b:	f7 d8                                           	neg    eax
10995f4d:	c3                                              	ret
10995f4e:	33 c0                                           	xor    eax,eax
10995f50:	c3                                              	ret
10995f51:	cc                                              	int3
10995f52:	cc                                              	int3
10995f53:	cc                                              	int3
10995f54:	cc                                              	int3
10995f55:	cc                                              	int3
10995f56:	cc                                              	int3
10995f57:	cc                                              	int3
10995f58:	cc                                              	int3
10995f59:	cc                                              	int3
10995f5a:	cc                                              	int3
10995f5b:	cc                                              	int3
10995f5c:	cc                                              	int3
10995f5d:	cc                                              	int3
10995f5e:	cc                                              	int3
10995f5f:	cc                                              	int3
