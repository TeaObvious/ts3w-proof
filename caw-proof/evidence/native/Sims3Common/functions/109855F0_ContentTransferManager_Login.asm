# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109855f0 (ContentTransferManager_Login)
Paired Ghidra pseudocode: 109855F0_ContentTransferManager_Login.c
Window: [0x109855f0, 0x10985620) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109855f0: a1 dc 88 c7 10 85 c0 74 05 8d 48 f8 eb 02 33 c9
10985600: 8b 81 1c 01 00 00 8b 54 24 04 50 8b 44 24 0c 50
10985610: 52 e8 4a 83 cf ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109855f0 <.text+0x9845f0>:
109855f0:	a1 dc 88 c7 10                                  	mov    eax,ds:0x10c788dc
109855f5:	85 c0                                           	test   eax,eax
109855f7:	74 05                                           	je     0x109855fe
109855f9:	8d 48 f8                                        	lea    ecx,[eax-0x8]
109855fc:	eb 02                                           	jmp    0x10985600
109855fe:	33 c9                                           	xor    ecx,ecx
10985600:	8b 81 1c 01 00 00                               	mov    eax,DWORD PTR [ecx+0x11c]
10985606:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098560a:	50                                              	push   eax
1098560b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098560f:	50                                              	push   eax
10985610:	52                                              	push   edx
10985611:	e8 4a 83 cf ff                                  	call   0x1067d960
10985616:	c3                                              	ret
10985617:	cc                                              	int3
10985618:	cc                                              	int3
10985619:	cc                                              	int3
1098561a:	cc                                              	int3
1098561b:	cc                                              	int3
1098561c:	cc                                              	int3
1098561d:	cc                                              	int3
1098561e:	cc                                              	int3
1098561f:	cc                                              	int3
