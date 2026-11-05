# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057d160 (World_GetRoomIdAtPosOnLotImpl)
Paired Ghidra pseudocode: 1057D160_World_GetRoomIdAtPosOnLotImpl.c
Window: [0x1057d160, 0x1057d1b0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057d1b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057d160: 8b 0d c4 00 c7 10 85 c9 74 13 8b 44 24 08 8b 54
1057d170: 24 04 6a 00 50 52 e8 95 9e cb ff eb 02 33 c0 8b
1057d180: 4c 24 18 8b 54 24 0c 6a 01 51 83 ec 0c 8b cc 89
1057d190: 11 8b 54 24 24 89 51 04 8b 54 24 28 50 89 51 08
1057d1a0: e8 cb b6 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057d160 <.text+0x57c160>:
1057d160:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057d166:	85 c9                                           	test   ecx,ecx
1057d168:	74 13                                           	je     0x1057d17d
1057d16a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1057d16e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057d172:	6a 00                                           	push   0x0
1057d174:	50                                              	push   eax
1057d175:	52                                              	push   edx
1057d176:	e8 95 9e cb ff                                  	call   0x10237010
1057d17b:	eb 02                                           	jmp    0x1057d17f
1057d17d:	33 c0                                           	xor    eax,eax
1057d17f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057d183:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057d187:	6a 01                                           	push   0x1
1057d189:	51                                              	push   ecx
1057d18a:	83 ec 0c                                        	sub    esp,0xc
1057d18d:	8b cc                                           	mov    ecx,esp
1057d18f:	89 11                                           	mov    DWORD PTR [ecx],edx
1057d191:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1057d195:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1057d198:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1057d19c:	50                                              	push   eax
1057d19d:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1057d1a0:	e8 cb b6 ff ff                                  	call   0x10578870
1057d1a5:	83 c4 18                                        	add    esp,0x18
1057d1a8:	c3                                              	ret
1057d1a9:	cc                                              	int3
1057d1aa:	cc                                              	int3
1057d1ab:	cc                                              	int3
1057d1ac:	cc                                              	int3
1057d1ad:	cc                                              	int3
1057d1ae:	cc                                              	int3
1057d1af:	cc                                              	int3
