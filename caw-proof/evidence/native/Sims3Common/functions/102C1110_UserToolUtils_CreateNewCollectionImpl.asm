# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c1110 (UserToolUtils_CreateNewCollectionImpl)
Paired Ghidra pseudocode: 102C1110_UserToolUtils_CreateNewCollectionImpl.c
Window: [0x102c1110, 0x102c1140) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c1140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c1110: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
102c1120: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 ed
102c1130: f7 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c1110 <.text+0x2c0110>:
102c1110:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
102c1114:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
102c1118:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
102c111c:	50                                              	push   eax
102c111d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
102c1121:	51                                              	push   ecx
102c1122:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
102c1126:	52                                              	push   edx
102c1127:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
102c112b:	50                                              	push   eax
102c112c:	51                                              	push   ecx
102c112d:	52                                              	push   edx
102c112e:	e8 ed f7 ff ff                                  	call   0x102c0920
102c1133:	83 c4 18                                        	add    esp,0x18
102c1136:	c3                                              	ret
102c1137:	cc                                              	int3
102c1138:	cc                                              	int3
102c1139:	cc                                              	int3
102c113a:	cc                                              	int3
102c113b:	cc                                              	int3
102c113c:	cc                                              	int3
102c113d:	cc                                              	int3
102c113e:	cc                                              	int3
102c113f:	cc                                              	int3
