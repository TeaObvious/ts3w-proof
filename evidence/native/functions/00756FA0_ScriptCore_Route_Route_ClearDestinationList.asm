# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00756fa0 (ScriptCore.Route::Route_ClearDestinationList)
Paired Ghidra pseudocode: 00756FA0_ScriptCore_Route_Route_ClearDestinationList.c
Window: [0x00756fa0, 0x00757000) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00757000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00756fa0: 8b 44 24 04 8b 0d c4 50 1d 01 56 50 e8 ff 44 ff
00756fb0: ff 8b f0 85 f6 74 3b 8b 16 8b 42 10 57 8b ce ff
00756fc0: d0 8b ce e8 38 b3 ff ff 8b f8 85 ff 74 19 8b 17
00756fd0: 8b 02 8b cf ff d0 8d 4f 18 e8 12 8e ff ff 8b 17
00756fe0: 8b 42 04 8b cf ff d0 8b 16 8b 42 14 5f 8b ce 5e
00756ff0: ff e0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00756fa0 <.text+0x355fa0>:
  756fa0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  756fa4:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  756faa:	56                                              	push   esi
  756fab:	50                                              	push   eax
  756fac:	e8 ff 44 ff ff                                  	call   0x74b4b0
  756fb1:	8b f0                                           	mov    esi,eax
  756fb3:	85 f6                                           	test   esi,esi
  756fb5:	74 3b                                           	je     0x756ff2
  756fb7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  756fb9:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  756fbc:	57                                              	push   edi
  756fbd:	8b ce                                           	mov    ecx,esi
  756fbf:	ff d0                                           	call   eax
  756fc1:	8b ce                                           	mov    ecx,esi
  756fc3:	e8 38 b3 ff ff                                  	call   0x752300
  756fc8:	8b f8                                           	mov    edi,eax
  756fca:	85 ff                                           	test   edi,edi
  756fcc:	74 19                                           	je     0x756fe7
  756fce:	8b 17                                           	mov    edx,DWORD PTR [edi]
  756fd0:	8b 02                                           	mov    eax,DWORD PTR [edx]
  756fd2:	8b cf                                           	mov    ecx,edi
  756fd4:	ff d0                                           	call   eax
  756fd6:	8d 4f 18                                        	lea    ecx,[edi+0x18]
  756fd9:	e8 12 8e ff ff                                  	call   0x74fdf0
  756fde:	8b 17                                           	mov    edx,DWORD PTR [edi]
  756fe0:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  756fe3:	8b cf                                           	mov    ecx,edi
  756fe5:	ff d0                                           	call   eax
  756fe7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  756fe9:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  756fec:	5f                                              	pop    edi
  756fed:	8b ce                                           	mov    ecx,esi
  756fef:	5e                                              	pop    esi
  756ff0:	ff e0                                           	jmp    eax
  756ff2:	5e                                              	pop    esi
  756ff3:	c3                                              	ret
  756ff4:	cc                                              	int3
  756ff5:	cc                                              	int3
  756ff6:	cc                                              	int3
  756ff7:	cc                                              	int3
  756ff8:	cc                                              	int3
  756ff9:	cc                                              	int3
  756ffa:	cc                                              	int3
  756ffb:	cc                                              	int3
  756ffc:	cc                                              	int3
  756ffd:	cc                                              	int3
  756ffe:	cc                                              	int3
  756fff:	cc                                              	int3
