# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566ea0 (StopWatch_GetElapsedTimeStopwatch)
Paired Ghidra pseudocode: 10566EA0_StopWatch_GetElapsedTimeStopwatch.c
Window: [0x10566ea0, 0x10566ee0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566ee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566ea0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
10566eb0: 10 75 1e e8 68 42 ff ff 8b 10 8b c8 8b 82 cc 00
10566ec0: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 df fa 3b
10566ed0: 00 33 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566ea0 <.text+0x565ea0>:
10566ea0:	56                                              	push   esi
10566ea1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10566ea5:	8b c6                                           	mov    eax,esi
10566ea7:	25 00 00 00 ff                                  	and    eax,0xff000000
10566eac:	3d 00 00 00 10                                  	cmp    eax,0x10000000
10566eb1:	75 1e                                           	jne    0x10566ed1
10566eb3:	e8 68 42 ff ff                                  	call   0x1055b120
10566eb8:	8b 10                                           	mov    edx,DWORD PTR [eax]
10566eba:	8b c8                                           	mov    ecx,eax
10566ebc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10566ec2:	56                                              	push   esi
10566ec3:	ff d0                                           	call   eax
10566ec5:	85 c0                                           	test   eax,eax
10566ec7:	74 08                                           	je     0x10566ed1
10566ec9:	8b c8                                           	mov    ecx,eax
10566ecb:	5e                                              	pop    esi
10566ecc:	e9 df fa 3b 00                                  	jmp    0x109269b0
10566ed1:	33 c0                                           	xor    eax,eax
10566ed3:	5e                                              	pop    esi
10566ed4:	c3                                              	ret
10566ed5:	cc                                              	int3
10566ed6:	cc                                              	int3
10566ed7:	cc                                              	int3
10566ed8:	cc                                              	int3
10566ed9:	cc                                              	int3
10566eda:	cc                                              	int3
10566edb:	cc                                              	int3
10566edc:	cc                                              	int3
10566edd:	cc                                              	int3
10566ede:	cc                                              	int3
10566edf:	cc                                              	int3
