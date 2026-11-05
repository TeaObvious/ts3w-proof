# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1036d020 (LotWrap_GetMaxSize)
Paired Ghidra pseudocode: 1036D020_LotWrap_GetMaxSize.c
Window: [0x1036d020, 0x1036d1c0) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x1036d1c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1036d020: b8 40 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc
1036d030: 8b 4c 24 08 85 c9 74 0d 8b 44 24 04 50 e8 6e 4b
1036d040: ff ff c2 08 00 33 c0 c2 08 00 cc cc cc cc cc cc
1036d050: 6a 00 6a 00 6a 00 6a 00 68 c0 d3 ad 10 68 00 06
1036d060: 00 00 e8 49 be 5a 00 83 c4 18 85 c0 74 15 d9 ee
1036d070: 51 8b 4c 24 08 d9 1c 24 51 8b c8 e8 70 7f ff ff
1036d080: c2 04 00 33 c0 c2 04 00 cc cc cc cc cc cc cc cc
1036d090: 6a 00 6a 00 6a 00 6a 00 68 c0 d3 ad 10 6a 48 e8
1036d0a0: 0c be 5a 00 83 c4 18 85 c0 74 07 8b c8 e9 ce d5
1036d0b0: ff ff 33 c0 c2 04 00 cc cc cc cc cc cc cc cc cc
1036d0c0: 6a 00 6a 00 6a 00 6a 00 68 c0 d3 ad 10 6a 3c e8
1036d0d0: dc bd 5a 00 83 c4 18 85 c0 74 07 8b c8 e9 de 9a
1036d0e0: ff ff 33 c0 c2 04 00 cc cc cc cc cc cc cc cc cc
1036d0f0: 6a 00 6a 00 6a 00 6a 00 68 c0 d3 ad 10 68 88 00
1036d100: 00 00 e8 a9 bd 5a 00 83 c4 18 85 c0 74 07 8b c8
1036d110: e9 bb cb ff ff 33 c0 c2 04 00 cc cc cc cc cc cc
1036d120: 6a 00 6a 00 6a 00 6a 00 68 c0 d3 ad 10 6a 60 e8
1036d130: 7c bd 5a 00 83 c4 18 85 c0 74 07 8b c8 e9 ae c1
1036d140: ff ff 33 c0 c2 04 00 cc cc cc cc cc cc cc cc cc
1036d150: 6a 00 6a 00 6a 00 6a 00 68 c0 d3 ad 10 6a 70 e8
1036d160: 4c bd 5a 00 83 c4 18 85 c0 74 11 8b 4c 24 04 6a
1036d170: ff 51 8b c8 e8 67 6b ff ff c2 04 00 33 c0 c2 04
1036d180: 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
1036d190: 6a 00 6a 00 6a 00 6a 00 68 c0 d3 ad 10 6a 2c e8
1036d1a0: 0c bd 5a 00 83 c4 18 85 c0 74 07 8b c8 e9 9e ef
1036d1b0: ff ff 33 c0 c2 04 00 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1036d020 <.text+0x36c020>:
1036d020:	b8 40 00 00 00                                  	mov    eax,0x40
1036d025:	c3                                              	ret
1036d026:	cc                                              	int3
1036d027:	cc                                              	int3
1036d028:	cc                                              	int3
1036d029:	cc                                              	int3
1036d02a:	cc                                              	int3
1036d02b:	cc                                              	int3
1036d02c:	cc                                              	int3
1036d02d:	cc                                              	int3
1036d02e:	cc                                              	int3
1036d02f:	cc                                              	int3
1036d030:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1036d034:	85 c9                                           	test   ecx,ecx
1036d036:	74 0d                                           	je     0x1036d045
1036d038:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1036d03c:	50                                              	push   eax
1036d03d:	e8 6e 4b ff ff                                  	call   0x10361bb0
1036d042:	c2 08 00                                        	ret    0x8
1036d045:	33 c0                                           	xor    eax,eax
1036d047:	c2 08 00                                        	ret    0x8
1036d04a:	cc                                              	int3
1036d04b:	cc                                              	int3
1036d04c:	cc                                              	int3
1036d04d:	cc                                              	int3
1036d04e:	cc                                              	int3
1036d04f:	cc                                              	int3
1036d050:	6a 00                                           	push   0x0
1036d052:	6a 00                                           	push   0x0
1036d054:	6a 00                                           	push   0x0
1036d056:	6a 00                                           	push   0x0
1036d058:	68 c0 d3 ad 10                                  	push   0x10add3c0
1036d05d:	68 00 06 00 00                                  	push   0x600
1036d062:	e8 49 be 5a 00                                  	call   0x10918eb0
1036d067:	83 c4 18                                        	add    esp,0x18
1036d06a:	85 c0                                           	test   eax,eax
1036d06c:	74 15                                           	je     0x1036d083
1036d06e:	d9 ee                                           	fldz
1036d070:	51                                              	push   ecx
1036d071:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1036d075:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1036d078:	51                                              	push   ecx
1036d079:	8b c8                                           	mov    ecx,eax
1036d07b:	e8 70 7f ff ff                                  	call   0x10364ff0
1036d080:	c2 04 00                                        	ret    0x4
1036d083:	33 c0                                           	xor    eax,eax
1036d085:	c2 04 00                                        	ret    0x4
1036d088:	cc                                              	int3
1036d089:	cc                                              	int3
1036d08a:	cc                                              	int3
1036d08b:	cc                                              	int3
1036d08c:	cc                                              	int3
1036d08d:	cc                                              	int3
1036d08e:	cc                                              	int3
1036d08f:	cc                                              	int3
1036d090:	6a 00                                           	push   0x0
1036d092:	6a 00                                           	push   0x0
1036d094:	6a 00                                           	push   0x0
1036d096:	6a 00                                           	push   0x0
1036d098:	68 c0 d3 ad 10                                  	push   0x10add3c0
1036d09d:	6a 48                                           	push   0x48
1036d09f:	e8 0c be 5a 00                                  	call   0x10918eb0
1036d0a4:	83 c4 18                                        	add    esp,0x18
1036d0a7:	85 c0                                           	test   eax,eax
1036d0a9:	74 07                                           	je     0x1036d0b2
1036d0ab:	8b c8                                           	mov    ecx,eax
1036d0ad:	e9 ce d5 ff ff                                  	jmp    0x1036a680
1036d0b2:	33 c0                                           	xor    eax,eax
1036d0b4:	c2 04 00                                        	ret    0x4
1036d0b7:	cc                                              	int3
1036d0b8:	cc                                              	int3
1036d0b9:	cc                                              	int3
1036d0ba:	cc                                              	int3
1036d0bb:	cc                                              	int3
1036d0bc:	cc                                              	int3
1036d0bd:	cc                                              	int3
1036d0be:	cc                                              	int3
1036d0bf:	cc                                              	int3
1036d0c0:	6a 00                                           	push   0x0
1036d0c2:	6a 00                                           	push   0x0
1036d0c4:	6a 00                                           	push   0x0
1036d0c6:	6a 00                                           	push   0x0
1036d0c8:	68 c0 d3 ad 10                                  	push   0x10add3c0
1036d0cd:	6a 3c                                           	push   0x3c
1036d0cf:	e8 dc bd 5a 00                                  	call   0x10918eb0
1036d0d4:	83 c4 18                                        	add    esp,0x18
1036d0d7:	85 c0                                           	test   eax,eax
1036d0d9:	74 07                                           	je     0x1036d0e2
1036d0db:	8b c8                                           	mov    ecx,eax
1036d0dd:	e9 de 9a ff ff                                  	jmp    0x10366bc0
1036d0e2:	33 c0                                           	xor    eax,eax
1036d0e4:	c2 04 00                                        	ret    0x4
1036d0e7:	cc                                              	int3
1036d0e8:	cc                                              	int3
1036d0e9:	cc                                              	int3
1036d0ea:	cc                                              	int3
1036d0eb:	cc                                              	int3
1036d0ec:	cc                                              	int3
1036d0ed:	cc                                              	int3
1036d0ee:	cc                                              	int3
1036d0ef:	cc                                              	int3
1036d0f0:	6a 00                                           	push   0x0
1036d0f2:	6a 00                                           	push   0x0
1036d0f4:	6a 00                                           	push   0x0
1036d0f6:	6a 00                                           	push   0x0
1036d0f8:	68 c0 d3 ad 10                                  	push   0x10add3c0
1036d0fd:	68 88 00 00 00                                  	push   0x88
1036d102:	e8 a9 bd 5a 00                                  	call   0x10918eb0
1036d107:	83 c4 18                                        	add    esp,0x18
1036d10a:	85 c0                                           	test   eax,eax
1036d10c:	74 07                                           	je     0x1036d115
1036d10e:	8b c8                                           	mov    ecx,eax
1036d110:	e9 bb cb ff ff                                  	jmp    0x10369cd0
1036d115:	33 c0                                           	xor    eax,eax
1036d117:	c2 04 00                                        	ret    0x4
1036d11a:	cc                                              	int3
1036d11b:	cc                                              	int3
1036d11c:	cc                                              	int3
1036d11d:	cc                                              	int3
1036d11e:	cc                                              	int3
1036d11f:	cc                                              	int3
1036d120:	6a 00                                           	push   0x0
1036d122:	6a 00                                           	push   0x0
1036d124:	6a 00                                           	push   0x0
1036d126:	6a 00                                           	push   0x0
1036d128:	68 c0 d3 ad 10                                  	push   0x10add3c0
1036d12d:	6a 60                                           	push   0x60
1036d12f:	e8 7c bd 5a 00                                  	call   0x10918eb0
1036d134:	83 c4 18                                        	add    esp,0x18
1036d137:	85 c0                                           	test   eax,eax
1036d139:	74 07                                           	je     0x1036d142
1036d13b:	8b c8                                           	mov    ecx,eax
1036d13d:	e9 ae c1 ff ff                                  	jmp    0x103692f0
1036d142:	33 c0                                           	xor    eax,eax
1036d144:	c2 04 00                                        	ret    0x4
1036d147:	cc                                              	int3
1036d148:	cc                                              	int3
1036d149:	cc                                              	int3
1036d14a:	cc                                              	int3
1036d14b:	cc                                              	int3
1036d14c:	cc                                              	int3
1036d14d:	cc                                              	int3
1036d14e:	cc                                              	int3
1036d14f:	cc                                              	int3
1036d150:	6a 00                                           	push   0x0
1036d152:	6a 00                                           	push   0x0
1036d154:	6a 00                                           	push   0x0
1036d156:	6a 00                                           	push   0x0
1036d158:	68 c0 d3 ad 10                                  	push   0x10add3c0
1036d15d:	6a 70                                           	push   0x70
1036d15f:	e8 4c bd 5a 00                                  	call   0x10918eb0
1036d164:	83 c4 18                                        	add    esp,0x18
1036d167:	85 c0                                           	test   eax,eax
1036d169:	74 11                                           	je     0x1036d17c
1036d16b:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1036d16f:	6a ff                                           	push   0xffffffff
1036d171:	51                                              	push   ecx
1036d172:	8b c8                                           	mov    ecx,eax
1036d174:	e8 67 6b ff ff                                  	call   0x10363ce0
1036d179:	c2 04 00                                        	ret    0x4
1036d17c:	33 c0                                           	xor    eax,eax
1036d17e:	c2 04 00                                        	ret    0x4
1036d181:	cc                                              	int3
1036d182:	cc                                              	int3
1036d183:	cc                                              	int3
1036d184:	cc                                              	int3
1036d185:	cc                                              	int3
1036d186:	cc                                              	int3
1036d187:	cc                                              	int3
1036d188:	cc                                              	int3
1036d189:	cc                                              	int3
1036d18a:	cc                                              	int3
1036d18b:	cc                                              	int3
1036d18c:	cc                                              	int3
1036d18d:	cc                                              	int3
1036d18e:	cc                                              	int3
1036d18f:	cc                                              	int3
1036d190:	6a 00                                           	push   0x0
1036d192:	6a 00                                           	push   0x0
1036d194:	6a 00                                           	push   0x0
1036d196:	6a 00                                           	push   0x0
1036d198:	68 c0 d3 ad 10                                  	push   0x10add3c0
1036d19d:	6a 2c                                           	push   0x2c
1036d19f:	e8 0c bd 5a 00                                  	call   0x10918eb0
1036d1a4:	83 c4 18                                        	add    esp,0x18
1036d1a7:	85 c0                                           	test   eax,eax
1036d1a9:	74 07                                           	je     0x1036d1b2
1036d1ab:	8b c8                                           	mov    ecx,eax
1036d1ad:	e9 9e ef ff ff                                  	jmp    0x1036c150
1036d1b2:	33 c0                                           	xor    eax,eax
1036d1b4:	c2 04 00                                        	ret    0x4
1036d1b7:	cc                                              	int3
1036d1b8:	cc                                              	int3
1036d1b9:	cc                                              	int3
1036d1ba:	cc                                              	int3
1036d1bb:	cc                                              	int3
1036d1bc:	cc                                              	int3
1036d1bd:	cc                                              	int3
1036d1be:	cc                                              	int3
1036d1bf:	cc                                              	int3
