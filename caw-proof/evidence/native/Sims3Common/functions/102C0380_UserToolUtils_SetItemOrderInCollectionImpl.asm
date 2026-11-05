# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c0380 (UserToolUtils_SetItemOrderInCollectionImpl)
Paired Ghidra pseudocode: 102C0380_UserToolUtils_SetItemOrderInCollectionImpl.c
Window: [0x102c0380, 0x102c03a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c03a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c0380: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
102c0390: 08 51 52 50 e8 67 fe ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
102c0380 <.text+0x2bf380>:
102c0380:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
102c0384:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
102c0388:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
102c038c:	50                                              	push   eax
102c038d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
102c0391:	51                                              	push   ecx
102c0392:	52                                              	push   edx
102c0393:	50                                              	push   eax
102c0394:	e8 67 fe ff ff                                  	call   0x102c0200
102c0399:	83 c4 10                                        	add    esp,0x10
102c039c:	c3                                              	ret
102c039d:	cc                                              	int3
102c039e:	cc                                              	int3
102c039f:	cc                                              	int3
