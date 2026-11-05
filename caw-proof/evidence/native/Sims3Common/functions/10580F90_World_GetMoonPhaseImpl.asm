# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580f90 (World_GetMoonPhaseImpl)
Paired Ghidra pseudocode: 10580F90_World_GetMoonPhaseImpl.c
Window: [0x10580f90, 0x10580fc0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580f90: a1 c4 00 c7 10 85 c0 74 13 8b 48 64 85 c9 74 0c
10580fa0: e8 bb db c5 ff 0f b7 c0 0f bf c0 c3 83 c8 ff 0f
10580fb0: bf c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580f90 <.text+0x57ff90>:
10580f90:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10580f95:	85 c0                                           	test   eax,eax
10580f97:	74 13                                           	je     0x10580fac
10580f99:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
10580f9c:	85 c9                                           	test   ecx,ecx
10580f9e:	74 0c                                           	je     0x10580fac
10580fa0:	e8 bb db c5 ff                                  	call   0x101deb60
10580fa5:	0f b7 c0                                        	movzx  eax,ax
10580fa8:	0f bf c0                                        	movsx  eax,ax
10580fab:	c3                                              	ret
10580fac:	83 c8 ff                                        	or     eax,0xffffffff
10580faf:	0f bf c0                                        	movsx  eax,ax
10580fb2:	c3                                              	ret
10580fb3:	cc                                              	int3
10580fb4:	cc                                              	int3
10580fb5:	cc                                              	int3
10580fb6:	cc                                              	int3
10580fb7:	cc                                              	int3
10580fb8:	cc                                              	int3
10580fb9:	cc                                              	int3
10580fba:	cc                                              	int3
10580fbb:	cc                                              	int3
10580fbc:	cc                                              	int3
10580fbd:	cc                                              	int3
10580fbe:	cc                                              	int3
10580fbf:	cc                                              	int3
