# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532aa0 (DeviceConfig_IsRegistryTelemetryEnabled)
Paired Ghidra pseudocode: 10532AA0_DeviceConfig_IsRegistryTelemetryEnabled.c
Window: [0x10532aa0, 0x10532ab0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532aa0: e8 db 14 09 00 f7 d8 1b c0 f7 d8 c3 cc cc cc cc

LINEAR DISASSEMBLY
10532aa0 <.text+0x531aa0>:
10532aa0:	e8 db 14 09 00                                  	call   0x105c3f80
10532aa5:	f7 d8                                           	neg    eax
10532aa7:	1b c0                                           	sbb    eax,eax
10532aa9:	f7 d8                                           	neg    eax
10532aab:	c3                                              	ret
10532aac:	cc                                              	int3
10532aad:	cc                                              	int3
10532aae:	cc                                              	int3
10532aaf:	cc                                              	int3
