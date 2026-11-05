# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577a70 (World_DesignModeSwap_SetSourceObjectImpl)
Paired Ghidra pseudocode: 10577A70_World_DesignModeSwap_SetSourceObjectImpl.c
Window: [0x10577a70, 0x10577ab0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577a70: e8 ab 36 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
10577a80: ff 81 fa 00 00 00 45 74 03 32 c0 c3 8b 10 51 8b
10577a90: c8 8b 82 cc 00 00 00 ff d0 85 c0 74 ec 8b 4c 24
10577aa0: 0c 8b 54 24 08 51 52 8b c8 e8 62 7f aa ff c3 cc

LINEAR DISASSEMBLY
10577a70 <.text+0x576a70>:
10577a70:	e8 ab 36 fe ff                                  	call   0x1055b120
10577a75:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10577a79:	8b d1                                           	mov    edx,ecx
10577a7b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
10577a81:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
10577a87:	74 03                                           	je     0x10577a8c
10577a89:	32 c0                                           	xor    al,al
10577a8b:	c3                                              	ret
10577a8c:	8b 10                                           	mov    edx,DWORD PTR [eax]
10577a8e:	51                                              	push   ecx
10577a8f:	8b c8                                           	mov    ecx,eax
10577a91:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10577a97:	ff d0                                           	call   eax
10577a99:	85 c0                                           	test   eax,eax
10577a9b:	74 ec                                           	je     0x10577a89
10577a9d:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10577aa1:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10577aa5:	51                                              	push   ecx
10577aa6:	52                                              	push   edx
10577aa7:	8b c8                                           	mov    ecx,eax
10577aa9:	e8 62 7f aa ff                                  	call   0x1001fa10
10577aae:	c3                                              	ret
10577aaf:	cc                                              	int3
