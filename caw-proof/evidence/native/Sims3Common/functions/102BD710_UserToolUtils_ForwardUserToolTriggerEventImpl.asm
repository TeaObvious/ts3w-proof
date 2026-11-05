# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bd710 (UserToolUtils_ForwardUserToolTriggerEventImpl)
Paired Ghidra pseudocode: 102BD710_UserToolUtils_ForwardUserToolTriggerEventImpl.c
Window: [0x102bd710, 0x102bd730) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bd730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bd710: e8 9b 9b 00 00 85 c0 74 11 8b 4c 24 08 8b 54 24
102bd720: 04 51 52 8b c8 e8 96 b9 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
102bd710 <.text+0x2bc710>:
102bd710:	e8 9b 9b 00 00                                  	call   0x102c72b0
102bd715:	85 c0                                           	test   eax,eax
102bd717:	74 11                                           	je     0x102bd72a
102bd719:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
102bd71d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
102bd721:	51                                              	push   ecx
102bd722:	52                                              	push   edx
102bd723:	8b c8                                           	mov    ecx,eax
102bd725:	e8 96 b9 00 00                                  	call   0x102c90c0
102bd72a:	c3                                              	ret
102bd72b:	cc                                              	int3
102bd72c:	cc                                              	int3
102bd72d:	cc                                              	int3
102bd72e:	cc                                              	int3
102bd72f:	cc                                              	int3
