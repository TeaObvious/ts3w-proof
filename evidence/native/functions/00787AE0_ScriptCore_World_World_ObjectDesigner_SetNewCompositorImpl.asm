# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787ae0 (ScriptCore.World::World_ObjectDesigner_SetNewCompositorImpl)
Paired Ghidra pseudocode: 00787AE0_ScriptCore_World_World_ObjectDesigner_SetNewCompositorImpl.c
Window: [0x00787ae0, 0x00787b40) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787ae0: 83 ec 08 56 e8 b7 87 3a 00 8b f0 e8 a0 18 fe ff
00787af0: 8d 4c 24 04 51 8d 4c 24 0c 51 8b 4c 24 1c c7 44
00787b00: 24 0c 00 00 00 00 c7 44 24 10 00 00 00 00 8b 10
00787b10: 8b 52 70 51 8b c8 ff d2 8b 44 24 04 85 c0 7e 12
00787b20: 8b 4c 24 10 50 8b 44 24 0c 50 51 8b ce e8 1e d3
00787b30: 3a 00 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787ae0 <.text+0x386ae0>:
  787ae0:	83 ec 08                                        	sub    esp,0x8
  787ae3:	56                                              	push   esi
  787ae4:	e8 b7 87 3a 00                                  	call   0xb302a0
  787ae9:	8b f0                                           	mov    esi,eax
  787aeb:	e8 a0 18 fe ff                                  	call   0x769390
  787af0:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  787af4:	51                                              	push   ecx
  787af5:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  787af9:	51                                              	push   ecx
  787afa:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  787afe:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  787b06:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  787b0e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  787b10:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  787b13:	51                                              	push   ecx
  787b14:	8b c8                                           	mov    ecx,eax
  787b16:	ff d2                                           	call   edx
  787b18:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  787b1c:	85 c0                                           	test   eax,eax
  787b1e:	7e 12                                           	jle    0x787b32
  787b20:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  787b24:	50                                              	push   eax
  787b25:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  787b29:	50                                              	push   eax
  787b2a:	51                                              	push   ecx
  787b2b:	8b ce                                           	mov    ecx,esi
  787b2d:	e8 1e d3 3a 00                                  	call   0xb34e50
  787b32:	5e                                              	pop    esi
  787b33:	83 c4 08                                        	add    esp,0x8
  787b36:	c3                                              	ret
  787b37:	cc                                              	int3
  787b38:	cc                                              	int3
  787b39:	cc                                              	int3
  787b3a:	cc                                              	int3
  787b3b:	cc                                              	int3
  787b3c:	cc                                              	int3
  787b3d:	cc                                              	int3
  787b3e:	cc                                              	int3
  787b3f:	cc                                              	int3
