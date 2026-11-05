# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a5680 (CASUtils_AbortDelayedModelSwapImpl)
Paired Ghidra pseudocode: 103A5680_CASUtils_AbortDelayedModelSwapImpl.c
Window: [0x103a5680, 0x103a56a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a56a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a5680: 8b 44 24 08 8b 4c 24 04 50 51 e8 f1 fc ff ff 83
103a5690: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a5680 <.text+0x3a4680>:
103a5680:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a5684:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a5688:	50                                              	push   eax
103a5689:	51                                              	push   ecx
103a568a:	e8 f1 fc ff ff                                  	call   0x103a5380
103a568f:	83 c4 08                                        	add    esp,0x8
103a5692:	c3                                              	ret
103a5693:	cc                                              	int3
103a5694:	cc                                              	int3
103a5695:	cc                                              	int3
103a5696:	cc                                              	int3
103a5697:	cc                                              	int3
103a5698:	cc                                              	int3
103a5699:	cc                                              	int3
103a569a:	cc                                              	int3
103a569b:	cc                                              	int3
103a569c:	cc                                              	int3
103a569d:	cc                                              	int3
103a569e:	cc                                              	int3
103a569f:	cc                                              	int3
