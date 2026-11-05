# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bd680 (UserToolUtils_ToolInputGenericImpl)
Paired Ghidra pseudocode: 102BD680_UserToolUtils_ToolInputGenericImpl.c
Window: [0x102bd680, 0x102bd6c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bd6c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bd680: e8 2b 9c 00 00 85 c0 74 28 8b 4c 24 14 d9 44 24
102bd690: 0c 8b 54 24 10 51 8b 4c 24 08 52 83 ec 08 d9 5c
102bd6a0: 24 04 d9 44 24 18 d9 1c 24 51 8b c8 e8 8f a1 00
102bd6b0: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102bd680 <.text+0x2bc680>:
102bd680:	e8 2b 9c 00 00                                  	call   0x102c72b0
102bd685:	85 c0                                           	test   eax,eax
102bd687:	74 28                                           	je     0x102bd6b1
102bd689:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
102bd68d:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
102bd691:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
102bd695:	51                                              	push   ecx
102bd696:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
102bd69a:	52                                              	push   edx
102bd69b:	83 ec 08                                        	sub    esp,0x8
102bd69e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
102bd6a2:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
102bd6a6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
102bd6a9:	51                                              	push   ecx
102bd6aa:	8b c8                                           	mov    ecx,eax
102bd6ac:	e8 8f a1 00 00                                  	call   0x102c7840
102bd6b1:	c3                                              	ret
102bd6b2:	cc                                              	int3
102bd6b3:	cc                                              	int3
102bd6b4:	cc                                              	int3
102bd6b5:	cc                                              	int3
102bd6b6:	cc                                              	int3
102bd6b7:	cc                                              	int3
102bd6b8:	cc                                              	int3
102bd6b9:	cc                                              	int3
102bd6ba:	cc                                              	int3
102bd6bb:	cc                                              	int3
102bd6bc:	cc                                              	int3
102bd6bd:	cc                                              	int3
102bd6be:	cc                                              	int3
102bd6bf:	cc                                              	int3
