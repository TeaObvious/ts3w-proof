# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c24e0 (UserToolUtils_GetPresetStringImpl)
Paired Ghidra pseudocode: 102C24E0_UserToolUtils_GetPresetStringImpl.c
Window: [0x102c24e0, 0x102c2500) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c2500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c24e0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
102c24f0: 08 51 52 50 e8 e7 fb ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
102c24e0 <.text+0x2c14e0>:
102c24e0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
102c24e4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
102c24e8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
102c24ec:	50                                              	push   eax
102c24ed:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102c24f1:	51                                              	push   ecx
102c24f2:	52                                              	push   edx
102c24f3:	50                                              	push   eax
102c24f4:	e8 e7 fb ff ff                                  	call   0x102c20e0
102c24f9:	83 c4 10                                        	add    esp,0x10
102c24fc:	c3                                              	ret
102c24fd:	cc                                              	int3
102c24fe:	cc                                              	int3
102c24ff:	cc                                              	int3
