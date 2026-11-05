# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bd6e0 (UserToolUtils_ForwardUserToolMouseEventImpl)
Paired Ghidra pseudocode: 102BD6E0_UserToolUtils_ForwardUserToolMouseEventImpl.c
Window: [0x102bd6e0, 0x102bd710) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bd710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bd6e0: 8b 44 24 14 d9 44 24 0c 8b 4c 24 10 8b 54 24 04
102bd6f0: 50 51 83 ec 08 d9 5c 24 04 d9 44 24 18 d9 1c 24
102bd700: 52 e8 1a fd ff ff 83 c4 14 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bd6e0 <.text+0x2bc6e0>:
102bd6e0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
102bd6e4:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
102bd6e8:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
102bd6ec:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
102bd6f0:	50                                              	push   eax
102bd6f1:	51                                              	push   ecx
102bd6f2:	83 ec 08                                        	sub    esp,0x8
102bd6f5:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
102bd6f9:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
102bd6fd:	d9 1c 24                                        	fstp   DWORD PTR [esp]
102bd700:	52                                              	push   edx
102bd701:	e8 1a fd ff ff                                  	call   0x102bd420
102bd706:	83 c4 14                                        	add    esp,0x14
102bd709:	c3                                              	ret
102bd70a:	cc                                              	int3
102bd70b:	cc                                              	int3
102bd70c:	cc                                              	int3
102bd70d:	cc                                              	int3
102bd70e:	cc                                              	int3
102bd70f:	cc                                              	int3
