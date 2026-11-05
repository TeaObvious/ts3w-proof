# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fba0 (UIManager_WinDetachFromCycleImpl)
Paired Ghidra pseudocode: 1056FBA0_UIManager_WinDetachFromCycleImpl.c
Window: [0x1056fba0, 0x1056fbe0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fbe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fba0: e8 7b b5 fe ff 8b 4c 24 04 8b 10 8b 92 cc 00 00
1056fbb0: 00 51 8b c8 ff d2 85 c0 74 20 8b 10 8b c8 8b 42
1056fbc0: 0c 68 18 82 ee ee ff d0 85 c0 74 0e 8b 10 8b c8
1056fbd0: 8b 82 88 00 00 00 6a 00 ff d0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1056fba0 <.text+0x56eba0>:
1056fba0:	e8 7b b5 fe ff                                  	call   0x1055b120
1056fba5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056fba9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056fbab:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
1056fbb1:	51                                              	push   ecx
1056fbb2:	8b c8                                           	mov    ecx,eax
1056fbb4:	ff d2                                           	call   edx
1056fbb6:	85 c0                                           	test   eax,eax
1056fbb8:	74 20                                           	je     0x1056fbda
1056fbba:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056fbbc:	8b c8                                           	mov    ecx,eax
1056fbbe:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1056fbc1:	68 18 82 ee ee                                  	push   0xeeee8218
1056fbc6:	ff d0                                           	call   eax
1056fbc8:	85 c0                                           	test   eax,eax
1056fbca:	74 0e                                           	je     0x1056fbda
1056fbcc:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056fbce:	8b c8                                           	mov    ecx,eax
1056fbd0:	8b 82 88 00 00 00                               	mov    eax,DWORD PTR [edx+0x88]
1056fbd6:	6a 00                                           	push   0x0
1056fbd8:	ff d0                                           	call   eax
1056fbda:	c3                                              	ret
1056fbdb:	cc                                              	int3
1056fbdc:	cc                                              	int3
1056fbdd:	cc                                              	int3
1056fbde:	cc                                              	int3
1056fbdf:	cc                                              	int3
