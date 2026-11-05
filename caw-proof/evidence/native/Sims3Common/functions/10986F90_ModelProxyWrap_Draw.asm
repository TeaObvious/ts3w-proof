# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986f90 (ModelProxyWrap_Draw)
Paired Ghidra pseudocode: 10986F90_ModelProxyWrap_Draw.c
Window: [0x10986f90, 0x10986fc0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986f90: 55 8b ec 83 e4 f0 83 ec 60 8d 0c 24 e8 5f 14 87
10986fa0: ff 8b 4d 08 8d 04 24 50 e8 73 c9 b4 ff 8b e5 5d
10986fb0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986f90 <.text+0x985f90>:
10986f90:	55                                              	push   ebp
10986f91:	8b ec                                           	mov    ebp,esp
10986f93:	83 e4 f0                                        	and    esp,0xfffffff0
10986f96:	83 ec 60                                        	sub    esp,0x60
10986f99:	8d 0c 24                                        	lea    ecx,[esp]
10986f9c:	e8 5f 14 87 ff                                  	call   0x101f8400
10986fa1:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10986fa4:	8d 04 24                                        	lea    eax,[esp]
10986fa7:	50                                              	push   eax
10986fa8:	e8 73 c9 b4 ff                                  	call   0x104d3920
10986fad:	8b e5                                           	mov    esp,ebp
10986faf:	5d                                              	pop    ebp
10986fb0:	c3                                              	ret
10986fb1:	cc                                              	int3
10986fb2:	cc                                              	int3
10986fb3:	cc                                              	int3
10986fb4:	cc                                              	int3
10986fb5:	cc                                              	int3
10986fb6:	cc                                              	int3
10986fb7:	cc                                              	int3
10986fb8:	cc                                              	int3
10986fb9:	cc                                              	int3
10986fba:	cc                                              	int3
10986fbb:	cc                                              	int3
10986fbc:	cc                                              	int3
10986fbd:	cc                                              	int3
10986fbe:	cc                                              	int3
10986fbf:	cc                                              	int3
