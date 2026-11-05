# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1020 (ScriptCore.GameUtils::GameUtils_StartupYield)
Paired Ghidra pseudocode: 00EC1020_ScriptCore_GameUtils_GameUtils_StartupYield.c
Window: [0x00ec1020, 0x00ec1070) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1020: 53 56 57 e8 68 83 8a ff 8b f0 8b 06 8b 90 18 01
00ec1030: 00 00 8b ce ff d2 8b da 8b f8 53 57 e8 3f 76 00
00ec1040: 00 8b 4c 24 18 8b 06 8b 90 20 01 00 00 83 c4 08
00ec1050: 6a 00 51 6a ff 53 57 8b ce ff d2 8b 06 8b 90 1c
00ec1060: 01 00 00 5f 8b ce 5e 5b ff e2 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1020 <.text+0xac0020>:
  ec1020:	53                                              	push   ebx
  ec1021:	56                                              	push   esi
  ec1022:	57                                              	push   edi
  ec1023:	e8 68 83 8a ff                                  	call   0x769390
  ec1028:	8b f0                                           	mov    esi,eax
  ec102a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec102c:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  ec1032:	8b ce                                           	mov    ecx,esi
  ec1034:	ff d2                                           	call   edx
  ec1036:	8b da                                           	mov    ebx,edx
  ec1038:	8b f8                                           	mov    edi,eax
  ec103a:	53                                              	push   ebx
  ec103b:	57                                              	push   edi
  ec103c:	e8 3f 76 00 00                                  	call   0xec8680
  ec1041:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  ec1045:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec1047:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
  ec104d:	83 c4 08                                        	add    esp,0x8
  ec1050:	6a 00                                           	push   0x0
  ec1052:	51                                              	push   ecx
  ec1053:	6a ff                                           	push   0xffffffff
  ec1055:	53                                              	push   ebx
  ec1056:	57                                              	push   edi
  ec1057:	8b ce                                           	mov    ecx,esi
  ec1059:	ff d2                                           	call   edx
  ec105b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec105d:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  ec1063:	5f                                              	pop    edi
  ec1064:	8b ce                                           	mov    ecx,esi
  ec1066:	5e                                              	pop    esi
  ec1067:	5b                                              	pop    ebx
  ec1068:	ff e2                                           	jmp    edx
  ec106a:	cc                                              	int3
  ec106b:	cc                                              	int3
  ec106c:	cc                                              	int3
  ec106d:	cc                                              	int3
  ec106e:	cc                                              	int3
  ec106f:	cc                                              	int3
