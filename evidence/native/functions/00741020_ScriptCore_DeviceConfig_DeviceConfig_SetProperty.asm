# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00741020 (ScriptCore.DeviceConfig::DeviceConfig_SetProperty)
Paired Ghidra pseudocode: 00741020_ScriptCore_DeviceConfig_DeviceConfig_SetProperty.c
Window: [0x00741020, 0x00741090) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00741020: 83 ec 40 56 57 e8 66 83 02 00 8b f0 e8 9f ab e4
00741030: ff 8b 4c 24 4c 8b f8 8b 06 8b 50 58 51 8b ce ff
00741040: d2 8b f0 85 f6 74 3b 85 ff 74 37 6a 3e 8d 44 24
00741050: 0e 6a 00 50 66 c7 44 24 14 00 00 e8 38 e2 83 00
00741060: 8b 54 24 5c 6a 0a 8d 4c 24 18 51 52 e8 ef da db
00741070: ff 83 c4 18 50 56 68 78 d9 fc 00 8b cf e8 ae bb
00741080: e4 ff 5f 5e 83 c4 40 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00741020 <.text+0x340020>:
  741020:	83 ec 40                                        	sub    esp,0x40
  741023:	56                                              	push   esi
  741024:	57                                              	push   edi
  741025:	e8 66 83 02 00                                  	call   0x769390
  74102a:	8b f0                                           	mov    esi,eax
  74102c:	e8 9f ab e4 ff                                  	call   0x58bbd0
  741031:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  741035:	8b f8                                           	mov    edi,eax
  741037:	8b 06                                           	mov    eax,DWORD PTR [esi]
  741039:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  74103c:	51                                              	push   ecx
  74103d:	8b ce                                           	mov    ecx,esi
  74103f:	ff d2                                           	call   edx
  741041:	8b f0                                           	mov    esi,eax
  741043:	85 f6                                           	test   esi,esi
  741045:	74 3b                                           	je     0x741082
  741047:	85 ff                                           	test   edi,edi
  741049:	74 37                                           	je     0x741082
  74104b:	6a 3e                                           	push   0x3e
  74104d:	8d 44 24 0e                                     	lea    eax,[esp+0xe]
  741051:	6a 00                                           	push   0x0
  741053:	50                                              	push   eax
  741054:	66 c7 44 24 14 00 00                            	mov    WORD PTR [esp+0x14],0x0
  74105b:	e8 38 e2 83 00                                  	call   0xf7f298
  741060:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
  741064:	6a 0a                                           	push   0xa
  741066:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  74106a:	51                                              	push   ecx
  74106b:	52                                              	push   edx
  74106c:	e8 ef da db ff                                  	call   0x4feb60
  741071:	83 c4 18                                        	add    esp,0x18
  741074:	50                                              	push   eax
  741075:	56                                              	push   esi
  741076:	68 78 d9 fc 00                                  	push   0xfcd978
  74107b:	8b cf                                           	mov    ecx,edi
  74107d:	e8 ae bb e4 ff                                  	call   0x58cc30
  741082:	5f                                              	pop    edi
  741083:	5e                                              	pop    esi
  741084:	83 c4 40                                        	add    esp,0x40
  741087:	c3                                              	ret
  741088:	cc                                              	int3
  741089:	cc                                              	int3
  74108a:	cc                                              	int3
  74108b:	cc                                              	int3
  74108c:	cc                                              	int3
  74108d:	cc                                              	int3
  74108e:	cc                                              	int3
  74108f:	cc                                              	int3
