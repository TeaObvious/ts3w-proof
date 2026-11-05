# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109965b0 (ObjectManagerWrap_UnclusterTrees)
Paired Ghidra pseudocode: 109965B0_ObjectManagerWrap_UnclusterTrees.c
Window: [0x109965b0, 0x10996610) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109965b0: 8b 54 24 04 33 c9 83 ec 20 3b d1 74 45 56 57 b8
109965c0: 20 6f 24 10 88 4c 24 2c c7 44 24 08 e8 7b ab 10
109965d0: 33 f6 8d 7c 24 0c 87 37 51 89 44 24 1c 89 4c 24
109965e0: 20 8d 44 24 30 6a 01 8d 4c 24 10 c7 44 24 10 dc
109965f0: 79 b9 10 89 54 24 1c 89 44 24 28 e8 90 67 c3 ff
10996600: 5f 5e 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109965b0 <.text+0x9955b0>:
109965b0:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
109965b4:	33 c9                                           	xor    ecx,ecx
109965b6:	83 ec 20                                        	sub    esp,0x20
109965b9:	3b d1                                           	cmp    edx,ecx
109965bb:	74 45                                           	je     0x10996602
109965bd:	56                                              	push   esi
109965be:	57                                              	push   edi
109965bf:	b8 20 6f 24 10                                  	mov    eax,0x10246f20
109965c4:	88 4c 24 2c                                     	mov    BYTE PTR [esp+0x2c],cl
109965c8:	c7 44 24 08 e8 7b ab 10                         	mov    DWORD PTR [esp+0x8],0x10ab7be8
109965d0:	33 f6                                           	xor    esi,esi
109965d2:	8d 7c 24 0c                                     	lea    edi,[esp+0xc]
109965d6:	87 37                                           	xchg   DWORD PTR [edi],esi
109965d8:	51                                              	push   ecx
109965d9:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
109965dd:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
109965e1:	8d 44 24 30                                     	lea    eax,[esp+0x30]
109965e5:	6a 01                                           	push   0x1
109965e7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
109965eb:	c7 44 24 10 dc 79 b9 10                         	mov    DWORD PTR [esp+0x10],0x10b979dc
109965f3:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
109965f7:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
109965fb:	e8 90 67 c3 ff                                  	call   0x105ccd90
10996600:	5f                                              	pop    edi
10996601:	5e                                              	pop    esi
10996602:	83 c4 20                                        	add    esp,0x20
10996605:	c3                                              	ret
10996606:	cc                                              	int3
10996607:	cc                                              	int3
10996608:	cc                                              	int3
10996609:	cc                                              	int3
1099660a:	cc                                              	int3
1099660b:	cc                                              	int3
1099660c:	cc                                              	int3
1099660d:	cc                                              	int3
1099660e:	cc                                              	int3
1099660f:	cc                                              	int3
