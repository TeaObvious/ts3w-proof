# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105360e0 (LookAt_SetLookAwaySpeedImpl)
Paired Ghidra pseudocode: 105360E0_LookAt_SetLookAwaySpeedImpl.c
Window: [0x105360e0, 0x10536100) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105360e0: d9 44 24 08 8b 44 24 04 51 d9 1c 24 50 e8 ae f6
105360f0: ff ff 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105360e0 <.text+0x5350e0>:
105360e0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
105360e4:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105360e8:	51                                              	push   ecx
105360e9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105360ec:	50                                              	push   eax
105360ed:	e8 ae f6 ff ff                                  	call   0x105357a0
105360f2:	83 c4 08                                        	add    esp,0x8
105360f5:	c3                                              	ret
105360f6:	cc                                              	int3
105360f7:	cc                                              	int3
105360f8:	cc                                              	int3
105360f9:	cc                                              	int3
105360fa:	cc                                              	int3
105360fb:	cc                                              	int3
105360fc:	cc                                              	int3
105360fd:	cc                                              	int3
105360fe:	cc                                              	int3
105360ff:	cc                                              	int3
