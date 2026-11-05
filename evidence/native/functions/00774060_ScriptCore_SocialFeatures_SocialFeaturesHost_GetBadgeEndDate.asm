# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774060 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeEndDate)
Paired Ghidra pseudocode: 00774060_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeEndDate.c
Window: [0x00774060, 0x007741c0) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x007741c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774060: 83 ec 34 56 c7 44 24 04 00 00 00 00 e8 1f 53 ff
00774070: ff 8b f0 85 f6 0f 84 2e 01 00 00 8b 4c 24 3c 8b
00774080: 06 8b 50 58 53 57 51 8b ce ff d2 6a 00 6a ff 50
00774090: 8d 44 24 3c bf 54 8e 1c 01 bb 55 8e 1c 01 50 c7
007740a0: 44 24 2c bc 9c 00 01 89 7c 24 20 89 7c 24 24 89
007740b0: 5c 24 28 e8 08 fc d7 ff 8d 4c 24 20 83 c4 10 3b
007740c0: c1 74 14 8b 50 04 8b 00 52 50 e8 41 18 c9 ff 8b
007740d0: 5c 24 18 8b 7c 24 10 8b 4c 24 38 8b 44 24 30 2b
007740e0: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 f0 03 d7 ff
007740f0: 83 c4 04 57 e8 d7 09 2b 00 83 c4 04 85 c0 0f 84
00774100: 86 00 00 00 6a 00 6a ff 50 8d 54 24 3c 52 e8 3d
00774110: fa d7 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d
00774120: 4c 24 24 c7 44 24 24 6c 88 00 01 66 c7 44 24 2e
00774130: 13 00 66 c7 44 24 2c 0b 00 e8 82 18 d8 ff 8b 4c
00774140: 24 38 8b 44 24 30 2b c8 83 e1 fe 83 f9 02 7e 0d
00774150: 85 c0 74 09 50 e8 86 03 d7 ff 83 c4 04 8b 16 8b
00774160: 52 50 8d 44 24 0c 50 8d 4c 24 14 51 8b ce ff d2
00774170: f6 44 24 18 04 c7 44 24 10 f4 a6 fb 00 74 0b 6a
00774180: 00 8d 4c 24 14 e8 d6 15 d8 ff 2b df 83 fb 01 7e
00774190: 0d 85 ff 74 09 57 e8 45 03 d7 ff 83 c4 04 8b 44
007741a0: 24 0c 5f 5b 5e 83 c4 34 c3 8b 44 24 04 5e 83 c4
007741b0: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774060 <.text+0x373060>:
  774060:	83 ec 34                                        	sub    esp,0x34
  774063:	56                                              	push   esi
  774064:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  77406c:	e8 1f 53 ff ff                                  	call   0x769390
  774071:	8b f0                                           	mov    esi,eax
  774073:	85 f6                                           	test   esi,esi
  774075:	0f 84 2e 01 00 00                               	je     0x7741a9
  77407b:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  77407f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  774081:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  774084:	53                                              	push   ebx
  774085:	57                                              	push   edi
  774086:	51                                              	push   ecx
  774087:	8b ce                                           	mov    ecx,esi
  774089:	ff d2                                           	call   edx
  77408b:	6a 00                                           	push   0x0
  77408d:	6a ff                                           	push   0xffffffff
  77408f:	50                                              	push   eax
  774090:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  774094:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  774099:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  77409e:	50                                              	push   eax
  77409f:	c7 44 24 2c bc 9c 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009cbc
  7740a7:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  7740ab:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  7740af:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  7740b3:	e8 08 fc d7 ff                                  	call   0x4f3cc0
  7740b8:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7740bc:	83 c4 10                                        	add    esp,0x10
  7740bf:	3b c1                                           	cmp    eax,ecx
  7740c1:	74 14                                           	je     0x7740d7
  7740c3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7740c6:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7740c8:	52                                              	push   edx
  7740c9:	50                                              	push   eax
  7740ca:	e8 41 18 c9 ff                                  	call   0x405910
  7740cf:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  7740d3:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  7740d7:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  7740db:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  7740df:	2b c8                                           	sub    ecx,eax
  7740e1:	83 f9 01                                        	cmp    ecx,0x1
  7740e4:	7e 0d                                           	jle    0x7740f3
  7740e6:	85 c0                                           	test   eax,eax
  7740e8:	74 09                                           	je     0x7740f3
  7740ea:	50                                              	push   eax
  7740eb:	e8 f0 03 d7 ff                                  	call   0x4e44e0
  7740f0:	83 c4 04                                        	add    esp,0x4
  7740f3:	57                                              	push   edi
  7740f4:	e8 d7 09 2b 00                                  	call   0xa24ad0
  7740f9:	83 c4 04                                        	add    esp,0x4
  7740fc:	85 c0                                           	test   eax,eax
  7740fe:	0f 84 86 00 00 00                               	je     0x77418a
  774104:	6a 00                                           	push   0x0
  774106:	6a ff                                           	push   0xffffffff
  774108:	50                                              	push   eax
  774109:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  77410d:	52                                              	push   edx
  77410e:	e8 3d fa d7 ff                                  	call   0x4f3b50
  774113:	83 c4 10                                        	add    esp,0x10
  774116:	6a 01                                           	push   0x1
  774118:	6a 10                                           	push   0x10
  77411a:	50                                              	push   eax
  77411b:	6a 09                                           	push   0x9
  77411d:	6a 13                                           	push   0x13
  77411f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  774123:	c7 44 24 24 6c 88 00 01                         	mov    DWORD PTR [esp+0x24],0x100886c
  77412b:	66 c7 44 24 2e 13 00                            	mov    WORD PTR [esp+0x2e],0x13
  774132:	66 c7 44 24 2c 0b 00                            	mov    WORD PTR [esp+0x2c],0xb
  774139:	e8 82 18 d8 ff                                  	call   0x4f59c0
  77413e:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  774142:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  774146:	2b c8                                           	sub    ecx,eax
  774148:	83 e1 fe                                        	and    ecx,0xfffffffe
  77414b:	83 f9 02                                        	cmp    ecx,0x2
  77414e:	7e 0d                                           	jle    0x77415d
  774150:	85 c0                                           	test   eax,eax
  774152:	74 09                                           	je     0x77415d
  774154:	50                                              	push   eax
  774155:	e8 86 03 d7 ff                                  	call   0x4e44e0
  77415a:	83 c4 04                                        	add    esp,0x4
  77415d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77415f:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  774162:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  774166:	50                                              	push   eax
  774167:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77416b:	51                                              	push   ecx
  77416c:	8b ce                                           	mov    ecx,esi
  77416e:	ff d2                                           	call   edx
  774170:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  774175:	c7 44 24 10 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x10],0xfba6f4
  77417d:	74 0b                                           	je     0x77418a
  77417f:	6a 00                                           	push   0x0
  774181:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  774185:	e8 d6 15 d8 ff                                  	call   0x4f5760
  77418a:	2b df                                           	sub    ebx,edi
  77418c:	83 fb 01                                        	cmp    ebx,0x1
  77418f:	7e 0d                                           	jle    0x77419e
  774191:	85 ff                                           	test   edi,edi
  774193:	74 09                                           	je     0x77419e
  774195:	57                                              	push   edi
  774196:	e8 45 03 d7 ff                                  	call   0x4e44e0
  77419b:	83 c4 04                                        	add    esp,0x4
  77419e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7741a2:	5f                                              	pop    edi
  7741a3:	5b                                              	pop    ebx
  7741a4:	5e                                              	pop    esi
  7741a5:	83 c4 34                                        	add    esp,0x34
  7741a8:	c3                                              	ret
  7741a9:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7741ad:	5e                                              	pop    esi
  7741ae:	83 c4 34                                        	add    esp,0x34
  7741b1:	c3                                              	ret
  7741b2:	cc                                              	int3
  7741b3:	cc                                              	int3
  7741b4:	cc                                              	int3
  7741b5:	cc                                              	int3
  7741b6:	cc                                              	int3
  7741b7:	cc                                              	int3
  7741b8:	cc                                              	int3
  7741b9:	cc                                              	int3
  7741ba:	cc                                              	int3
  7741bb:	cc                                              	int3
  7741bc:	cc                                              	int3
  7741bd:	cc                                              	int3
  7741be:	cc                                              	int3
  7741bf:	cc                                              	int3
