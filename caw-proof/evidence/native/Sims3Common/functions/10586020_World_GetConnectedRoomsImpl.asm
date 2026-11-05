# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10586020 (World_GetConnectedRoomsImpl)
Paired Ghidra pseudocode: 10586020_World_GetConnectedRoomsImpl.c
Window: [0x10586020, 0x10586040) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10586040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10586020: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10586030: 08 51 52 50 e8 37 fa ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10586020 <.text+0x585020>:
10586020:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10586024:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10586028:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1058602c:	50                                              	push   eax
1058602d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10586031:	51                                              	push   ecx
10586032:	52                                              	push   edx
10586033:	50                                              	push   eax
10586034:	e8 37 fa ff ff                                  	call   0x10585a70
10586039:	83 c4 10                                        	add    esp,0x10
1058603c:	c3                                              	ret
1058603d:	cc                                              	int3
1058603e:	cc                                              	int3
1058603f:	cc                                              	int3
