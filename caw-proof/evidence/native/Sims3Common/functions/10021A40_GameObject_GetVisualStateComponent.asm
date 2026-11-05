# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10021a40 (GameObject_GetVisualStateComponent)
Paired Ghidra pseudocode: 10021A40_GameObject_GetVisualStateComponent.c
Window: [0x10021a40, 0x10021a60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10021a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10021a40: 8b 4c 24 04 85 c9 74 0c a1 e8 da c8 10 50 e8 4d
10021a50: 53 70 00 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10021a40 <.text+0x20a40>:
10021a40:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10021a44:	85 c9                                           	test   ecx,ecx
10021a46:	74 0c                                           	je     0x10021a54
10021a48:	a1 e8 da c8 10                                  	mov    eax,ds:0x10c8dae8
10021a4d:	50                                              	push   eax
10021a4e:	e8 4d 53 70 00                                  	call   0x10726da0
10021a53:	c3                                              	ret
10021a54:	33 c0                                           	xor    eax,eax
10021a56:	c3                                              	ret
10021a57:	cc                                              	int3
10021a58:	cc                                              	int3
10021a59:	cc                                              	int3
10021a5a:	cc                                              	int3
10021a5b:	cc                                              	int3
10021a5c:	cc                                              	int3
10021a5d:	cc                                              	int3
10021a5e:	cc                                              	int3
10021a5f:	cc                                              	int3
