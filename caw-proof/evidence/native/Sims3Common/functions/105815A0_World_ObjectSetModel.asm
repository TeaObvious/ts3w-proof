# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105815a0 (World_ObjectSetModel)
Paired Ghidra pseudocode: 105815A0_World_ObjectSetModel.c
Window: [0x105815a0, 0x105815c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105815c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105815a0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
105815b0: 08 51 52 50 e8 17 d6 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
105815a0 <.text+0x5805a0>:
105815a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105815a4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105815a8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105815ac:	50                                              	push   eax
105815ad:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105815b1:	51                                              	push   ecx
105815b2:	52                                              	push   edx
105815b3:	50                                              	push   eax
105815b4:	e8 17 d6 ff ff                                  	call   0x1057ebd0
105815b9:	83 c4 10                                        	add    esp,0x10
105815bc:	c3                                              	ret
105815bd:	cc                                              	int3
105815be:	cc                                              	int3
105815bf:	cc                                              	int3
