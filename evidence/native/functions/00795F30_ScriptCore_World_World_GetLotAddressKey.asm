# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00795f30 (ScriptCore.World::World_GetLotAddressKey)
Paired Ghidra pseudocode: 00795F30_ScriptCore_World_World_GetLotAddressKey.c
Window: [0x00795f30, 0x00796070) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x00796070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00795f30: 8b 0d c4 db 1e 01 83 ec 54 85 c9 56 57 74 15 8b
00795f40: 44 24 64 8b 54 24 60 6a 00 50 52 e8 c0 c8 4c 00
00795f50: 8b f0 eb 02 33 f6 e8 35 34 fd ff 85 f6 8b f8 0f
00795f60: 84 f8 00 00 00 85 ff 0f 84 f0 00 00 00 8b 86 f0
00795f70: 03 00 00 85 c0 0f 84 e2 00 00 00 b9 54 8e 1c 01
00795f80: 89 4c 24 0c 89 4c 24 10 50 8d 4c 24 10 c7 44 24
00795f90: 1c 18 1c 01 01 c7 44 24 18 56 8e 1c 01 e8 ae 2f
00795fa0: c7 ff 6a 01 6a 10 8d 44 24 14 50 6a 09 be f4 a6
00795fb0: fb 00 6a 13 8d 4c 24 30 89 74 24 30 66 c7 44 24
00795fc0: 38 00 00 66 c7 44 24 3a 00 00 e8 f1 f9 d5 ff 8d
00795fd0: 4c 24 1c 51 8d 4c 24 40 c7 44 24 40 6c 88 00 01
00795fe0: 66 c7 44 24 4a 13 00 66 c7 44 24 48 02 00 e8 bd
00795ff0: 04 d6 ff f6 44 24 24 04 89 74 24 1c 74 0b 6a 00
00796000: 8d 4c 24 20 e8 57 f7 d5 ff 8b 17 8b 52 50 8d 44
00796010: 24 08 50 8d 4c 24 40 51 8b cf ff d2 f6 44 24 44
00796020: 04 8b 7c 24 08 89 74 24 3c 74 0b 6a 00 8d 4c 24
00796030: 40 e8 2a f7 d5 ff 8b 4c 24 14 8b 44 24 0c 2b c8
00796040: 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 8e e4
00796050: d4 ff 83 c4 04 8b c7 5f 5e 83 c4 54 c3 5f 33 c0
00796060: 5e 83 c4 54 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00795f30 <.text+0x394f30>:
  795f30:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  795f36:	83 ec 54                                        	sub    esp,0x54
  795f39:	85 c9                                           	test   ecx,ecx
  795f3b:	56                                              	push   esi
  795f3c:	57                                              	push   edi
  795f3d:	74 15                                           	je     0x795f54
  795f3f:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  795f43:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
  795f47:	6a 00                                           	push   0x0
  795f49:	50                                              	push   eax
  795f4a:	52                                              	push   edx
  795f4b:	e8 c0 c8 4c 00                                  	call   0xc62810
  795f50:	8b f0                                           	mov    esi,eax
  795f52:	eb 02                                           	jmp    0x795f56
  795f54:	33 f6                                           	xor    esi,esi
  795f56:	e8 35 34 fd ff                                  	call   0x769390
  795f5b:	85 f6                                           	test   esi,esi
  795f5d:	8b f8                                           	mov    edi,eax
  795f5f:	0f 84 f8 00 00 00                               	je     0x79605d
  795f65:	85 ff                                           	test   edi,edi
  795f67:	0f 84 f0 00 00 00                               	je     0x79605d
  795f6d:	8b 86 f0 03 00 00                               	mov    eax,DWORD PTR [esi+0x3f0]
  795f73:	85 c0                                           	test   eax,eax
  795f75:	0f 84 e2 00 00 00                               	je     0x79605d
  795f7b:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  795f80:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  795f84:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  795f88:	50                                              	push   eax
  795f89:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  795f8d:	c7 44 24 1c 18 1c 01 01                         	mov    DWORD PTR [esp+0x1c],0x1011c18
  795f95:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  795f9d:	e8 ae 2f c7 ff                                  	call   0x408f50
  795fa2:	6a 01                                           	push   0x1
  795fa4:	6a 10                                           	push   0x10
  795fa6:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  795faa:	50                                              	push   eax
  795fab:	6a 09                                           	push   0x9
  795fad:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  795fb2:	6a 13                                           	push   0x13
  795fb4:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  795fb8:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  795fbc:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
  795fc3:	66 c7 44 24 3a 00 00                            	mov    WORD PTR [esp+0x3a],0x0
  795fca:	e8 f1 f9 d5 ff                                  	call   0x4f59c0
  795fcf:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  795fd3:	51                                              	push   ecx
  795fd4:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  795fd8:	c7 44 24 40 6c 88 00 01                         	mov    DWORD PTR [esp+0x40],0x100886c
  795fe0:	66 c7 44 24 4a 13 00                            	mov    WORD PTR [esp+0x4a],0x13
  795fe7:	66 c7 44 24 48 02 00                            	mov    WORD PTR [esp+0x48],0x2
  795fee:	e8 bd 04 d6 ff                                  	call   0x4f64b0
  795ff3:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  795ff8:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  795ffc:	74 0b                                           	je     0x796009
  795ffe:	6a 00                                           	push   0x0
  796000:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  796004:	e8 57 f7 d5 ff                                  	call   0x4f5760
  796009:	8b 17                                           	mov    edx,DWORD PTR [edi]
  79600b:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  79600e:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  796012:	50                                              	push   eax
  796013:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  796017:	51                                              	push   ecx
  796018:	8b cf                                           	mov    ecx,edi
  79601a:	ff d2                                           	call   edx
  79601c:	f6 44 24 44 04                                  	test   BYTE PTR [esp+0x44],0x4
  796021:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  796025:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
  796029:	74 0b                                           	je     0x796036
  79602b:	6a 00                                           	push   0x0
  79602d:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  796031:	e8 2a f7 d5 ff                                  	call   0x4f5760
  796036:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  79603a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  79603e:	2b c8                                           	sub    ecx,eax
  796040:	83 e1 fe                                        	and    ecx,0xfffffffe
  796043:	83 f9 02                                        	cmp    ecx,0x2
  796046:	7e 0d                                           	jle    0x796055
  796048:	85 c0                                           	test   eax,eax
  79604a:	74 09                                           	je     0x796055
  79604c:	50                                              	push   eax
  79604d:	e8 8e e4 d4 ff                                  	call   0x4e44e0
  796052:	83 c4 04                                        	add    esp,0x4
  796055:	8b c7                                           	mov    eax,edi
  796057:	5f                                              	pop    edi
  796058:	5e                                              	pop    esi
  796059:	83 c4 54                                        	add    esp,0x54
  79605c:	c3                                              	ret
  79605d:	5f                                              	pop    edi
  79605e:	33 c0                                           	xor    eax,eax
  796060:	5e                                              	pop    esi
  796061:	83 c4 54                                        	add    esp,0x54
  796064:	c3                                              	ret
  796065:	cc                                              	int3
  796066:	cc                                              	int3
  796067:	cc                                              	int3
  796068:	cc                                              	int3
  796069:	cc                                              	int3
  79606a:	cc                                              	int3
  79606b:	cc                                              	int3
  79606c:	cc                                              	int3
  79606d:	cc                                              	int3
  79606e:	cc                                              	int3
  79606f:	cc                                              	int3
