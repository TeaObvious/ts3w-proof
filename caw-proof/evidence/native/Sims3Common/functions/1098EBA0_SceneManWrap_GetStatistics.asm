# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098eba0 (SceneManWrap_GetStatistics)
Paired Ghidra pseudocode: 1098EBA0_SceneManWrap_GetStatistics.c
Window: [0x1098eba0, 0x1098ebe0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ebe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098eba0: 8b 44 24 04 85 c0 74 1e 8b 90 c8 04 00 00 8b 4c
1098ebb0: 24 08 89 11 8b 90 d0 04 00 00 89 51 08 8b 80 cc
1098ebc0: 04 00 00 89 41 04 c3 cc cc cc cc cc cc cc cc cc
1098ebd0: 8b 44 24 04 8b 48 08 89 0d 90 80 cb 10 c3 cc cc

LINEAR DISASSEMBLY
1098eba0 <.text+0x98dba0>:
1098eba0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098eba4:	85 c0                                           	test   eax,eax
1098eba6:	74 1e                                           	je     0x1098ebc6
1098eba8:	8b 90 c8 04 00 00                               	mov    edx,DWORD PTR [eax+0x4c8]
1098ebae:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098ebb2:	89 11                                           	mov    DWORD PTR [ecx],edx
1098ebb4:	8b 90 d0 04 00 00                               	mov    edx,DWORD PTR [eax+0x4d0]
1098ebba:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1098ebbd:	8b 80 cc 04 00 00                               	mov    eax,DWORD PTR [eax+0x4cc]
1098ebc3:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
1098ebc6:	c3                                              	ret
1098ebc7:	cc                                              	int3
1098ebc8:	cc                                              	int3
1098ebc9:	cc                                              	int3
1098ebca:	cc                                              	int3
1098ebcb:	cc                                              	int3
1098ebcc:	cc                                              	int3
1098ebcd:	cc                                              	int3
1098ebce:	cc                                              	int3
1098ebcf:	cc                                              	int3
1098ebd0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098ebd4:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1098ebd7:	89 0d 90 80 cb 10                               	mov    DWORD PTR ds:0x10cb8090,ecx
1098ebdd:	c3                                              	ret
1098ebde:	cc                                              	int3
1098ebdf:	cc                                              	int3
