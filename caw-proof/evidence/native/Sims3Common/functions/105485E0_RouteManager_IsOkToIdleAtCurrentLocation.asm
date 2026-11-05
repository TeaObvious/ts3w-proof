# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105485e0 (RouteManager_IsOkToIdleAtCurrentLocation)
Paired Ghidra pseudocode: 105485E0_RouteManager_IsOkToIdleAtCurrentLocation.c
Window: [0x105485e0, 0x10548610) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105485e0: 8b 44 24 14 d9 44 24 10 8b 54 24 08 50 8b 44 24
105485f0: 08 51 8b 4c 24 14 d9 1c 24 51 52 50 e8 2f e4 ff
10548600: ff 83 c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105485e0 <.text+0x5475e0>:
105485e0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
105485e4:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
105485e8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
105485ec:	50                                              	push   eax
105485ed:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105485f1:	51                                              	push   ecx
105485f2:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105485f6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105485f9:	51                                              	push   ecx
105485fa:	52                                              	push   edx
105485fb:	50                                              	push   eax
105485fc:	e8 2f e4 ff ff                                  	call   0x10546a30
10548601:	83 c4 14                                        	add    esp,0x14
10548604:	c3                                              	ret
10548605:	cc                                              	int3
10548606:	cc                                              	int3
10548607:	cc                                              	int3
10548608:	cc                                              	int3
10548609:	cc                                              	int3
1054860a:	cc                                              	int3
1054860b:	cc                                              	int3
1054860c:	cc                                              	int3
1054860d:	cc                                              	int3
1054860e:	cc                                              	int3
1054860f:	cc                                              	int3
