# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575780 (UIManager_LoadLayoutImpl)
Paired Ghidra pseudocode: 10575780_UIManager_LoadLayoutImpl.c
Window: [0x10575780, 0x105757a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105757a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575780: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10575790: 08 51 52 50 e8 27 f5 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10575780 <.text+0x574780>:
10575780:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10575784:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10575788:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057578c:	50                                              	push   eax
1057578d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10575791:	51                                              	push   ecx
10575792:	52                                              	push   edx
10575793:	50                                              	push   eax
10575794:	e8 27 f5 ff ff                                  	call   0x10574cc0
10575799:	83 c4 10                                        	add    esp,0x10
1057579c:	c3                                              	ret
1057579d:	cc                                              	int3
1057579e:	cc                                              	int3
1057579f:	cc                                              	int3
