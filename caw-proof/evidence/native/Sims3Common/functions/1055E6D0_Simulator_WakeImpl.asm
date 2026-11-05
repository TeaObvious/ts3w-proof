# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e6d0 (Simulator_WakeImpl)
Paired Ghidra pseudocode: 1055E6D0_Simulator_WakeImpl.c
Window: [0x1055e6d0, 0x1055e700) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e6d0: e8 4b ca ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
1055e6e0: d0 8b 4c 24 0c 8b 10 8b 52 24 51 8b 4c 24 0c 51
1055e6f0: 8b 4c 24 0c 51 8b c8 ff d2 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055e6d0 <.text+0x55d6d0>:
1055e6d0:	e8 4b ca ff ff                                  	call   0x1055b120
1055e6d5:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e6d7:	8b c8                                           	mov    ecx,eax
1055e6d9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055e6df:	ff d0                                           	call   eax
1055e6e1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e6e5:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e6e7:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
1055e6ea:	51                                              	push   ecx
1055e6eb:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e6ef:	51                                              	push   ecx
1055e6f0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e6f4:	51                                              	push   ecx
1055e6f5:	8b c8                                           	mov    ecx,eax
1055e6f7:	ff d2                                           	call   edx
1055e6f9:	c3                                              	ret
1055e6fa:	cc                                              	int3
1055e6fb:	cc                                              	int3
1055e6fc:	cc                                              	int3
1055e6fd:	cc                                              	int3
1055e6fe:	cc                                              	int3
1055e6ff:	cc                                              	int3
