# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e8f0 (Simulator_EnableYieldAnalysis)
Paired Ghidra pseudocode: 1055E8F0_Simulator_EnableYieldAnalysis.c
Window: [0x1055e8f0, 0x1055e910) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e8f0: e8 2b c8 ff ff 8b 4c 24 0c 8b 54 24 08 51 8b 4c
1055e900: 24 08 52 51 8b c8 e8 85 cd ff ff c3 cc cc cc cc

LINEAR DISASSEMBLY
1055e8f0 <.text+0x55d8f0>:
1055e8f0:	e8 2b c8 ff ff                                  	call   0x1055b120
1055e8f5:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e8f9:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1055e8fd:	51                                              	push   ecx
1055e8fe:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055e902:	52                                              	push   edx
1055e903:	51                                              	push   ecx
1055e904:	8b c8                                           	mov    ecx,eax
1055e906:	e8 85 cd ff ff                                  	call   0x1055b690
1055e90b:	c3                                              	ret
1055e90c:	cc                                              	int3
1055e90d:	cc                                              	int3
1055e90e:	cc                                              	int3
1055e90f:	cc                                              	int3
