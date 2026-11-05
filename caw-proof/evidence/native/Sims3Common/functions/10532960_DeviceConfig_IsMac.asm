# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532960 (DeviceConfig_IsMac)
Paired Ghidra pseudocode: 10532960_DeviceConfig_IsMac.c
Window: [0x10532960, 0x10532980) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532960: e8 2b 9a e5 ff 85 c0 74 07 8a 80 a8 02 00 00 c3
10532970: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10532960 <.text+0x531960>:
10532960:	e8 2b 9a e5 ff                                  	call   0x1038c390
10532965:	85 c0                                           	test   eax,eax
10532967:	74 07                                           	je     0x10532970
10532969:	8a 80 a8 02 00 00                               	mov    al,BYTE PTR [eax+0x2a8]
1053296f:	c3                                              	ret
10532970:	32 c0                                           	xor    al,al
10532972:	c3                                              	ret
10532973:	cc                                              	int3
10532974:	cc                                              	int3
10532975:	cc                                              	int3
10532976:	cc                                              	int3
10532977:	cc                                              	int3
10532978:	cc                                              	int3
10532979:	cc                                              	int3
1053297a:	cc                                              	int3
1053297b:	cc                                              	int3
1053297c:	cc                                              	int3
1053297d:	cc                                              	int3
1053297e:	cc                                              	int3
1053297f:	cc                                              	int3
