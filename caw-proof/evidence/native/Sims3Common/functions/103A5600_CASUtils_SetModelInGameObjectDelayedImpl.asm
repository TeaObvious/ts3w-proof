# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a5600 (CASUtils_SetModelInGameObjectDelayedImpl)
Paired Ghidra pseudocode: 103A5600_CASUtils_SetModelInGameObjectDelayedImpl.c
Window: [0x103a5600, 0x103a5620) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a5600: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
103a5610: 08 51 52 50 e8 27 f9 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
103a5600 <.text+0x3a4600>:
103a5600:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
103a5604:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
103a5608:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
103a560c:	50                                              	push   eax
103a560d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a5611:	51                                              	push   ecx
103a5612:	52                                              	push   edx
103a5613:	50                                              	push   eax
103a5614:	e8 27 f9 ff ff                                  	call   0x103a4f40
103a5619:	83 c4 10                                        	add    esp,0x10
103a561c:	c3                                              	ret
103a561d:	cc                                              	int3
103a561e:	cc                                              	int3
103a561f:	cc                                              	int3
