# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536230 (LookAt_SetAttenuatorYawImpl)
Paired Ghidra pseudocode: 10536230_LookAt_SetAttenuatorYawImpl.c
Window: [0x10536230, 0x10536250) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536230: d9 44 24 08 8b 44 24 04 51 d9 1c 24 50 e8 1e fc
10536240: ff ff 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536230 <.text+0x535230>:
10536230:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10536234:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10536238:	51                                              	push   ecx
10536239:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053623c:	50                                              	push   eax
1053623d:	e8 1e fc ff ff                                  	call   0x10535e60
10536242:	83 c4 08                                        	add    esp,0x8
10536245:	c3                                              	ret
10536246:	cc                                              	int3
10536247:	cc                                              	int3
10536248:	cc                                              	int3
10536249:	cc                                              	int3
1053624a:	cc                                              	int3
1053624b:	cc                                              	int3
1053624c:	cc                                              	int3
1053624d:	cc                                              	int3
1053624e:	cc                                              	int3
1053624f:	cc                                              	int3
