# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536040 (LookAt_GetTargetOffsetVectorImpl)
Paired Ghidra pseudocode: 10536040_LookAt_GetTargetOffsetVectorImpl.c
Window: [0x10536040, 0x10536070) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536040: 8b 44 24 08 83 ec 0c 50 8d 4c 24 04 51 e8 7e f4
10536050: ff ff 8b 10 8b 4c 24 18 89 11 8b 50 04 8b 40 08
10536060: 89 51 04 89 41 08 8b c1 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
10536040 <.text+0x535040>:
10536040:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10536044:	83 ec 0c                                        	sub    esp,0xc
10536047:	50                                              	push   eax
10536048:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1053604c:	51                                              	push   ecx
1053604d:	e8 7e f4 ff ff                                  	call   0x105354d0
10536052:	8b 10                                           	mov    edx,DWORD PTR [eax]
10536054:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10536058:	89 11                                           	mov    DWORD PTR [ecx],edx
1053605a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1053605d:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
10536060:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10536063:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
10536066:	8b c1                                           	mov    eax,ecx
10536068:	83 c4 14                                        	add    esp,0x14
1053606b:	c3                                              	ret
1053606c:	cc                                              	int3
1053606d:	cc                                              	int3
1053606e:	cc                                              	int3
1053606f:	cc                                              	int3
