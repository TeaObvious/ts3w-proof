# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536200 (LookAt_SetAttenuatorPitchImpl)
Paired Ghidra pseudocode: 10536200_LookAt_SetAttenuatorPitchImpl.c
Window: [0x10536200, 0x10536220) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536200: d9 44 24 08 8b 44 24 04 51 d9 1c 24 50 e8 6e fb
10536210: ff ff 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536200 <.text+0x535200>:
10536200:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10536204:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10536208:	51                                              	push   ecx
10536209:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053620c:	50                                              	push   eax
1053620d:	e8 6e fb ff ff                                  	call   0x10535d80
10536212:	83 c4 08                                        	add    esp,0x8
10536215:	c3                                              	ret
10536216:	cc                                              	int3
10536217:	cc                                              	int3
10536218:	cc                                              	int3
10536219:	cc                                              	int3
1053621a:	cc                                              	int3
1053621b:	cc                                              	int3
1053621c:	cc                                              	int3
1053621d:	cc                                              	int3
1053621e:	cc                                              	int3
1053621f:	cc                                              	int3
