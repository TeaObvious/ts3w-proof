# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e8a0 (Simulator_IsInitDoneImpl)
Paired Ghidra pseudocode: 1055E8A0_Simulator_IsInitDoneImpl.c
Window: [0x1055e8a0, 0x1055e8d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e8d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e8a0: e8 7b c8 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
1055e8b0: d0 8b 4c 24 08 8b 10 8b 52 08 51 8b 4c 24 08 51
1055e8c0: 8b c8 ff d2 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055e8a0 <.text+0x55d8a0>:
1055e8a0:	e8 7b c8 ff ff                                  	call   0x1055b120
1055e8a5:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e8a7:	8b c8                                           	mov    ecx,eax
1055e8a9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055e8af:	ff d0                                           	call   eax
1055e8b1:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055e8b5:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e8b7:	8b 52 08                                        	mov    edx,DWORD PTR [edx+0x8]
1055e8ba:	51                                              	push   ecx
1055e8bb:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055e8bf:	51                                              	push   ecx
1055e8c0:	8b c8                                           	mov    ecx,eax
1055e8c2:	ff d2                                           	call   edx
1055e8c4:	c3                                              	ret
1055e8c5:	cc                                              	int3
1055e8c6:	cc                                              	int3
1055e8c7:	cc                                              	int3
1055e8c8:	cc                                              	int3
1055e8c9:	cc                                              	int3
1055e8ca:	cc                                              	int3
1055e8cb:	cc                                              	int3
1055e8cc:	cc                                              	int3
1055e8cd:	cc                                              	int3
1055e8ce:	cc                                              	int3
1055e8cf:	cc                                              	int3
