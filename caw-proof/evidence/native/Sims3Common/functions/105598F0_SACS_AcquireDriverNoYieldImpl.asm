# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105598f0 (SACS_AcquireDriverNoYieldImpl)
Paired Ghidra pseudocode: 105598F0_SACS_AcquireDriverNoYieldImpl.c
Window: [0x105598f0, 0x10559920) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10559920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105598f0: 8b 44 24 1c 8b 4c 24 18 8b 54 24 14 50 8b 44 24
10559900: 14 51 8b 4c 24 14 52 8b 54 24 14 50 8b 44 24 14
10559910: 51 52 50 e8 18 fb ff ff 83 c4 1c c3 cc cc cc cc

LINEAR DISASSEMBLY
105598f0 <.text+0x5588f0>:
105598f0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
105598f4:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105598f8:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
105598fc:	50                                              	push   eax
105598fd:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10559901:	51                                              	push   ecx
10559902:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10559906:	52                                              	push   edx
10559907:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1055990b:	50                                              	push   eax
1055990c:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10559910:	51                                              	push   ecx
10559911:	52                                              	push   edx
10559912:	50                                              	push   eax
10559913:	e8 18 fb ff ff                                  	call   0x10559430
10559918:	83 c4 1c                                        	add    esp,0x1c
1055991b:	c3                                              	ret
1055991c:	cc                                              	int3
1055991d:	cc                                              	int3
1055991e:	cc                                              	int3
1055991f:	cc                                              	int3
