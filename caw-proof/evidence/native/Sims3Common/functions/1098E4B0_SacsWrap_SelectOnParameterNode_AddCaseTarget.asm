# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e4b0 (SacsWrap_SelectOnParameterNode_AddCaseTarget)
Paired Ghidra pseudocode: 1098E4B0_SacsWrap_SelectOnParameterNode_AddCaseTarget.c
Window: [0x1098e4b0, 0x1098e4e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e4e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e4b0: 56 8b 74 24 08 85 f6 74 22 8b 4c 24 0c 85 c9 74
1098e4c0: 1a 8b 44 24 10 85 c0 74 12 50 51 e8 20 03 c6 ff
1098e4d0: 83 c4 04 50 8b ce e8 c5 2e c6 ff 5e c3 cc cc cc

LINEAR DISASSEMBLY
1098e4b0 <.text+0x98d4b0>:
1098e4b0:	56                                              	push   esi
1098e4b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1098e4b5:	85 f6                                           	test   esi,esi
1098e4b7:	74 22                                           	je     0x1098e4db
1098e4b9:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098e4bd:	85 c9                                           	test   ecx,ecx
1098e4bf:	74 1a                                           	je     0x1098e4db
1098e4c1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098e4c5:	85 c0                                           	test   eax,eax
1098e4c7:	74 12                                           	je     0x1098e4db
1098e4c9:	50                                              	push   eax
1098e4ca:	51                                              	push   ecx
1098e4cb:	e8 20 03 c6 ff                                  	call   0x105ee7f0
1098e4d0:	83 c4 04                                        	add    esp,0x4
1098e4d3:	50                                              	push   eax
1098e4d4:	8b ce                                           	mov    ecx,esi
1098e4d6:	e8 c5 2e c6 ff                                  	call   0x105f13a0
1098e4db:	5e                                              	pop    esi
1098e4dc:	c3                                              	ret
1098e4dd:	cc                                              	int3
1098e4de:	cc                                              	int3
1098e4df:	cc                                              	int3
