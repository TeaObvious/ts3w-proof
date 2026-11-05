# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d700 (SacsWrap_ActorDefinition_Create)
Paired Ghidra pseudocode: 1098D700_SacsWrap_ActorDefinition_Create.c
Window: [0x1098d700, 0x1098d760) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d700: 56 33 f6 56 56 56 56 68 04 70 b9 10 6a 38 e8 9d
1098d710: b7 f8 ff 83 c4 18 3b c6 74 39 c7 00 54 74 ac 10
1098d720: 33 c9 8d 50 04 87 0a 89 70 08 89 70 0c 89 70 10
1098d730: 89 70 14 89 70 20 89 70 24 89 70 1c 89 70 18 89
1098d740: 70 28 89 70 2c 89 70 30 89 70 34 c7 00 3c fc b2
1098d750: 10 5e c3 33 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d700 <.text+0x98c700>:
1098d700:	56                                              	push   esi
1098d701:	33 f6                                           	xor    esi,esi
1098d703:	56                                              	push   esi
1098d704:	56                                              	push   esi
1098d705:	56                                              	push   esi
1098d706:	56                                              	push   esi
1098d707:	68 04 70 b9 10                                  	push   0x10b97004
1098d70c:	6a 38                                           	push   0x38
1098d70e:	e8 9d b7 f8 ff                                  	call   0x10918eb0
1098d713:	83 c4 18                                        	add    esp,0x18
1098d716:	3b c6                                           	cmp    eax,esi
1098d718:	74 39                                           	je     0x1098d753
1098d71a:	c7 00 54 74 ac 10                               	mov    DWORD PTR [eax],0x10ac7454
1098d720:	33 c9                                           	xor    ecx,ecx
1098d722:	8d 50 04                                        	lea    edx,[eax+0x4]
1098d725:	87 0a                                           	xchg   DWORD PTR [edx],ecx
1098d727:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
1098d72a:	89 70 0c                                        	mov    DWORD PTR [eax+0xc],esi
1098d72d:	89 70 10                                        	mov    DWORD PTR [eax+0x10],esi
1098d730:	89 70 14                                        	mov    DWORD PTR [eax+0x14],esi
1098d733:	89 70 20                                        	mov    DWORD PTR [eax+0x20],esi
1098d736:	89 70 24                                        	mov    DWORD PTR [eax+0x24],esi
1098d739:	89 70 1c                                        	mov    DWORD PTR [eax+0x1c],esi
1098d73c:	89 70 18                                        	mov    DWORD PTR [eax+0x18],esi
1098d73f:	89 70 28                                        	mov    DWORD PTR [eax+0x28],esi
1098d742:	89 70 2c                                        	mov    DWORD PTR [eax+0x2c],esi
1098d745:	89 70 30                                        	mov    DWORD PTR [eax+0x30],esi
1098d748:	89 70 34                                        	mov    DWORD PTR [eax+0x34],esi
1098d74b:	c7 00 3c fc b2 10                               	mov    DWORD PTR [eax],0x10b2fc3c
1098d751:	5e                                              	pop    esi
1098d752:	c3                                              	ret
1098d753:	33 c0                                           	xor    eax,eax
1098d755:	5e                                              	pop    esi
1098d756:	c3                                              	ret
1098d757:	cc                                              	int3
1098d758:	cc                                              	int3
1098d759:	cc                                              	int3
1098d75a:	cc                                              	int3
1098d75b:	cc                                              	int3
1098d75c:	cc                                              	int3
1098d75d:	cc                                              	int3
1098d75e:	cc                                              	int3
1098d75f:	cc                                              	int3
