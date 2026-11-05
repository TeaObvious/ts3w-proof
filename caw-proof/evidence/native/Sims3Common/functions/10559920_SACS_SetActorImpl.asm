# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10559920 (SACS_SetActorImpl)
Paired Ghidra pseudocode: 10559920_SACS_SetActorImpl.c
Window: [0x10559920, 0x10559940) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10559940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10559920: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10559930: 08 51 52 50 e8 07 fc ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10559920 <.text+0x558920>:
10559920:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10559924:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10559928:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1055992c:	50                                              	push   eax
1055992d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10559931:	51                                              	push   ecx
10559932:	52                                              	push   edx
10559933:	50                                              	push   eax
10559934:	e8 07 fc ff ff                                  	call   0x10559540
10559939:	83 c4 10                                        	add    esp,0x10
1055993c:	c3                                              	ret
1055993d:	cc                                              	int3
1055993e:	cc                                              	int3
1055993f:	cc                                              	int3
