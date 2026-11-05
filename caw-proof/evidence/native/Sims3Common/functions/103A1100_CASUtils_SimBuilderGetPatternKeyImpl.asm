# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1100 (CASUtils_SimBuilderGetPatternKeyImpl)
Paired Ghidra pseudocode: 103A1100_CASUtils_SimBuilderGetPatternKeyImpl.c
Window: [0x103a1100, 0x103a1160) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1100: 8b 44 24 20 8b 4c 24 1c 8b 54 24 0c 83 ec 10 50
103a1110: 51 8b 4c 24 28 83 ec 10 8b c4 89 10 8b 54 24 3c
103a1120: 89 48 04 8b 4c 24 40 89 50 08 8b 54 24 30 89 48
103a1130: 0c 52 8d 44 24 1c 50 e8 b4 e4 ff ff 8b 4c 24 34
103a1140: 8b 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c
103a1150: 89 51 08 89 41 0c 8b c1 83 c4 30 c3 cc cc cc cc

LINEAR DISASSEMBLY
103a1100 <.text+0x3a0100>:
103a1100:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
103a1104:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a1108:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a110c:	83 ec 10                                        	sub    esp,0x10
103a110f:	50                                              	push   eax
103a1110:	51                                              	push   ecx
103a1111:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
103a1115:	83 ec 10                                        	sub    esp,0x10
103a1118:	8b c4                                           	mov    eax,esp
103a111a:	89 10                                           	mov    DWORD PTR [eax],edx
103a111c:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
103a1120:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
103a1123:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
103a1127:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
103a112a:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
103a112e:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
103a1131:	52                                              	push   edx
103a1132:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
103a1136:	50                                              	push   eax
103a1137:	e8 b4 e4 ff ff                                  	call   0x1039f5f0
103a113c:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
103a1140:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1142:	89 11                                           	mov    DWORD PTR [ecx],edx
103a1144:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1147:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a114a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a114d:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a1150:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a1153:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a1156:	8b c1                                           	mov    eax,ecx
103a1158:	83 c4 30                                        	add    esp,0x30
103a115b:	c3                                              	ret
103a115c:	cc                                              	int3
103a115d:	cc                                              	int3
103a115e:	cc                                              	int3
103a115f:	cc                                              	int3
