# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532a50 (DeviceConfig_ApplyOptions)
Paired Ghidra pseudocode: 10532A50_DeviceConfig_ApplyOptions.c
Window: [0x10532a50, 0x10532a70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532a50: 56 e8 3a 99 e5 ff 8b f0 85 f6 74 0f 8b ce e8 9d
10532a60: 9b e5 ff 8b ce 5e e9 a5 98 e5 ff 5e c3 cc cc cc

LINEAR DISASSEMBLY
10532a50 <.text+0x531a50>:
10532a50:	56                                              	push   esi
10532a51:	e8 3a 99 e5 ff                                  	call   0x1038c390
10532a56:	8b f0                                           	mov    esi,eax
10532a58:	85 f6                                           	test   esi,esi
10532a5a:	74 0f                                           	je     0x10532a6b
10532a5c:	8b ce                                           	mov    ecx,esi
10532a5e:	e8 9d 9b e5 ff                                  	call   0x1038c600
10532a63:	8b ce                                           	mov    ecx,esi
10532a65:	5e                                              	pop    esi
10532a66:	e9 a5 98 e5 ff                                  	jmp    0x1038c310
10532a6b:	5e                                              	pop    esi
10532a6c:	c3                                              	ret
10532a6d:	cc                                              	int3
10532a6e:	cc                                              	int3
10532a6f:	cc                                              	int3
