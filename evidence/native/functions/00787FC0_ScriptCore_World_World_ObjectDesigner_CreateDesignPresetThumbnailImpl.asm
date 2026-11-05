# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787fc0 (ScriptCore.World::World_ObjectDesigner_CreateDesignPresetThumbnailImpl)
Paired Ghidra pseudocode: 00787FC0_ScriptCore_World_World_ObjectDesigner_CreateDesignPresetThumbnailImpl.c
Window: [0x00787fc0, 0x00788050) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787fc0: 83 ec 10 53 56 57 e8 d5 82 3a 00 8b f8 e8 be 13
00787fd0: fe ff 33 db 8b f0 8b 44 24 24 3b c3 89 5c 24 14
00787fe0: 89 5c 24 18 74 14 8b 16 8b 52 70 8d 4c 24 14 51
00787ff0: 8d 4c 24 1c 51 50 8b ce ff d2 8b 44 24 28 3b c3
00788000: 89 5c 24 0c 89 5c 24 10 74 14 8b 16 8b 52 70 8d
00788010: 4c 24 0c 51 8d 4c 24 14 51 50 8b ce ff d2 8b 44
00788020: 24 0c 8b 4c 24 10 8b 54 24 14 50 8b 44 24 1c 51
00788030: 8b 4c 24 28 52 50 51 8b cf e8 c2 c0 3a 00 5f 5e
00788040: 5b 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787fc0 <.text+0x386fc0>:
  787fc0:	83 ec 10                                        	sub    esp,0x10
  787fc3:	53                                              	push   ebx
  787fc4:	56                                              	push   esi
  787fc5:	57                                              	push   edi
  787fc6:	e8 d5 82 3a 00                                  	call   0xb302a0
  787fcb:	8b f8                                           	mov    edi,eax
  787fcd:	e8 be 13 fe ff                                  	call   0x769390
  787fd2:	33 db                                           	xor    ebx,ebx
  787fd4:	8b f0                                           	mov    esi,eax
  787fd6:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  787fda:	3b c3                                           	cmp    eax,ebx
  787fdc:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  787fe0:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  787fe4:	74 14                                           	je     0x787ffa
  787fe6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  787fe8:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  787feb:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  787fef:	51                                              	push   ecx
  787ff0:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  787ff4:	51                                              	push   ecx
  787ff5:	50                                              	push   eax
  787ff6:	8b ce                                           	mov    ecx,esi
  787ff8:	ff d2                                           	call   edx
  787ffa:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  787ffe:	3b c3                                           	cmp    eax,ebx
  788000:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
  788004:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
  788008:	74 14                                           	je     0x78801e
  78800a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78800c:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  78800f:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  788013:	51                                              	push   ecx
  788014:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  788018:	51                                              	push   ecx
  788019:	50                                              	push   eax
  78801a:	8b ce                                           	mov    ecx,esi
  78801c:	ff d2                                           	call   edx
  78801e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  788022:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  788026:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  78802a:	50                                              	push   eax
  78802b:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  78802f:	51                                              	push   ecx
  788030:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  788034:	52                                              	push   edx
  788035:	50                                              	push   eax
  788036:	51                                              	push   ecx
  788037:	8b cf                                           	mov    ecx,edi
  788039:	e8 c2 c0 3a 00                                  	call   0xb34100
  78803e:	5f                                              	pop    edi
  78803f:	5e                                              	pop    esi
  788040:	5b                                              	pop    ebx
  788041:	83 c4 10                                        	add    esp,0x10
  788044:	c3                                              	ret
  788045:	cc                                              	int3
  788046:	cc                                              	int3
  788047:	cc                                              	int3
  788048:	cc                                              	int3
  788049:	cc                                              	int3
  78804a:	cc                                              	int3
  78804b:	cc                                              	int3
  78804c:	cc                                              	int3
  78804d:	cc                                              	int3
  78804e:	cc                                              	int3
  78804f:	cc                                              	int3
