# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581e60 (World_SetLotType)
Paired Ghidra pseudocode: 10581E60_World_SetLotType.c
Window: [0x10581e60, 0x10581ea0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581ea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581e60: 8b 0d c4 00 c7 10 85 c9 74 31 8b 44 24 08 8b 54
10581e70: 24 04 6a 00 50 52 e8 95 51 cb ff 85 c0 74 1c 8b
10581e80: 4c 24 0c 39 88 08 04 00 00 74 10 c7 80 0c 04 00
10581e90: 00 00 00 00 00 89 88 08 04 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
10581e60 <.text+0x580e60>:
10581e60:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10581e66:	85 c9                                           	test   ecx,ecx
10581e68:	74 31                                           	je     0x10581e9b
10581e6a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581e6e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10581e72:	6a 00                                           	push   0x0
10581e74:	50                                              	push   eax
10581e75:	52                                              	push   edx
10581e76:	e8 95 51 cb ff                                  	call   0x10237010
10581e7b:	85 c0                                           	test   eax,eax
10581e7d:	74 1c                                           	je     0x10581e9b
10581e7f:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10581e83:	39 88 08 04 00 00                               	cmp    DWORD PTR [eax+0x408],ecx
10581e89:	74 10                                           	je     0x10581e9b
10581e8b:	c7 80 0c 04 00 00 00 00 00 00                   	mov    DWORD PTR [eax+0x40c],0x0
10581e95:	89 88 08 04 00 00                               	mov    DWORD PTR [eax+0x408],ecx
10581e9b:	c3                                              	ret
10581e9c:	cc                                              	int3
10581e9d:	cc                                              	int3
10581e9e:	cc                                              	int3
10581e9f:	cc                                              	int3
