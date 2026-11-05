# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105615f0 (Slots_GetContainedObjectImpl)
Paired Ghidra pseudocode: 105615F0_Slots_GetContainedObjectImpl.c
Window: [0x105615f0, 0x10561610) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10561610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105615f0: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
10561600: 9c fd ff ff 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105615f0 <.text+0x5605f0>:
105615f0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105615f4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105615f8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105615fc:	50                                              	push   eax
105615fd:	51                                              	push   ecx
105615fe:	52                                              	push   edx
105615ff:	e8 9c fd ff ff                                  	call   0x105613a0
10561604:	83 c4 0c                                        	add    esp,0xc
10561607:	c3                                              	ret
10561608:	cc                                              	int3
10561609:	cc                                              	int3
1056160a:	cc                                              	int3
1056160b:	cc                                              	int3
1056160c:	cc                                              	int3
1056160d:	cc                                              	int3
1056160e:	cc                                              	int3
1056160f:	cc                                              	int3
