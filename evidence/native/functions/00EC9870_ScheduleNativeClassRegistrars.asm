# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec9870 (ScheduleNativeClassRegistrars)
Paired Ghidra pseudocode: 00EC9870_ScheduleNativeClassRegistrars.c
Window: [0x00ec9870, 0x00ec98a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec98a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec9870: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00ec9880: 08 51 68 e0 96 ec 00 52 50 e8 72 1d 8a ff 83 c4
00ec9890: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec9870 <.text+0xac8870>:
  ec9870:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ec9874:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  ec9878:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  ec987c:	50                                              	push   eax
  ec987d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ec9881:	51                                              	push   ecx
  ec9882:	68 e0 96 ec 00                                  	push   0xec96e0
  ec9887:	52                                              	push   edx
  ec9888:	50                                              	push   eax
  ec9889:	e8 72 1d 8a ff                                  	call   0x76b600
  ec988e:	83 c4 14                                        	add    esp,0x14
  ec9891:	c3                                              	ret
  ec9892:	cc                                              	int3
  ec9893:	cc                                              	int3
  ec9894:	cc                                              	int3
  ec9895:	cc                                              	int3
  ec9896:	cc                                              	int3
  ec9897:	cc                                              	int3
  ec9898:	cc                                              	int3
  ec9899:	cc                                              	int3
  ec989a:	cc                                              	int3
  ec989b:	cc                                              	int3
  ec989c:	cc                                              	int3
  ec989d:	cc                                              	int3
  ec989e:	cc                                              	int3
  ec989f:	cc                                              	int3
