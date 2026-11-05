# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105782a0 (World_LotClusterTreesImpl)
Paired Ghidra pseudocode: 105782A0_World_LotClusterTreesImpl.c
Window: [0x105782a0, 0x105782e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105782e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105782a0: 8b 0d c4 00 c7 10 85 c9 74 31 8b 44 24 08 8b 54
105782b0: 24 04 6a 00 50 52 e8 55 ed cb ff 8b c8 85 c9 74
105782c0: 1a 80 7c 24 0c 00 6a 00 74 0c 6a 00 6a 01 6a 01
105782d0: e8 eb a9 cc ff c3 e8 45 ec cc ff c3 cc cc cc cc

LINEAR DISASSEMBLY
105782a0 <.text+0x5772a0>:
105782a0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
105782a6:	85 c9                                           	test   ecx,ecx
105782a8:	74 31                                           	je     0x105782db
105782aa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105782ae:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105782b2:	6a 00                                           	push   0x0
105782b4:	50                                              	push   eax
105782b5:	52                                              	push   edx
105782b6:	e8 55 ed cb ff                                  	call   0x10237010
105782bb:	8b c8                                           	mov    ecx,eax
105782bd:	85 c9                                           	test   ecx,ecx
105782bf:	74 1a                                           	je     0x105782db
105782c1:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
105782c6:	6a 00                                           	push   0x0
105782c8:	74 0c                                           	je     0x105782d6
105782ca:	6a 00                                           	push   0x0
105782cc:	6a 01                                           	push   0x1
105782ce:	6a 01                                           	push   0x1
105782d0:	e8 eb a9 cc ff                                  	call   0x10242cc0
105782d5:	c3                                              	ret
105782d6:	e8 45 ec cc ff                                  	call   0x10246f20
105782db:	c3                                              	ret
105782dc:	cc                                              	int3
105782dd:	cc                                              	int3
105782de:	cc                                              	int3
105782df:	cc                                              	int3
