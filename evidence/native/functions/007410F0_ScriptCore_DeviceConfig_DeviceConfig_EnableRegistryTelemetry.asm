# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007410f0 (ScriptCore.DeviceConfig::DeviceConfig_EnableRegistryTelemetry)
Paired Ghidra pseudocode: 007410F0_ScriptCore_DeviceConfig_DeviceConfig_EnableRegistryTelemetry.c
Window: [0x007410f0, 0x00741110) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007410f0: 33 c0 38 44 24 04 0f 95 c0 89 44 24 04 e9 8e f6
00741100: 08 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007410f0 <.text+0x3400f0>:
  7410f0:	33 c0                                           	xor    eax,eax
  7410f2:	38 44 24 04                                     	cmp    BYTE PTR [esp+0x4],al
  7410f6:	0f 95 c0                                        	setne  al
  7410f9:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  7410fd:	e9 8e f6 08 00                                  	jmp    0x7d0790
  741102:	cc                                              	int3
  741103:	cc                                              	int3
  741104:	cc                                              	int3
  741105:	cc                                              	int3
  741106:	cc                                              	int3
  741107:	cc                                              	int3
  741108:	cc                                              	int3
  741109:	cc                                              	int3
  74110a:	cc                                              	int3
  74110b:	cc                                              	int3
  74110c:	cc                                              	int3
  74110d:	cc                                              	int3
  74110e:	cc                                              	int3
  74110f:	cc                                              	int3
