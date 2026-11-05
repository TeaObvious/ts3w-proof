# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109925f0 (Sims3PackFile_AddPackageWithCryptoHint)
Paired Ghidra pseudocode: 109925F0_Sims3PackFile_AddPackageWithCryptoHint.c
Window: [0x109925f0, 0x10992610) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10992610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109925f0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 6a 00 50 8b
10992600: 44 24 10 51 8b 4c 24 10 52 50 e8 41 75 e2 ff c3

LINEAR DISASSEMBLY
109925f0 <.text+0x9915f0>:
109925f0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
109925f4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109925f8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
109925fc:	6a 00                                           	push   0x0
109925fe:	50                                              	push   eax
109925ff:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10992603:	51                                              	push   ecx
10992604:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10992608:	52                                              	push   edx
10992609:	50                                              	push   eax
1099260a:	e8 41 75 e2 ff                                  	call   0x107b9b50
1099260f:	c3                                              	ret
