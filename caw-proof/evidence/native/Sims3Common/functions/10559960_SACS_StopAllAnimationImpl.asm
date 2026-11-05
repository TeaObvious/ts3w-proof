# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10559960 (SACS_StopAllAnimationImpl)
Paired Ghidra pseudocode: 10559960_SACS_StopAllAnimationImpl.c
Window: [0x10559960, 0x10559980) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10559980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10559960: 8b 44 24 08 8b 4c 24 04 50 51 e8 41 fe ff ff 83
10559970: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10559960 <.text+0x558960>:
10559960:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10559964:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10559968:	50                                              	push   eax
10559969:	51                                              	push   ecx
1055996a:	e8 41 fe ff ff                                  	call   0x105597b0
1055996f:	83 c4 08                                        	add    esp,0x8
10559972:	c3                                              	ret
10559973:	cc                                              	int3
10559974:	cc                                              	int3
10559975:	cc                                              	int3
10559976:	cc                                              	int3
10559977:	cc                                              	int3
10559978:	cc                                              	int3
10559979:	cc                                              	int3
1055997a:	cc                                              	int3
1055997b:	cc                                              	int3
1055997c:	cc                                              	int3
1055997d:	cc                                              	int3
1055997e:	cc                                              	int3
1055997f:	cc                                              	int3
