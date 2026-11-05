# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e8d0 (Simulator_SetYieldingDisabledImpl)
Paired Ghidra pseudocode: 1055E8D0_Simulator_SetYieldingDisabledImpl.c
Window: [0x1055e8d0, 0x1055e8f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e8f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e8d0: e8 4b c8 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
1055e8e0: d0 8b 4c 24 04 8b 10 8b 52 10 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
1055e8d0 <.text+0x55d8d0>:
1055e8d0:	e8 4b c8 ff ff                                  	call   0x1055b120
1055e8d5:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e8d7:	8b c8                                           	mov    ecx,eax
1055e8d9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055e8df:	ff d0                                           	call   eax
1055e8e1:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1055e8e5:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e8e7:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
1055e8ea:	51                                              	push   ecx
1055e8eb:	8b c8                                           	mov    ecx,eax
1055e8ed:	ff d2                                           	call   edx
1055e8ef:	c3                                              	ret
