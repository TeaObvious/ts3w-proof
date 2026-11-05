# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073dfc0 (ScriptCore.CameraController::Camera_Lock)
Paired Ghidra pseudocode: 0073DFC0_ScriptCore_CameraController_Camera_Lock.c
Window: [0x0073dfc0, 0x0073e040) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073dfc0: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 01 bc 22 00 85
0073dfd0: c0 74 65 8b c8 e8 16 40 7e 00 85 c0 74 5a 8b c8
0073dfe0: e8 fb 5d dd ff 85 c0 74 4f 8b 10 8b c8 8b 42 0c
0073dff0: 68 89 dd 0f 11 ff d0 8b f0 85 f6 74 3b d9 45 28
0073e000: 83 ec 10 d9 5c 24 0c 8d 4c 24 20 d9 45 24 d9 5c
0073e010: 24 08 d9 45 20 d9 5c 24 04 d9 45 1c d9 1c 24 51
0073e020: 8d 4d 10 e8 28 e0 02 00 8b 55 0c 50 8b 45 08 52
0073e030: 50 8b ce e8 68 ab 23 00 5e 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
0073dfc0 <.text+0x33cfc0>:
  73dfc0:	55                                              	push   ebp
  73dfc1:	8b ec                                           	mov    ebp,esp
  73dfc3:	83 e4 f0                                        	and    esp,0xfffffff0
  73dfc6:	83 ec 1c                                        	sub    esp,0x1c
  73dfc9:	56                                              	push   esi
  73dfca:	e8 01 bc 22 00                                  	call   0x969bd0
  73dfcf:	85 c0                                           	test   eax,eax
  73dfd1:	74 65                                           	je     0x73e038
  73dfd3:	8b c8                                           	mov    ecx,eax
  73dfd5:	e8 16 40 7e 00                                  	call   0xf21ff0
  73dfda:	85 c0                                           	test   eax,eax
  73dfdc:	74 5a                                           	je     0x73e038
  73dfde:	8b c8                                           	mov    ecx,eax
  73dfe0:	e8 fb 5d dd ff                                  	call   0x513de0
  73dfe5:	85 c0                                           	test   eax,eax
  73dfe7:	74 4f                                           	je     0x73e038
  73dfe9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73dfeb:	8b c8                                           	mov    ecx,eax
  73dfed:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73dff0:	68 89 dd 0f 11                                  	push   0x110fdd89
  73dff5:	ff d0                                           	call   eax
  73dff7:	8b f0                                           	mov    esi,eax
  73dff9:	85 f6                                           	test   esi,esi
  73dffb:	74 3b                                           	je     0x73e038
  73dffd:	d9 45 28                                        	fld    DWORD PTR [ebp+0x28]
  73e000:	83 ec 10                                        	sub    esp,0x10
  73e003:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  73e007:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  73e00b:	d9 45 24                                        	fld    DWORD PTR [ebp+0x24]
  73e00e:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  73e012:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
  73e015:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  73e019:	d9 45 1c                                        	fld    DWORD PTR [ebp+0x1c]
  73e01c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73e01f:	51                                              	push   ecx
  73e020:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
  73e023:	e8 28 e0 02 00                                  	call   0x76c050
  73e028:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  73e02b:	50                                              	push   eax
  73e02c:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  73e02f:	52                                              	push   edx
  73e030:	50                                              	push   eax
  73e031:	8b ce                                           	mov    ecx,esi
  73e033:	e8 68 ab 23 00                                  	call   0x978ba0
  73e038:	5e                                              	pop    esi
  73e039:	8b e5                                           	mov    esp,ebp
  73e03b:	5d                                              	pop    ebp
  73e03c:	c3                                              	ret
  73e03d:	cc                                              	int3
  73e03e:	cc                                              	int3
  73e03f:	cc                                              	int3
