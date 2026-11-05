# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d83bd0 (ScriptCore.TaskControl::TaskControl_ReleaseYieldingCall)
Paired Ghidra pseudocode: 00D83BD0_ScriptCore_TaskControl_TaskControl_ReleaseYieldingCall.c
Window: [0x00d83bd0, 0x00d83c20) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d83c20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d83bd0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00d83be0: 43 75 2d e8 a8 57 9e ff 85 c0 74 05 83 c0 f8 eb
00d83bf0: 02 33 c0 8b 50 08 8d 48 08 8b 82 d8 00 00 00 56
00d83c00: ff d0 85 c0 74 0a 8b 10 8b c8 8b 42 04 5e ff e0
00d83c10: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d83bd0 <.text+0x982bd0>:
  d83bd0:	56                                              	push   esi
  d83bd1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  d83bd5:	8b c6                                           	mov    eax,esi
  d83bd7:	25 00 00 00 ff                                  	and    eax,0xff000000
  d83bdc:	3d 00 00 00 43                                  	cmp    eax,0x43000000
  d83be1:	75 2d                                           	jne    0xd83c10
  d83be3:	e8 a8 57 9e ff                                  	call   0x769390
  d83be8:	85 c0                                           	test   eax,eax
  d83bea:	74 05                                           	je     0xd83bf1
  d83bec:	83 c0 f8                                        	add    eax,0xfffffff8
  d83bef:	eb 02                                           	jmp    0xd83bf3
  d83bf1:	33 c0                                           	xor    eax,eax
  d83bf3:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d83bf6:	8d 48 08                                        	lea    ecx,[eax+0x8]
  d83bf9:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  d83bff:	56                                              	push   esi
  d83c00:	ff d0                                           	call   eax
  d83c02:	85 c0                                           	test   eax,eax
  d83c04:	74 0a                                           	je     0xd83c10
  d83c06:	8b 10                                           	mov    edx,DWORD PTR [eax]
  d83c08:	8b c8                                           	mov    ecx,eax
  d83c0a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d83c0d:	5e                                              	pop    esi
  d83c0e:	ff e0                                           	jmp    eax
  d83c10:	5e                                              	pop    esi
  d83c11:	c3                                              	ret
  d83c12:	cc                                              	int3
  d83c13:	cc                                              	int3
  d83c14:	cc                                              	int3
  d83c15:	cc                                              	int3
  d83c16:	cc                                              	int3
  d83c17:	cc                                              	int3
  d83c18:	cc                                              	int3
  d83c19:	cc                                              	int3
  d83c1a:	cc                                              	int3
  d83c1b:	cc                                              	int3
  d83c1c:	cc                                              	int3
  d83c1d:	cc                                              	int3
  d83c1e:	cc                                              	int3
  d83c1f:	cc                                              	int3
