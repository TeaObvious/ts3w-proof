# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e880 (Simulator_GetUsedBytesImpl)
Paired Ghidra pseudocode: 1055E880_Simulator_GetUsedBytesImpl.c
Window: [0x1055e880, 0x1055e8a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e8a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e880: e8 9b c8 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
1055e890: d0 8b 10 8b c8 8b 42 30 ff e0 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055e880 <.text+0x55d880>:
1055e880:	e8 9b c8 ff ff                                  	call   0x1055b120
1055e885:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e887:	8b c8                                           	mov    ecx,eax
1055e889:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055e88f:	ff d0                                           	call   eax
1055e891:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e893:	8b c8                                           	mov    ecx,eax
1055e895:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
1055e898:	ff e0                                           	jmp    eax
1055e89a:	cc                                              	int3
1055e89b:	cc                                              	int3
1055e89c:	cc                                              	int3
1055e89d:	cc                                              	int3
1055e89e:	cc                                              	int3
1055e89f:	cc                                              	int3
