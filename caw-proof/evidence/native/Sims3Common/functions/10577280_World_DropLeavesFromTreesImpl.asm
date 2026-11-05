# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577280 (World_DropLeavesFromTreesImpl)
Paired Ghidra pseudocode: 10577280_World_DropLeavesFromTreesImpl.c
Window: [0x10577280, 0x105772b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x105772b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577280: 8b 0d c4 00 c7 10 85 c9 74 24 8b 44 24 08 8b 54
10577290: 24 04 6a 00 50 52 e8 75 fd cb ff 85 c0 74 0f d9
105772a0: 44 24 0c 51 8b c8 d9 1c 24 e8 02 e4 b0 ff c3 cc

LINEAR DISASSEMBLY
10577280 <.text+0x576280>:
10577280:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577286:	85 c9                                           	test   ecx,ecx
10577288:	74 24                                           	je     0x105772ae
1057728a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057728e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577292:	6a 00                                           	push   0x0
10577294:	50                                              	push   eax
10577295:	52                                              	push   edx
10577296:	e8 75 fd cb ff                                  	call   0x10237010
1057729b:	85 c0                                           	test   eax,eax
1057729d:	74 0f                                           	je     0x105772ae
1057729f:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
105772a3:	51                                              	push   ecx
105772a4:	8b c8                                           	mov    ecx,eax
105772a6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105772a9:	e8 02 e4 b0 ff                                  	call   0x100856b0
105772ae:	c3                                              	ret
105772af:	cc                                              	int3
