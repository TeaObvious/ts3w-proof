# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057adb0 (World_CanSeeSkyFromPosImpl)
Paired Ghidra pseudocode: 1057ADB0_World_CanSeeSkyFromPosImpl.c
Window: [0x1057adb0, 0x1057ade0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ade0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057adb0: 8b 4c 24 04 8b 54 24 08 83 ec 0c 8b c4 89 08 8b
1057adc0: 4c 24 18 89 50 04 89 48 08 e8 f2 d7 ff ff 83 c4
1057add0: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057adb0 <.text+0x579db0>:
1057adb0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1057adb4:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057adb8:	83 ec 0c                                        	sub    esp,0xc
1057adbb:	8b c4                                           	mov    eax,esp
1057adbd:	89 08                                           	mov    DWORD PTR [eax],ecx
1057adbf:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057adc3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057adc6:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057adc9:	e8 f2 d7 ff ff                                  	call   0x105785c0
1057adce:	83 c4 0c                                        	add    esp,0xc
1057add1:	c3                                              	ret
1057add2:	cc                                              	int3
1057add3:	cc                                              	int3
1057add4:	cc                                              	int3
1057add5:	cc                                              	int3
1057add6:	cc                                              	int3
1057add7:	cc                                              	int3
1057add8:	cc                                              	int3
1057add9:	cc                                              	int3
1057adda:	cc                                              	int3
1057addb:	cc                                              	int3
1057addc:	cc                                              	int3
1057addd:	cc                                              	int3
1057adde:	cc                                              	int3
1057addf:	cc                                              	int3
