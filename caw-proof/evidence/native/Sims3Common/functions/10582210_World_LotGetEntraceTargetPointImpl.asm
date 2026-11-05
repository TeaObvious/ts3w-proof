# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10582210 (World_LotGetEntraceTargetPointImpl)
Paired Ghidra pseudocode: 10582210_World_LotGetEntraceTargetPointImpl.c
Window: [0x10582210, 0x10582250) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10582250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10582210: 8b 44 24 0c 8b 4c 24 08 83 ec 0c 50 51 8d 54 24
10582220: 08 52 e8 39 e3 ff ff 8b 10 8b 4c 24 1c 89 11 8b
10582230: 50 04 8b 40 08 89 51 04 89 41 08 8b c1 83 c4 18
10582240: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10582210 <.text+0x581210>:
10582210:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10582214:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10582218:	83 ec 0c                                        	sub    esp,0xc
1058221b:	50                                              	push   eax
1058221c:	51                                              	push   ecx
1058221d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10582221:	52                                              	push   edx
10582222:	e8 39 e3 ff ff                                  	call   0x10580560
10582227:	8b 10                                           	mov    edx,DWORD PTR [eax]
10582229:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1058222d:	89 11                                           	mov    DWORD PTR [ecx],edx
1058222f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10582232:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
10582235:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10582238:	89 41 08                                        	mov    DWORD PTR [ecx+0x8],eax
1058223b:	8b c1                                           	mov    eax,ecx
1058223d:	83 c4 18                                        	add    esp,0x18
10582240:	c3                                              	ret
10582241:	cc                                              	int3
10582242:	cc                                              	int3
10582243:	cc                                              	int3
10582244:	cc                                              	int3
10582245:	cc                                              	int3
10582246:	cc                                              	int3
10582247:	cc                                              	int3
10582248:	cc                                              	int3
10582249:	cc                                              	int3
1058224a:	cc                                              	int3
1058224b:	cc                                              	int3
1058224c:	cc                                              	int3
1058224d:	cc                                              	int3
1058224e:	cc                                              	int3
1058224f:	cc                                              	int3
