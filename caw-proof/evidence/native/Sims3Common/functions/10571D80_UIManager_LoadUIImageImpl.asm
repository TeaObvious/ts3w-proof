# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10571d80 (UIManager_LoadUIImageImpl)
Paired Ghidra pseudocode: 10571D80_UIManager_LoadUIImageImpl.c
Window: [0x10571d80, 0x10571da0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10571da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10571d80: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10571d90: 08 51 52 50 e8 17 fd ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10571d80 <.text+0x570d80>:
10571d80:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10571d84:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10571d88:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10571d8c:	50                                              	push   eax
10571d8d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10571d91:	51                                              	push   ecx
10571d92:	52                                              	push   edx
10571d93:	50                                              	push   eax
10571d94:	e8 17 fd ff ff                                  	call   0x10571ab0
10571d99:	83 c4 10                                        	add    esp,0x10
10571d9c:	c3                                              	ret
10571d9d:	cc                                              	int3
10571d9e:	cc                                              	int3
10571d9f:	cc                                              	int3
