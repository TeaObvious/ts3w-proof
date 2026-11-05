# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073dda0 (ScriptCore.CameraController::Camera_DisableObjectFollow)
Paired Ghidra pseudocode: 0073DDA0_ScriptCore_CameraController_Camera_DisableObjectFollow.c
Window: [0x0073dda0, 0x0073de00) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073de00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073dda0: e8 2b be 22 00 85 c0 74 53 8b c8 e8 40 42 7e 00
0073ddb0: 85 c0 74 48 56 8b c8 e8 24 60 dd ff 8b f0 85 f6
0073ddc0: 74 39 8b 06 8b 50 0c 57 68 89 dd 0f 11 8b ce ff
0073ddd0: d2 8b f8 8b 06 8b 50 0c 68 db 4e 39 4d 8b ce ff
0073dde0: d2 85 ff 74 09 8b cf 5f 5e e9 c2 5f 23 00 85 c0
0073ddf0: 5f 74 08 8b c8 5e e9 b5 bf 23 00 5e c3 cc cc cc

LINEAR DISASSEMBLY
0073dda0 <.text+0x33cda0>:
  73dda0:	e8 2b be 22 00                                  	call   0x969bd0
  73dda5:	85 c0                                           	test   eax,eax
  73dda7:	74 53                                           	je     0x73ddfc
  73dda9:	8b c8                                           	mov    ecx,eax
  73ddab:	e8 40 42 7e 00                                  	call   0xf21ff0
  73ddb0:	85 c0                                           	test   eax,eax
  73ddb2:	74 48                                           	je     0x73ddfc
  73ddb4:	56                                              	push   esi
  73ddb5:	8b c8                                           	mov    ecx,eax
  73ddb7:	e8 24 60 dd ff                                  	call   0x513de0
  73ddbc:	8b f0                                           	mov    esi,eax
  73ddbe:	85 f6                                           	test   esi,esi
  73ddc0:	74 39                                           	je     0x73ddfb
  73ddc2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73ddc4:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  73ddc7:	57                                              	push   edi
  73ddc8:	68 89 dd 0f 11                                  	push   0x110fdd89
  73ddcd:	8b ce                                           	mov    ecx,esi
  73ddcf:	ff d2                                           	call   edx
  73ddd1:	8b f8                                           	mov    edi,eax
  73ddd3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73ddd5:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  73ddd8:	68 db 4e 39 4d                                  	push   0x4d394edb
  73dddd:	8b ce                                           	mov    ecx,esi
  73dddf:	ff d2                                           	call   edx
  73dde1:	85 ff                                           	test   edi,edi
  73dde3:	74 09                                           	je     0x73ddee
  73dde5:	8b cf                                           	mov    ecx,edi
  73dde7:	5f                                              	pop    edi
  73dde8:	5e                                              	pop    esi
  73dde9:	e9 c2 5f 23 00                                  	jmp    0x973db0
  73ddee:	85 c0                                           	test   eax,eax
  73ddf0:	5f                                              	pop    edi
  73ddf1:	74 08                                           	je     0x73ddfb
  73ddf3:	8b c8                                           	mov    ecx,eax
  73ddf5:	5e                                              	pop    esi
  73ddf6:	e9 b5 bf 23 00                                  	jmp    0x979db0
  73ddfb:	5e                                              	pop    esi
  73ddfc:	c3                                              	ret
  73ddfd:	cc                                              	int3
  73ddfe:	cc                                              	int3
  73ddff:	cc                                              	int3
