# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577900 (World_DesignModeSwap_ReleaseImpl)
Paired Ghidra pseudocode: 10577900_World_DesignModeSwap_ReleaseImpl.c
Window: [0x10577900, 0x10577930) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577900: e8 5b 0b b8 ff 8b 4c 24 04 8b d1 81 e2 00 00 00
10577910: ff 81 fa 00 00 00 45 75 08 51 8b c8 e8 9f 87 b8
10577920: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577900 <.text+0x576900>:
10577900:	e8 5b 0b b8 ff                                  	call   0x100f8460
10577905:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10577909:	8b d1                                           	mov    edx,ecx
1057790b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
10577911:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
10577917:	75 08                                           	jne    0x10577921
10577919:	51                                              	push   ecx
1057791a:	8b c8                                           	mov    ecx,eax
1057791c:	e8 9f 87 b8 ff                                  	call   0x101000c0
10577921:	c3                                              	ret
10577922:	cc                                              	int3
10577923:	cc                                              	int3
10577924:	cc                                              	int3
10577925:	cc                                              	int3
10577926:	cc                                              	int3
10577927:	cc                                              	int3
10577928:	cc                                              	int3
10577929:	cc                                              	int3
1057792a:	cc                                              	int3
1057792b:	cc                                              	int3
1057792c:	cc                                              	int3
1057792d:	cc                                              	int3
1057792e:	cc                                              	int3
1057792f:	cc                                              	int3
