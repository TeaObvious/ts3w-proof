# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10535fa0 (LookAt_CreateLookAtTaskImpl)
Paired Ghidra pseudocode: 10535FA0_LookAt_CreateLookAtTaskImpl.c
Window: [0x10535fa0, 0x10535fc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10535fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10535fa0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10535fb0: 08 51 52 50 e8 47 f1 ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10535fa0 <.text+0x534fa0>:
10535fa0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10535fa4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10535fa8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10535fac:	50                                              	push   eax
10535fad:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10535fb1:	51                                              	push   ecx
10535fb2:	52                                              	push   edx
10535fb3:	50                                              	push   eax
10535fb4:	e8 47 f1 ff ff                                  	call   0x10535100
10535fb9:	83 c4 10                                        	add    esp,0x10
10535fbc:	c3                                              	ret
10535fbd:	cc                                              	int3
10535fbe:	cc                                              	int3
10535fbf:	cc                                              	int3
