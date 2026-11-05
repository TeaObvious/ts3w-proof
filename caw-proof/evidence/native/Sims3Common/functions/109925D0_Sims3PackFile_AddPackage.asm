# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109925d0 (Sims3PackFile_AddPackage)
Paired Ghidra pseudocode: 109925D0_Sims3PackFile_AddPackage.c
Window: [0x109925d0, 0x109925f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109925f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109925d0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 6a 00 50 51
109925e0: 8b 4c 24 10 52 e8 16 83 e2 ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
109925d0 <.text+0x9915d0>:
109925d0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
109925d4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
109925d8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
109925dc:	6a 00                                           	push   0x0
109925de:	50                                              	push   eax
109925df:	51                                              	push   ecx
109925e0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109925e4:	52                                              	push   edx
109925e5:	e8 16 83 e2 ff                                  	call   0x107ba900
109925ea:	c3                                              	ret
109925eb:	cc                                              	int3
109925ec:	cc                                              	int3
109925ed:	cc                                              	int3
109925ee:	cc                                              	int3
109925ef:	cc                                              	int3
