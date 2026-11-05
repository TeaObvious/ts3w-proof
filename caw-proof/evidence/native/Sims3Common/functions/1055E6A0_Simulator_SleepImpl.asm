# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e6a0 (Simulator_SleepImpl)
Paired Ghidra pseudocode: 1055E6A0_Simulator_SleepImpl.c
Window: [0x1055e6a0, 0x1055e6d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e6d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e6a0: 56 8b 74 24 08 81 fe 17 fc ff ff 72 05 be 17 fc
1055e6b0: ff ff e8 69 ca ff ff 8b 10 8b c8 8b 82 7c 01 00
1055e6c0: 00 ff d0 8b 10 8b c8 8b 42 20 56 ff d0 5e c3 cc

LINEAR DISASSEMBLY
1055e6a0 <.text+0x55d6a0>:
1055e6a0:	56                                              	push   esi
1055e6a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1055e6a5:	81 fe 17 fc ff ff                               	cmp    esi,0xfffffc17
1055e6ab:	72 05                                           	jb     0x1055e6b2
1055e6ad:	be 17 fc ff ff                                  	mov    esi,0xfffffc17
1055e6b2:	e8 69 ca ff ff                                  	call   0x1055b120
1055e6b7:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e6b9:	8b c8                                           	mov    ecx,eax
1055e6bb:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055e6c1:	ff d0                                           	call   eax
1055e6c3:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e6c5:	8b c8                                           	mov    ecx,eax
1055e6c7:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
1055e6ca:	56                                              	push   esi
1055e6cb:	ff d0                                           	call   eax
1055e6cd:	5e                                              	pop    esi
1055e6ce:	c3                                              	ret
1055e6cf:	cc                                              	int3
