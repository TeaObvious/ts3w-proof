# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x007fd000 SACS_ScheduleDriverImmediate
# Complete current Ghidra body [007fd000, 007fd0b3] inclusive: 71 body instructions, 180 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 007FD000_SACS_ScheduleDriverImmediate.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007fd000 <.text+0x3fc000>:
  7fd000:	53                                              	push   ebx
  7fd001:	56                                              	push   esi
  7fd002:	57                                              	push   edi
  7fd003:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  7fd007:	33 db                                           	xor    ebx,ebx
  7fd009:	3b fb                                           	cmp    edi,ebx
  7fd00b:	8b f1                                           	mov    esi,ecx
  7fd00d:	0f 84 9b 00 00 00                               	je     0x7fd0ae
  7fd013:	39 5e 14                                        	cmp    DWORD PTR [esi+0x14],ebx
  7fd016:	0f 85 92 00 00 00                               	jne    0x7fd0ae
  7fd01c:	8a 44 24 14                                     	mov    al,BYTE PTR [esp+0x14]
  7fd020:	55                                              	push   ebp
  7fd021:	8d 6b 0a                                        	lea    ebp,[ebx+0xa]
  7fd024:	89 7e 14                                        	mov    DWORD PTR [esi+0x14],edi
  7fd027:	88 46 19                                        	mov    BYTE PTR [esi+0x19],al
  7fd02a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  7fd030:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  7fd033:	88 5e 18                                        	mov    BYTE PTR [esi+0x18],bl
  7fd036:	e8 95 70 00 00                                  	call   0x8040d0
  7fd03b:	83 ed 01                                        	sub    ebp,0x1
  7fd03e:	74 10                                           	je     0x7fd050
  7fd040:	38 5e 18                                        	cmp    BYTE PTR [esi+0x18],bl
  7fd043:	74 0e                                           	je     0x7fd053
  7fd045:	39 5e 14                                        	cmp    DWORD PTR [esi+0x14],ebx
  7fd048:	74 06                                           	je     0x7fd050
  7fd04a:	83 7f 04 01                                     	cmp    DWORD PTR [edi+0x4],0x1
  7fd04e:	77 e0                                           	ja     0x7fd030
  7fd050:	38 5e 18                                        	cmp    BYTE PTR [esi+0x18],bl
  7fd053:	5d                                              	pop    ebp
  7fd054:	74 52                                           	je     0x7fd0a8
  7fd056:	39 5e 14                                        	cmp    DWORD PTR [esi+0x14],ebx
  7fd059:	74 4d                                           	je     0x7fd0a8
  7fd05b:	8b 46 1c                                        	mov    eax,DWORD PTR [esi+0x1c]
  7fd05e:	8d 4e 1c                                        	lea    ecx,[esi+0x1c]
  7fd061:	89 5e 14                                        	mov    DWORD PTR [esi+0x14],ebx
  7fd064:	88 5e 19                                        	mov    BYTE PTR [esi+0x19],bl
  7fd067:	8b 76 20                                        	mov    esi,DWORD PTR [esi+0x20]
  7fd06a:	3b c6                                           	cmp    eax,esi
  7fd06c:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  7fd070:	74 0b                                           	je     0x7fd07d
  7fd072:	39 38                                           	cmp    DWORD PTR [eax],edi
  7fd074:	74 38                                           	je     0x7fd0ae
  7fd076:	83 c0 04                                        	add    eax,0x4
  7fd079:	3b c6                                           	cmp    eax,esi
  7fd07b:	75 f5                                           	jne    0x7fd072
  7fd07d:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  7fd080:	3b 41 08                                        	cmp    eax,DWORD PTR [ecx+0x8]
  7fd083:	73 12                                           	jae    0x7fd097
  7fd085:	3b c3                                           	cmp    eax,ebx
  7fd087:	8d 50 04                                        	lea    edx,[eax+0x4]
  7fd08a:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  7fd08d:	74 1f                                           	je     0x7fd0ae
  7fd08f:	89 38                                           	mov    DWORD PTR [eax],edi
  7fd091:	5f                                              	pop    edi
  7fd092:	5e                                              	pop    esi
  7fd093:	5b                                              	pop    ebx
  7fd094:	c2 08 00                                        	ret    0x8
  7fd097:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  7fd09b:	52                                              	push   edx
  7fd09c:	50                                              	push   eax
  7fd09d:	e8 7e 53 18 00                                  	call   0x982420
  7fd0a2:	5f                                              	pop    edi
  7fd0a3:	5e                                              	pop    esi
  7fd0a4:	5b                                              	pop    ebx
  7fd0a5:	c2 08 00                                        	ret    0x8
  7fd0a8:	89 5e 14                                        	mov    DWORD PTR [esi+0x14],ebx
  7fd0ab:	88 5e 19                                        	mov    BYTE PTR [esi+0x19],bl
  7fd0ae:	5f                                              	pop    edi
  7fd0af:	5e                                              	pop    esi
  7fd0b0:	5b                                              	pop    ebx
  7fd0b1:	c2 08 00                                        	ret    0x8
