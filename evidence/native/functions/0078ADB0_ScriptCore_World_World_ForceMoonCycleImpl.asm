# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078adb0 (ScriptCore.World::World_ForceMoonCycleImpl)
Paired Ghidra pseudocode: 0078ADB0_ScriptCore_World_World_ForceMoonCycleImpl.c
Window: [0x0078adb0, 0x0078add0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078add0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078adb0: a1 c4 db 1e 01 85 c0 74 11 8b 48 64 85 c9 74 0a
0078adc0: 8b 44 24 04 50 e8 86 47 48 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0078adb0 <.text+0x389db0>:
  78adb0:	a1 c4 db 1e 01                                  	mov    eax,ds:0x11edbc4
  78adb5:	85 c0                                           	test   eax,eax
  78adb7:	74 11                                           	je     0x78adca
  78adb9:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
  78adbc:	85 c9                                           	test   ecx,ecx
  78adbe:	74 0a                                           	je     0x78adca
  78adc0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  78adc4:	50                                              	push   eax
  78adc5:	e8 86 47 48 00                                  	call   0xc0f550
  78adca:	c3                                              	ret
  78adcb:	cc                                              	int3
  78adcc:	cc                                              	int3
  78adcd:	cc                                              	int3
  78adce:	cc                                              	int3
  78adcf:	cc                                              	int3
