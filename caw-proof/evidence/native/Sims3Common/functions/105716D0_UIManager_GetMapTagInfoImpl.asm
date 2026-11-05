# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105716d0 (UIManager_GetMapTagInfoImpl)
Paired Ghidra pseudocode: 105716D0_UIManager_GetMapTagInfoImpl.c
Window: [0x105716d0, 0x105716f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105716f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105716d0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
105716e0: 08 51 52 50 e8 27 f4 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
105716d0 <.text+0x5706d0>:
105716d0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105716d4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105716d8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105716dc:	50                                              	push   eax
105716dd:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105716e1:	51                                              	push   ecx
105716e2:	52                                              	push   edx
105716e3:	50                                              	push   eax
105716e4:	e8 27 f4 ff ff                                  	call   0x10570b10
105716e9:	83 c4 10                                        	add    esp,0x10
105716ec:	c3                                              	ret
105716ed:	cc                                              	int3
105716ee:	cc                                              	int3
105716ef:	cc                                              	int3
