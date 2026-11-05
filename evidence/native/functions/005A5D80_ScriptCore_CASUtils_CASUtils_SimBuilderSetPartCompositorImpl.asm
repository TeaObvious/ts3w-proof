# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5d80 (ScriptCore.CASUtils::CASUtils_SimBuilderSetPartCompositorImpl)
Paired Ghidra pseudocode: 005A5D80_ScriptCore_CASUtils_CASUtils_SimBuilderSetPartCompositorImpl.c
Window: [0x005a5d80, 0x005a5e20) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5d80: 83 ec 18 56 e8 07 36 1c 00 8d 4c 24 04 51 8b 4c
005a5d90: 24 44 8b f0 8d 54 24 0c 52 c7 44 24 0c 00 00 00
005a5da0: 00 c7 44 24 10 00 00 00 00 8b 06 8b 50 70 51 8b
005a5db0: ce ff d2 83 7c 24 04 00 7e 5a 8b 4c 24 20 8b 06
005a5dc0: 8b 90 cc 00 00 00 51 8b ce ff d2 85 c0 74 45 8b
005a5dd0: 4c 24 2c 8b 54 24 30 89 4c 24 0c 8b 4c 24 24 89
005a5de0: 54 24 10 8b 54 24 28 89 4c 24 14 8b 4c 24 04 51
005a5df0: 8b 4c 24 40 89 54 24 1c 8b 54 24 0c 52 8b 54 24
005a5e00: 40 51 8b 4c 24 40 52 51 8d 54 24 20 52 8b c8 e8
005a5e10: 5c da 03 00 5e 83 c4 18 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5d80 <.text+0x1a4d80>:
  5a5d80:	83 ec 18                                        	sub    esp,0x18
  5a5d83:	56                                              	push   esi
  5a5d84:	e8 07 36 1c 00                                  	call   0x769390
  5a5d89:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  5a5d8d:	51                                              	push   ecx
  5a5d8e:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  5a5d92:	8b f0                                           	mov    esi,eax
  5a5d94:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  5a5d98:	52                                              	push   edx
  5a5d99:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  5a5da1:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  5a5da9:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a5dab:	8b 50 70                                        	mov    edx,DWORD PTR [eax+0x70]
  5a5dae:	51                                              	push   ecx
  5a5daf:	8b ce                                           	mov    ecx,esi
  5a5db1:	ff d2                                           	call   edx
  5a5db3:	83 7c 24 04 00                                  	cmp    DWORD PTR [esp+0x4],0x0
  5a5db8:	7e 5a                                           	jle    0x5a5e14
  5a5dba:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a5dbe:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a5dc0:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
  5a5dc6:	51                                              	push   ecx
  5a5dc7:	8b ce                                           	mov    ecx,esi
  5a5dc9:	ff d2                                           	call   edx
  5a5dcb:	85 c0                                           	test   eax,eax
  5a5dcd:	74 45                                           	je     0x5a5e14
  5a5dcf:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5a5dd3:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  5a5dd7:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  5a5ddb:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a5ddf:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  5a5de3:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a5de7:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  5a5deb:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5a5def:	51                                              	push   ecx
  5a5df0:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  5a5df4:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  5a5df8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  5a5dfc:	52                                              	push   edx
  5a5dfd:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  5a5e01:	51                                              	push   ecx
  5a5e02:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  5a5e06:	52                                              	push   edx
  5a5e07:	51                                              	push   ecx
  5a5e08:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  5a5e0c:	52                                              	push   edx
  5a5e0d:	8b c8                                           	mov    ecx,eax
  5a5e0f:	e8 5c da 03 00                                  	call   0x5e3870
  5a5e14:	5e                                              	pop    esi
  5a5e15:	83 c4 18                                        	add    esp,0x18
  5a5e18:	c3                                              	ret
  5a5e19:	cc                                              	int3
  5a5e1a:	cc                                              	int3
  5a5e1b:	cc                                              	int3
  5a5e1c:	cc                                              	int3
  5a5e1d:	cc                                              	int3
  5a5e1e:	cc                                              	int3
  5a5e1f:	cc                                              	int3
