# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056fbe0 (UIManager_SendBrowserCommandImpl)
Paired Ghidra pseudocode: 1056FBE0_UIManager_SendBrowserCommandImpl.c
Window: [0x1056fbe0, 0x1056fc20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056fc20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056fbe0: 8b 44 24 04 3d 2a 23 f5 0f 75 2c a1 dc 88 c7 10
1056fbf0: 85 c0 74 12 83 c0 f8 8b 80 f8 00 00 00 89 44 24
1056fc00: 04 e9 1a 89 fc ff 33 c0 8b 80 f8 00 00 00 89 44
1056fc10: 24 04 e9 09 89 fc ff 89 44 24 04 e9 70 33 26 00

LINEAR DISASSEMBLY
1056fbe0 <.text+0x56ebe0>:
1056fbe0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1056fbe4:	3d 2a 23 f5 0f                                  	cmp    eax,0xff5232a
1056fbe9:	75 2c                                           	jne    0x1056fc17
1056fbeb:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
1056fbf0:	85 c0                                           	test   eax,eax
1056fbf2:	74 12                                           	je     0x1056fc06
1056fbf4:	83 c0 f8                                        	add    eax,0xfffffff8
1056fbf7:	8b 80 f8 00 00 00                               	mov    eax,DWORD PTR [eax+0xf8]
1056fbfd:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1056fc01:	e9 1a 89 fc ff                                  	jmp    0x10538520
1056fc06:	33 c0                                           	xor    eax,eax
1056fc08:	8b 80 f8 00 00 00                               	mov    eax,DWORD PTR [eax+0xf8]
1056fc0e:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1056fc12:	e9 09 89 fc ff                                  	jmp    0x10538520
1056fc17:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1056fc1b:	e9 70 33 26 00                                  	jmp    0x107d2f90
