# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055af30 (SACS_DestroyClipInfoHandleImpl)
Paired Ghidra pseudocode: 1055AF30_SACS_DestroyClipInfoHandleImpl.c
Window: [0x1055af30, 0x1055af70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055af70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055af30: 56 8b 74 24 08 85 f6 74 18 8b 06 85 c0 74 09 50
1055af40: e8 4b df 3b 00 83 c4 04 56 e8 42 df 3b 00 83 c4
1055af50: 04 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
1055af60: 8b 44 24 04 c7 00 20 fc c2 10 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
1055af30 <.text+0x559f30>:
1055af30:	56                                              	push   esi
1055af31:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1055af35:	85 f6                                           	test   esi,esi
1055af37:	74 18                                           	je     0x1055af51
1055af39:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055af3b:	85 c0                                           	test   eax,eax
1055af3d:	74 09                                           	je     0x1055af48
1055af3f:	50                                              	push   eax
1055af40:	e8 4b df 3b 00                                  	call   0x10918e90
1055af45:	83 c4 04                                        	add    esp,0x4
1055af48:	56                                              	push   esi
1055af49:	e8 42 df 3b 00                                  	call   0x10918e90
1055af4e:	83 c4 04                                        	add    esp,0x4
1055af51:	5e                                              	pop    esi
1055af52:	c3                                              	ret
1055af53:	cc                                              	int3
1055af54:	cc                                              	int3
1055af55:	cc                                              	int3
1055af56:	cc                                              	int3
1055af57:	cc                                              	int3
1055af58:	cc                                              	int3
1055af59:	cc                                              	int3
1055af5a:	cc                                              	int3
1055af5b:	cc                                              	int3
1055af5c:	cc                                              	int3
1055af5d:	cc                                              	int3
1055af5e:	cc                                              	int3
1055af5f:	cc                                              	int3
1055af60:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1055af64:	c7 00 20 fc c2 10                               	mov    DWORD PTR [eax],0x10c2fc20
1055af6a:	c2 04 00                                        	ret    0x4
1055af6d:	cc                                              	int3
1055af6e:	cc                                              	int3
1055af6f:	cc                                              	int3
