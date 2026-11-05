# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579830 (World_SetLotFrontDoorImpl)
Paired Ghidra pseudocode: 10579830_World_SetLotFrontDoorImpl.c
Window: [0x10579830, 0x10579870) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579830: e8 ab 0e 0a 00 85 c0 74 0b 8b c8 e8 d0 15 0a 00
10579840: 85 c0 75 03 32 c0 c3 8b 4c 24 14 8b 54 24 10 51
10579850: 8b 4c 24 10 52 8b 54 24 10 51 8b 4c 24 10 52 51
10579860: 8b c8 e8 a9 00 eb ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579830 <.text+0x578830>:
10579830:	e8 ab 0e 0a 00                                  	call   0x1061a6e0
10579835:	85 c0                                           	test   eax,eax
10579837:	74 0b                                           	je     0x10579844
10579839:	8b c8                                           	mov    ecx,eax
1057983b:	e8 d0 15 0a 00                                  	call   0x1061ae10
10579840:	85 c0                                           	test   eax,eax
10579842:	75 03                                           	jne    0x10579847
10579844:	32 c0                                           	xor    al,al
10579846:	c3                                              	ret
10579847:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1057984b:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1057984f:	51                                              	push   ecx
10579850:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10579854:	52                                              	push   edx
10579855:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10579859:	51                                              	push   ecx
1057985a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1057985e:	52                                              	push   edx
1057985f:	51                                              	push   ecx
10579860:	8b c8                                           	mov    ecx,eax
10579862:	e8 a9 00 eb ff                                  	call   0x10429910
10579867:	c3                                              	ret
10579868:	cc                                              	int3
10579869:	cc                                              	int3
1057986a:	cc                                              	int3
1057986b:	cc                                              	int3
1057986c:	cc                                              	int3
1057986d:	cc                                              	int3
1057986e:	cc                                              	int3
1057986f:	cc                                              	int3
