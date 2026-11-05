# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d7e0 (RouteManager_MarkRoomForUpdate)
Paired Ghidra pseudocode: 1053D7E0_RouteManager_MarkRoomForUpdate.c
Window: [0x1053d7e0, 0x1053d810) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d7e0: e8 fb ce 0d 00 85 c0 74 21 8b c8 e8 20 d6 0d 00
1053d7f0: 85 c0 74 16 8b 4c 24 0c 8b 54 24 08 51 8b 4c 24
1053d800: 08 52 51 8b c8 e8 56 fe ee ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1053d7e0 <.text+0x53c7e0>:
1053d7e0:	e8 fb ce 0d 00                                  	call   0x1061a6e0
1053d7e5:	85 c0                                           	test   eax,eax
1053d7e7:	74 21                                           	je     0x1053d80a
1053d7e9:	8b c8                                           	mov    ecx,eax
1053d7eb:	e8 20 d6 0d 00                                  	call   0x1061ae10
1053d7f0:	85 c0                                           	test   eax,eax
1053d7f2:	74 16                                           	je     0x1053d80a
1053d7f4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053d7f8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1053d7fc:	51                                              	push   ecx
1053d7fd:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053d801:	52                                              	push   edx
1053d802:	51                                              	push   ecx
1053d803:	8b c8                                           	mov    ecx,eax
1053d805:	e8 56 fe ee ff                                  	call   0x1042d660
1053d80a:	c3                                              	ret
1053d80b:	cc                                              	int3
1053d80c:	cc                                              	int3
1053d80d:	cc                                              	int3
1053d80e:	cc                                              	int3
1053d80f:	cc                                              	int3
