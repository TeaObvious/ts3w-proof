# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109802e0 (TransformComponent_SetAbsoluteTransformXf)
Paired Ghidra pseudocode: 109802E0_TransformComponent_SetAbsoluteTransformXf.c
Window: [0x109802e0, 0x10980310) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109802e0: 55 8b ec 83 e4 f0 8b 45 0c 83 ec 40 50 8d 4c 24
109802f0: 04 51 e8 69 fe ff ff 8b 4d 08 83 c4 08 50 e8 dd
10980300: ac dc ff 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109802e0 <.text+0x97f2e0>:
109802e0:	55                                              	push   ebp
109802e1:	8b ec                                           	mov    ebp,esp
109802e3:	83 e4 f0                                        	and    esp,0xfffffff0
109802e6:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
109802e9:	83 ec 40                                        	sub    esp,0x40
109802ec:	50                                              	push   eax
109802ed:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
109802f1:	51                                              	push   ecx
109802f2:	e8 69 fe ff ff                                  	call   0x10980160
109802f7:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
109802fa:	83 c4 08                                        	add    esp,0x8
109802fd:	50                                              	push   eax
109802fe:	e8 dd ac dc ff                                  	call   0x1074afe0
10980303:	8b e5                                           	mov    esp,ebp
10980305:	5d                                              	pop    ebp
10980306:	c3                                              	ret
10980307:	cc                                              	int3
10980308:	cc                                              	int3
10980309:	cc                                              	int3
1098030a:	cc                                              	int3
1098030b:	cc                                              	int3
1098030c:	cc                                              	int3
1098030d:	cc                                              	int3
1098030e:	cc                                              	int3
1098030f:	cc                                              	int3
