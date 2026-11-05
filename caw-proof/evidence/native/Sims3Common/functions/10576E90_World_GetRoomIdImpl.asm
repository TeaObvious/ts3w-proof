# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576e90 (World_GetRoomIdImpl)
Paired Ghidra pseudocode: 10576E90_World_GetRoomIdImpl.c
Window: [0x10576e90, 0x10576f00) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576f00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576e90: 8b 0d c4 00 c7 10 83 ec 0c 85 c9 74 57 8b 44 24
10576ea0: 14 8b 54 24 10 6a 00 50 52 e8 62 01 cc ff 85 c0
10576eb0: 74 42 8b 80 98 02 00 00 85 c0 74 38 0f be 4c 24
10576ec0: 20 8b 54 24 24 f3 0f 2a 44 24 18 6a 01 89 4c 24
10576ed0: 0c 52 8d 4c 24 08 f3 0f 11 44 24 08 f3 0f 2a 44
10576ee0: 24 24 51 8b c8 f3 0f 11 44 24 10 e8 e0 a8 b9 ff
10576ef0: 83 c4 0c c3 66 0d ff ff 83 c4 0c c3 cc cc cc cc

LINEAR DISASSEMBLY
10576e90 <.text+0x575e90>:
10576e90:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10576e96:	83 ec 0c                                        	sub    esp,0xc
10576e99:	85 c9                                           	test   ecx,ecx
10576e9b:	74 57                                           	je     0x10576ef4
10576e9d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10576ea1:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10576ea5:	6a 00                                           	push   0x0
10576ea7:	50                                              	push   eax
10576ea8:	52                                              	push   edx
10576ea9:	e8 62 01 cc ff                                  	call   0x10237010
10576eae:	85 c0                                           	test   eax,eax
10576eb0:	74 42                                           	je     0x10576ef4
10576eb2:	8b 80 98 02 00 00                               	mov    eax,DWORD PTR [eax+0x298]
10576eb8:	85 c0                                           	test   eax,eax
10576eba:	74 38                                           	je     0x10576ef4
10576ebc:	0f be 4c 24 20                                  	movsx  ecx,BYTE PTR [esp+0x20]
10576ec1:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
10576ec5:	f3 0f 2a 44 24 18                               	cvtsi2ss xmm0,DWORD PTR [esp+0x18]
10576ecb:	6a 01                                           	push   0x1
10576ecd:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
10576ed1:	52                                              	push   edx
10576ed2:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10576ed6:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10576edc:	f3 0f 2a 44 24 24                               	cvtsi2ss xmm0,DWORD PTR [esp+0x24]
10576ee2:	51                                              	push   ecx
10576ee3:	8b c8                                           	mov    ecx,eax
10576ee5:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10576eeb:	e8 e0 a8 b9 ff                                  	call   0x101117d0
10576ef0:	83 c4 0c                                        	add    esp,0xc
10576ef3:	c3                                              	ret
10576ef4:	66 0d ff ff                                     	or     ax,0xffff
10576ef8:	83 c4 0c                                        	add    esp,0xc
10576efb:	c3                                              	ret
10576efc:	cc                                              	int3
10576efd:	cc                                              	int3
10576efe:	cc                                              	int3
10576eff:	cc                                              	int3
