# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579d30 (World_GetHouseboatParentImpl)
Paired Ghidra pseudocode: 10579D30_World_GetHouseboatParentImpl.c
Window: [0x10579d30, 0x10579d60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579d60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579d30: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
10579d40: 24 04 6a 00 50 52 e8 c5 d2 cb ff 85 c0 74 07 8b
10579d50: c8 e9 2a b9 af ff 33 c0 33 d2 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10579d30 <.text+0x578d30>:
10579d30:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10579d36:	85 c9                                           	test   ecx,ecx
10579d38:	74 1c                                           	je     0x10579d56
10579d3a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10579d3e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10579d42:	6a 00                                           	push   0x0
10579d44:	50                                              	push   eax
10579d45:	52                                              	push   edx
10579d46:	e8 c5 d2 cb ff                                  	call   0x10237010
10579d4b:	85 c0                                           	test   eax,eax
10579d4d:	74 07                                           	je     0x10579d56
10579d4f:	8b c8                                           	mov    ecx,eax
10579d51:	e9 2a b9 af ff                                  	jmp    0x10075680
10579d56:	33 c0                                           	xor    eax,eax
10579d58:	33 d2                                           	xor    edx,edx
10579d5a:	c3                                              	ret
10579d5b:	cc                                              	int3
10579d5c:	cc                                              	int3
10579d5d:	cc                                              	int3
10579d5e:	cc                                              	int3
10579d5f:	cc                                              	int3
