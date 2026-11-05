# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056f910 (UIManager_DeRegisterAllEventsImpl)
Paired Ghidra pseudocode: 1056F910_UIManager_DeRegisterAllEventsImpl.c
Window: [0x1056f910, 0x1056f960) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056f960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056f910: e8 0b b8 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
1056f920: ff 81 fa 00 00 00 30 75 2f 8b 10 51 8b c8 8b 82
1056f930: cc 00 00 00 ff d0 85 c0 74 1e 8b 10 8b c8 8b 42
1056f940: 0c 68 18 82 ee ee ff d0 85 c0 74 0c 8b 0d fc b1
1056f950: c7 10 50 e8 b8 3f fc ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056f910 <.text+0x56e910>:
1056f910:	e8 0b b8 fe ff                                  	call   0x1055b120
1056f915:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056f919:	8b d1                                           	mov    edx,ecx
1056f91b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
1056f921:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
1056f927:	75 2f                                           	jne    0x1056f958
1056f929:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f92b:	51                                              	push   ecx
1056f92c:	8b c8                                           	mov    ecx,eax
1056f92e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1056f934:	ff d0                                           	call   eax
1056f936:	85 c0                                           	test   eax,eax
1056f938:	74 1e                                           	je     0x1056f958
1056f93a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056f93c:	8b c8                                           	mov    ecx,eax
1056f93e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1056f941:	68 18 82 ee ee                                  	push   0xeeee8218
1056f946:	ff d0                                           	call   eax
1056f948:	85 c0                                           	test   eax,eax
1056f94a:	74 0c                                           	je     0x1056f958
1056f94c:	8b 0d fc b1 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7b1fc
1056f952:	50                                              	push   eax
1056f953:	e8 b8 3f fc ff                                  	call   0x10533910
1056f958:	c3                                              	ret
1056f959:	cc                                              	int3
1056f95a:	cc                                              	int3
1056f95b:	cc                                              	int3
1056f95c:	cc                                              	int3
1056f95d:	cc                                              	int3
1056f95e:	cc                                              	int3
1056f95f:	cc                                              	int3
