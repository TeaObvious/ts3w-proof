# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cdc0 (SacsWrap_StateMachineDriver_Request)
Paired Ghidra pseudocode: 1098CDC0_SacsWrap_StateMachineDriver_Request.c
Window: [0x1098cdc0, 0x1098cdf0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cdf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cdc0: 8b 4c 24 04 85 c9 74 1c 8b 44 24 0c 85 c0 74 14
1098cdd0: 8b 54 24 10 6a 00 6a 00 52 50 8b 44 24 18 50 e8
1098cde0: 1c 94 c6 ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cdc0 <.text+0x98bdc0>:
1098cdc0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cdc4:	85 c9                                           	test   ecx,ecx
1098cdc6:	74 1c                                           	je     0x1098cde4
1098cdc8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098cdcc:	85 c0                                           	test   eax,eax
1098cdce:	74 14                                           	je     0x1098cde4
1098cdd0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1098cdd4:	6a 00                                           	push   0x0
1098cdd6:	6a 00                                           	push   0x0
1098cdd8:	52                                              	push   edx
1098cdd9:	50                                              	push   eax
1098cdda:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1098cdde:	50                                              	push   eax
1098cddf:	e8 1c 94 c6 ff                                  	call   0x105f6200
1098cde4:	c3                                              	ret
1098cde5:	cc                                              	int3
1098cde6:	cc                                              	int3
1098cde7:	cc                                              	int3
1098cde8:	cc                                              	int3
1098cde9:	cc                                              	int3
1098cdea:	cc                                              	int3
1098cdeb:	cc                                              	int3
1098cdec:	cc                                              	int3
1098cded:	cc                                              	int3
1098cdee:	cc                                              	int3
1098cdef:	cc                                              	int3
