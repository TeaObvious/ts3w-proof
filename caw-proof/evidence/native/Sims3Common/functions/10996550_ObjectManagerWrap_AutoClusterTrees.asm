# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996550 (ObjectManagerWrap_AutoClusterTrees)
Paired Ghidra pseudocode: 10996550_ObjectManagerWrap_AutoClusterTrees.c
Window: [0x10996550, 0x109965b0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x109965b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996550: 8b 54 24 04 33 c9 83 ec 20 3b d1 74 45 56 57 b8
10996560: a0 37 24 10 88 4c 24 2c c7 44 24 08 e8 7b ab 10
10996570: 33 f6 8d 7c 24 0c 87 37 51 89 44 24 1c 89 4c 24
10996580: 20 8d 44 24 30 6a 01 8d 4c 24 10 c7 44 24 10 dc
10996590: 79 b9 10 89 54 24 1c 89 44 24 28 e8 f0 67 c3 ff
109965a0: 5f 5e 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996550 <.text+0x995550>:
10996550:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10996554:	33 c9                                           	xor    ecx,ecx
10996556:	83 ec 20                                        	sub    esp,0x20
10996559:	3b d1                                           	cmp    edx,ecx
1099655b:	74 45                                           	je     0x109965a2
1099655d:	56                                              	push   esi
1099655e:	57                                              	push   edi
1099655f:	b8 a0 37 24 10                                  	mov    eax,0x102437a0
10996564:	88 4c 24 2c                                     	mov    BYTE PTR [esp+0x2c],cl
10996568:	c7 44 24 08 e8 7b ab 10                         	mov    DWORD PTR [esp+0x8],0x10ab7be8
10996570:	33 f6                                           	xor    esi,esi
10996572:	8d 7c 24 0c                                     	lea    edi,[esp+0xc]
10996576:	87 37                                           	xchg   DWORD PTR [edi],esi
10996578:	51                                              	push   ecx
10996579:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1099657d:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
10996581:	8d 44 24 30                                     	lea    eax,[esp+0x30]
10996585:	6a 01                                           	push   0x1
10996587:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1099658b:	c7 44 24 10 dc 79 b9 10                         	mov    DWORD PTR [esp+0x10],0x10b979dc
10996593:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
10996597:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
1099659b:	e8 f0 67 c3 ff                                  	call   0x105ccd90
109965a0:	5f                                              	pop    edi
109965a1:	5e                                              	pop    esi
109965a2:	83 c4 20                                        	add    esp,0x20
109965a5:	c3                                              	ret
109965a6:	cc                                              	int3
109965a7:	cc                                              	int3
109965a8:	cc                                              	int3
109965a9:	cc                                              	int3
109965aa:	cc                                              	int3
109965ab:	cc                                              	int3
109965ac:	cc                                              	int3
109965ad:	cc                                              	int3
109965ae:	cc                                              	int3
109965af:	cc                                              	int3
