# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e600 (Simulator_GetTaskImpl)
Paired Ghidra pseudocode: 1055E600_Simulator_GetTaskImpl.c
Window: [0x1055e600, 0x1055e630) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e600: e8 1b cb ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
1055e610: d0 8b 4c 24 0c 8b 10 8b 52 18 51 8b 4c 24 0c 51
1055e620: 8b 4c 24 0c 51 8b c8 ff d2 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055e600 <.text+0x55d600>:
1055e600:	e8 1b cb ff ff                                  	call   0x1055b120
1055e605:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e607:	8b c8                                           	mov    ecx,eax
1055e609:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055e60f:	ff d0                                           	call   eax
1055e611:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e615:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e617:	8b 52 18                                        	mov    edx,DWORD PTR [edx+0x18]
1055e61a:	51                                              	push   ecx
1055e61b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e61f:	51                                              	push   ecx
1055e620:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e624:	51                                              	push   ecx
1055e625:	8b c8                                           	mov    ecx,eax
1055e627:	ff d2                                           	call   edx
1055e629:	c3                                              	ret
1055e62a:	cc                                              	int3
1055e62b:	cc                                              	int3
1055e62c:	cc                                              	int3
1055e62d:	cc                                              	int3
1055e62e:	cc                                              	int3
1055e62f:	cc                                              	int3
