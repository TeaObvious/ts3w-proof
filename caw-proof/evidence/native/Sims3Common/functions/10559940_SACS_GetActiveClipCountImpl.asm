# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10559940 (SACS_GetActiveClipCountImpl)
Paired Ghidra pseudocode: 10559940_SACS_GetActiveClipCountImpl.c
Window: [0x10559940, 0x10559960) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10559960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10559940: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10559950: 8c fc ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10559940 <.text+0x558940>:
10559940:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10559944:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10559948:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1055994c:	50                                              	push   eax
1055994d:	51                                              	push   ecx
1055994e:	52                                              	push   edx
1055994f:	e8 8c fc ff ff                                  	call   0x105595e0
10559954:	83 c4 0c                                        	add    esp,0xc
10559957:	c3                                              	ret
10559958:	cc                                              	int3
10559959:	cc                                              	int3
1055995a:	cc                                              	int3
1055995b:	cc                                              	int3
1055995c:	cc                                              	int3
1055995d:	cc                                              	int3
1055995e:	cc                                              	int3
1055995f:	cc                                              	int3
