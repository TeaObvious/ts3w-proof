# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c1140 (UserToolUtils_ModifyCollectionInfoImpl)
Paired Ghidra pseudocode: 102C1140_UserToolUtils_ModifyCollectionInfoImpl.c
Window: [0x102c1140, 0x102c1180) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c1180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c1140: 8b 44 24 20 8b 4c 24 1c 8b 54 24 18 50 8b 44 24
102c1150: 18 51 8b 4c 24 18 52 8b 54 24 18 50 8b 44 24 18
102c1160: 51 8b 4c 24 18 52 50 51 e8 a3 f8 ff ff 0f b6 c0
102c1170: 83 c4 20 99 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c1140 <.text+0x2c0140>:
102c1140:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
102c1144:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
102c1148:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
102c114c:	50                                              	push   eax
102c114d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
102c1151:	51                                              	push   ecx
102c1152:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
102c1156:	52                                              	push   edx
102c1157:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
102c115b:	50                                              	push   eax
102c115c:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
102c1160:	51                                              	push   ecx
102c1161:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
102c1165:	52                                              	push   edx
102c1166:	50                                              	push   eax
102c1167:	51                                              	push   ecx
102c1168:	e8 a3 f8 ff ff                                  	call   0x102c0a10
102c116d:	0f b6 c0                                        	movzx  eax,al
102c1170:	83 c4 20                                        	add    esp,0x20
102c1173:	99                                              	cdq
102c1174:	c3                                              	ret
102c1175:	cc                                              	int3
102c1176:	cc                                              	int3
102c1177:	cc                                              	int3
102c1178:	cc                                              	int3
102c1179:	cc                                              	int3
102c117a:	cc                                              	int3
102c117b:	cc                                              	int3
102c117c:	cc                                              	int3
102c117d:	cc                                              	int3
102c117e:	cc                                              	int3
102c117f:	cc                                              	int3
