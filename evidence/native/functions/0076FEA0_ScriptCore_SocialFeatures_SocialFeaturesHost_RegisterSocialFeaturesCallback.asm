# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076fea0 (ScriptCore.SocialFeatures::SocialFeaturesHost_RegisterSocialFeaturesCallback)
Paired Ghidra pseudocode: 0076FEA0_ScriptCore_SocialFeatures_SocialFeaturesHost_RegisterSocialFeaturesCallback.c
Window: [0x0076fea0, 0x0076feb0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076feb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076fea0: 8b 44 24 04 a3 2c 78 1d 01 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076fea0 <.text+0x36eea0>:
  76fea0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  76fea4:	a3 2c 78 1d 01                                  	mov    ds:0x11d782c,eax
  76fea9:	c3                                              	ret
  76feaa:	cc                                              	int3
  76feab:	cc                                              	int3
  76feac:	cc                                              	int3
  76fead:	cc                                              	int3
  76feae:	cc                                              	int3
  76feaf:	cc                                              	int3
