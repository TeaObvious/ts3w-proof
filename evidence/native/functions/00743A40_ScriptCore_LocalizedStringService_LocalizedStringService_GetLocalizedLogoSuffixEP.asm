# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743a40 (ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedLogoSuffixEP)
Paired Ghidra pseudocode: 00743A40_ScriptCore_LocalizedStringService_LocalizedStringService_GetLocalizedLogoSuffixEP.c
Window: [0x00743a40, 0x00743a70) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00743a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743a40: e9 8b 99 e5 ff cc cc cc cc cc cc cc cc cc cc cc
00743a50: f6 44 24 04 01 56 8b f1 c7 06 c0 f6 fd 00 74 09
00743a60: 56 e8 7a 0a da ff 83 c4 04 8b c6 5e c2 04 00 cc

LINEAR DISASSEMBLY
00743a40 <.text+0x342a40>:
  743a40:	e9 8b 99 e5 ff                                  	jmp    0x59d3d0
  743a45:	cc                                              	int3
  743a46:	cc                                              	int3
  743a47:	cc                                              	int3
  743a48:	cc                                              	int3
  743a49:	cc                                              	int3
  743a4a:	cc                                              	int3
  743a4b:	cc                                              	int3
  743a4c:	cc                                              	int3
  743a4d:	cc                                              	int3
  743a4e:	cc                                              	int3
  743a4f:	cc                                              	int3
  743a50:	f6 44 24 04 01                                  	test   BYTE PTR [esp+0x4],0x1
  743a55:	56                                              	push   esi
  743a56:	8b f1                                           	mov    esi,ecx
  743a58:	c7 06 c0 f6 fd 00                               	mov    DWORD PTR [esi],0xfdf6c0
  743a5e:	74 09                                           	je     0x743a69
  743a60:	56                                              	push   esi
  743a61:	e8 7a 0a da ff                                  	call   0x4e44e0
  743a66:	83 c4 04                                        	add    esp,0x4
  743a69:	8b c6                                           	mov    eax,esi
  743a6b:	5e                                              	pop    esi
  743a6c:	c2 04 00                                        	ret    0x4
  743a6f:	cc                                              	int3
