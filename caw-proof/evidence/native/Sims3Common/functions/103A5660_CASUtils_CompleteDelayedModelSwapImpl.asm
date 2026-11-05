# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a5660 (CASUtils_CompleteDelayedModelSwapImpl)
Paired Ghidra pseudocode: 103A5660_CASUtils_CompleteDelayedModelSwapImpl.c
Window: [0x103a5660, 0x103a5680) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a5680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a5660: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 fb ff ff 83
103a5670: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a5660 <.text+0x3a4660>:
103a5660:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a5664:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a5668:	50                                              	push   eax
103a5669:	51                                              	push   ecx
103a566a:	e8 11 fb ff ff                                  	call   0x103a5180
103a566f:	83 c4 08                                        	add    esp,0x8
103a5672:	c3                                              	ret
103a5673:	cc                                              	int3
103a5674:	cc                                              	int3
103a5675:	cc                                              	int3
103a5676:	cc                                              	int3
103a5677:	cc                                              	int3
103a5678:	cc                                              	int3
103a5679:	cc                                              	int3
103a567a:	cc                                              	int3
103a567b:	cc                                              	int3
103a567c:	cc                                              	int3
103a567d:	cc                                              	int3
103a567e:	cc                                              	int3
103a567f:	cc                                              	int3
