# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561510 (Slots_EnableSlotImpl)
Paired Ghidra pseudocode: 10561510_Slots_EnableSlotImpl.c
Window: [0x10561510, 0x10561530) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561510: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10561520: 08 51 52 50 e8 b7 f5 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10561510 <.text+0x560510>:
10561510:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10561514:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10561518:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056151c:	50                                              	push   eax
1056151d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10561521:	51                                              	push   ecx
10561522:	52                                              	push   edx
10561523:	50                                              	push   eax
10561524:	e8 b7 f5 ff ff                                  	call   0x10560ae0
10561529:	83 c4 10                                        	add    esp,0x10
1056152c:	c3                                              	ret
1056152d:	cc                                              	int3
1056152e:	cc                                              	int3
1056152f:	cc                                              	int3
