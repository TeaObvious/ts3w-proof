# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577d30 (World_DesignModeSwap_DisableSubmitOfUndoableImpl)
Paired Ghidra pseudocode: 10577D30_World_DesignModeSwap_DisableSubmitOfUndoableImpl.c
Window: [0x10577d30, 0x10577d70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577d30: e8 eb 33 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
10577d40: ff 81 fa 00 00 00 45 75 1d 8b 10 51 8b c8 8b 82
10577d50: cc 00 00 00 ff d0 85 c0 74 0c 8b 4c 24 08 51 8b
10577d60: c8 e8 8a 67 aa ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577d30 <.text+0x576d30>:
10577d30:	e8 eb 33 fe ff                                  	call   0x1055b120
10577d35:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10577d39:	8b d1                                           	mov    edx,ecx
10577d3b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
10577d41:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
10577d47:	75 1d                                           	jne    0x10577d66
10577d49:	8b 10                                           	mov    edx,DWORD PTR [eax]
10577d4b:	51                                              	push   ecx
10577d4c:	8b c8                                           	mov    ecx,eax
10577d4e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10577d54:	ff d0                                           	call   eax
10577d56:	85 c0                                           	test   eax,eax
10577d58:	74 0c                                           	je     0x10577d66
10577d5a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10577d5e:	51                                              	push   ecx
10577d5f:	8b c8                                           	mov    ecx,eax
10577d61:	e8 8a 67 aa ff                                  	call   0x1001e4f0
10577d66:	c3                                              	ret
10577d67:	cc                                              	int3
10577d68:	cc                                              	int3
10577d69:	cc                                              	int3
10577d6a:	cc                                              	int3
10577d6b:	cc                                              	int3
10577d6c:	cc                                              	int3
10577d6d:	cc                                              	int3
10577d6e:	cc                                              	int3
10577d6f:	cc                                              	int3
