# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577c10 (World_DesignModeSwap_SetSubsortImpl)
Paired Ghidra pseudocode: 10577C10_World_DesignModeSwap_SetSubsortImpl.c
Window: [0x10577c10, 0x10577c50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577c50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577c10: e8 0b 35 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
10577c20: ff 81 fa 00 00 00 45 75 1d 8b 10 51 8b c8 8b 82
10577c30: cc 00 00 00 ff d0 85 c0 74 0c 8b 4c 24 08 51 8b
10577c40: c8 e8 ea 6c aa ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577c10 <.text+0x576c10>:
10577c10:	e8 0b 35 fe ff                                  	call   0x1055b120
10577c15:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10577c19:	8b d1                                           	mov    edx,ecx
10577c1b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
10577c21:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
10577c27:	75 1d                                           	jne    0x10577c46
10577c29:	8b 10                                           	mov    edx,DWORD PTR [eax]
10577c2b:	51                                              	push   ecx
10577c2c:	8b c8                                           	mov    ecx,eax
10577c2e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10577c34:	ff d0                                           	call   eax
10577c36:	85 c0                                           	test   eax,eax
10577c38:	74 0c                                           	je     0x10577c46
10577c3a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10577c3e:	51                                              	push   ecx
10577c3f:	8b c8                                           	mov    ecx,eax
10577c41:	e8 ea 6c aa ff                                  	call   0x1001e930
10577c46:	c3                                              	ret
10577c47:	cc                                              	int3
10577c48:	cc                                              	int3
10577c49:	cc                                              	int3
10577c4a:	cc                                              	int3
10577c4b:	cc                                              	int3
10577c4c:	cc                                              	int3
10577c4d:	cc                                              	int3
10577c4e:	cc                                              	int3
10577c4f:	cc                                              	int3
