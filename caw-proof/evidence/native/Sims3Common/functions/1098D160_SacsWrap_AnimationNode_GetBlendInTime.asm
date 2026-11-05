# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d160 (SacsWrap_AnimationNode_GetBlendInTime)
Paired Ghidra pseudocode: 1098D160_SacsWrap_AnimationNode_GetBlendInTime.c
Window: [0x1098d160, 0x1098d190) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d160: 8b 4c 24 04 83 ec 10 85 c9 74 11 8d 04 24 50 e8
1098d170: 1c 9b c5 ff d9 44 24 04 83 c4 10 c3 d9 ee 83 c4
1098d180: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d160 <.text+0x98c160>:
1098d160:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d164:	83 ec 10                                        	sub    esp,0x10
1098d167:	85 c9                                           	test   ecx,ecx
1098d169:	74 11                                           	je     0x1098d17c
1098d16b:	8d 04 24                                        	lea    eax,[esp]
1098d16e:	50                                              	push   eax
1098d16f:	e8 1c 9b c5 ff                                  	call   0x105e6c90
1098d174:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
1098d178:	83 c4 10                                        	add    esp,0x10
1098d17b:	c3                                              	ret
1098d17c:	d9 ee                                           	fldz
1098d17e:	83 c4 10                                        	add    esp,0x10
1098d181:	c3                                              	ret
1098d182:	cc                                              	int3
1098d183:	cc                                              	int3
1098d184:	cc                                              	int3
1098d185:	cc                                              	int3
1098d186:	cc                                              	int3
1098d187:	cc                                              	int3
1098d188:	cc                                              	int3
1098d189:	cc                                              	int3
1098d18a:	cc                                              	int3
1098d18b:	cc                                              	int3
1098d18c:	cc                                              	int3
1098d18d:	cc                                              	int3
1098d18e:	cc                                              	int3
1098d18f:	cc                                              	int3
