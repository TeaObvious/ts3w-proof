# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581010 (World_IsObjectOnScreenImpl)
Paired Ghidra pseudocode: 10581010_World_IsObjectOnScreenImpl.c
Window: [0x10581010, 0x10581030) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581010: 8b 44 24 08 8b 4c 24 04 50 51 e8 51 be ff ff 83
10581020: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581010 <.text+0x580010>:
10581010:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581014:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10581018:	50                                              	push   eax
10581019:	51                                              	push   ecx
1058101a:	e8 51 be ff ff                                  	call   0x1057ce70
1058101f:	83 c4 08                                        	add    esp,0x8
10581022:	c3                                              	ret
10581023:	cc                                              	int3
10581024:	cc                                              	int3
10581025:	cc                                              	int3
10581026:	cc                                              	int3
10581027:	cc                                              	int3
10581028:	cc                                              	int3
10581029:	cc                                              	int3
1058102a:	cc                                              	int3
1058102b:	cc                                              	int3
1058102c:	cc                                              	int3
1058102d:	cc                                              	int3
1058102e:	cc                                              	int3
1058102f:	cc                                              	int3
