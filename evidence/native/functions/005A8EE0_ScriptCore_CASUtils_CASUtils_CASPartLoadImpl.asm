# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8ee0 (ScriptCore.CASUtils::CASUtils_CASPartLoadImpl)
Paired Ghidra pseudocode: 005A8EE0_ScriptCore_CASUtils_CASUtils_CASPartLoadImpl.c
Window: [0x005a8ee0, 0x005a8f20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8ee0: 83 ec 10 8b 4c 24 24 8b 44 24 20 8b 54 24 18 56
005a8ef0: 8b 74 24 18 89 4c 24 08 89 44 24 04 8b 44 24 20
005a8f00: 8d 4c 24 04 56 51 89 54 24 14 89 44 24 18 e8 7d
005a8f10: ef ff ff 83 c4 08 8b c6 5e 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
005a8ee0 <.text+0x1a7ee0>:
  5a8ee0:	83 ec 10                                        	sub    esp,0x10
  5a8ee3:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a8ee7:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  5a8eeb:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5a8eef:	56                                              	push   esi
  5a8ef0:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  5a8ef4:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a8ef8:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  5a8efc:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  5a8f00:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  5a8f04:	56                                              	push   esi
  5a8f05:	51                                              	push   ecx
  5a8f06:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a8f0a:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  5a8f0e:	e8 7d ef ff ff                                  	call   0x5a7e90
  5a8f13:	83 c4 08                                        	add    esp,0x8
  5a8f16:	8b c6                                           	mov    eax,esi
  5a8f18:	5e                                              	pop    esi
  5a8f19:	83 c4 10                                        	add    esp,0x10
  5a8f1c:	c3                                              	ret
  5a8f1d:	cc                                              	int3
  5a8f1e:	cc                                              	int3
  5a8f1f:	cc                                              	int3
