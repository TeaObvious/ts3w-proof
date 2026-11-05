# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055e810 (Simulator_AddObjectImpl)
Paired Ghidra pseudocode: 1055E810_Simulator_AddObjectImpl.c
Window: [0x1055e810, 0x1055e840) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055e840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055e810: e8 0b c9 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
1055e820: d0 8b 4c 24 0c 8b 10 8b 52 14 51 8b 4c 24 0c 51
1055e830: 8b 4c 24 0c 51 8b c8 ff d2 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055e810 <.text+0x55d810>:
1055e810:	e8 0b c9 ff ff                                  	call   0x1055b120
1055e815:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e817:	8b c8                                           	mov    ecx,eax
1055e819:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
1055e81f:	ff d0                                           	call   eax
1055e821:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e825:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055e827:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
1055e82a:	51                                              	push   ecx
1055e82b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e82f:	51                                              	push   ecx
1055e830:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1055e834:	51                                              	push   ecx
1055e835:	8b c8                                           	mov    ecx,eax
1055e837:	ff d2                                           	call   edx
1055e839:	c3                                              	ret
1055e83a:	cc                                              	int3
1055e83b:	cc                                              	int3
1055e83c:	cc                                              	int3
1055e83d:	cc                                              	int3
1055e83e:	cc                                              	int3
1055e83f:	cc                                              	int3
