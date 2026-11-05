# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10559980 (SACS_SetClipInterruptibleImpl)
Paired Ghidra pseudocode: 10559980_SACS_SetClipInterruptibleImpl.c
Window: [0x10559980, 0x105599a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105599a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10559980: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10559990: 08 51 52 50 e8 d7 fe ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10559980 <.text+0x558980>:
10559980:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10559984:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10559988:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1055998c:	50                                              	push   eax
1055998d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10559991:	51                                              	push   ecx
10559992:	52                                              	push   edx
10559993:	50                                              	push   eax
10559994:	e8 d7 fe ff ff                                  	call   0x10559870
10559999:	83 c4 10                                        	add    esp,0x10
1055999c:	c3                                              	ret
1055999d:	cc                                              	int3
1055999e:	cc                                              	int3
1055999f:	cc                                              	int3
