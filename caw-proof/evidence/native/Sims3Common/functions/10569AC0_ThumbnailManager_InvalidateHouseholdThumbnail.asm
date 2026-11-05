# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569ac0 (ThumbnailManager_InvalidateHouseholdThumbnail)
Paired Ghidra pseudocode: 10569AC0_ThumbnailManager_InvalidateHouseholdThumbnail.c
Window: [0x10569ac0, 0x10569af0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569ac0: 8b 0d 50 11 c7 10 85 c9 74 1e 8b 44 24 14 8b 54
10569ad0: 24 10 50 8b 44 24 10 52 8b 54 24 10 50 8b 44 24
10569ae0: 10 52 50 e8 e8 fe dc ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569ac0 <.text+0x568ac0>:
10569ac0:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569ac6:	85 c9                                           	test   ecx,ecx
10569ac8:	74 1e                                           	je     0x10569ae8
10569aca:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10569ace:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10569ad2:	50                                              	push   eax
10569ad3:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10569ad7:	52                                              	push   edx
10569ad8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10569adc:	50                                              	push   eax
10569add:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10569ae1:	52                                              	push   edx
10569ae2:	50                                              	push   eax
10569ae3:	e8 e8 fe dc ff                                  	call   0x103399d0
10569ae8:	c3                                              	ret
10569ae9:	cc                                              	int3
10569aea:	cc                                              	int3
10569aeb:	cc                                              	int3
10569aec:	cc                                              	int3
10569aed:	cc                                              	int3
10569aee:	cc                                              	int3
10569aef:	cc                                              	int3
