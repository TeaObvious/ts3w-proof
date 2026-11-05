# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10568b90 (Swarm_SetNeverHide)
Paired Ghidra pseudocode: 10568B90_Swarm_SetNeverHide.c
Window: [0x10568b90, 0x10568bd0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10568bd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10568b90: e8 0b 16 1c 00 8b 4c 24 08 8b 54 24 04 51 52 8b
10568ba0: c8 e8 0a 20 1c 00 85 c0 74 1e 8b 0d d0 d6 c8 10
10568bb0: 51 8b c8 e8 e8 e1 1b 00 85 c0 74 0c 8b 54 24 0c
10568bc0: 52 8b c8 e8 28 d1 1c 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10568b90 <.text+0x567b90>:
10568b90:	e8 0b 16 1c 00                                  	call   0x1072a1a0
10568b95:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10568b99:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10568b9d:	51                                              	push   ecx
10568b9e:	52                                              	push   edx
10568b9f:	8b c8                                           	mov    ecx,eax
10568ba1:	e8 0a 20 1c 00                                  	call   0x1072abb0
10568ba6:	85 c0                                           	test   eax,eax
10568ba8:	74 1e                                           	je     0x10568bc8
10568baa:	8b 0d d0 d6 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d6d0
10568bb0:	51                                              	push   ecx
10568bb1:	8b c8                                           	mov    ecx,eax
10568bb3:	e8 e8 e1 1b 00                                  	call   0x10726da0
10568bb8:	85 c0                                           	test   eax,eax
10568bba:	74 0c                                           	je     0x10568bc8
10568bbc:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10568bc0:	52                                              	push   edx
10568bc1:	8b c8                                           	mov    ecx,eax
10568bc3:	e8 28 d1 1c 00                                  	call   0x10735cf0
10568bc8:	c3                                              	ret
10568bc9:	cc                                              	int3
10568bca:	cc                                              	int3
10568bcb:	cc                                              	int3
10568bcc:	cc                                              	int3
10568bcd:	cc                                              	int3
10568bce:	cc                                              	int3
10568bcf:	cc                                              	int3
