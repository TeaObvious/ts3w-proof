# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00a4f000 CeilingRenderManager_OnMessage
# Complete Ghidra body [00a4f000, 00a4f194] inclusive: 147 body instructions, 405 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 405 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00A4F000_CeilingRenderManager_OnMessage.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a4f000 <.text+0x64e000>:
  a4f000:	83 ec 08                                        	sub    esp,0x8
  a4f003:	55                                              	push   ebp
  a4f004:	56                                              	push   esi
  a4f005:	8b f1                                           	mov    esi,ecx
  a4f007:	8b 46 18                                        	mov    eax,DWORD PTR [esi+0x18]
  a4f00a:	8b 68 14                                        	mov    ebp,DWORD PTR [eax+0x14]
  a4f00d:	57                                              	push   edi
  a4f00e:	8b 78 10                                        	mov    edi,DWORD PTR [eax+0x10]
  a4f011:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  a4f015:	3d 88 94 26 31                                  	cmp    eax,0x31269488
  a4f01a:	0f 87 01 01 00 00                               	ja     0xa4f121
  a4f020:	0f 84 24 01 00 00                               	je     0xa4f14a
  a4f026:	3d 81 2a 48 05                                  	cmp    eax,0x5482a81
  a4f02b:	77 79                                           	ja     0xa4f0a6
  a4f02d:	74 4a                                           	je     0xa4f079
  a4f02f:	3d 04 6f 7e 04                                  	cmp    eax,0x47e6f04
  a4f034:	74 16                                           	je     0xa4f04c
  a4f036:	3d 9a 86 7e 04                                  	cmp    eax,0x47e869a
  a4f03b:	0f 84 09 01 00 00                               	je     0xa4f14a
  a4f041:	5f                                              	pop    edi
  a4f042:	5e                                              	pop    esi
  a4f043:	b0 01                                           	mov    al,0x1
  a4f045:	5d                                              	pop    ebp
  a4f046:	83 c4 08                                        	add    esp,0x8
  a4f049:	c2 08 00                                        	ret    0x8
  a4f04c:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  a4f050:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  a4f053:	3b cf                                           	cmp    ecx,edi
  a4f055:	0f 85 2f 01 00 00                               	jne    0xa4f18a
  a4f05b:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  a4f05e:	3b d5                                           	cmp    edx,ebp
  a4f060:	0f 85 24 01 00 00                               	jne    0xa4f18a
  a4f066:	50                                              	push   eax
  a4f067:	8b ce                                           	mov    ecx,esi
  a4f069:	e8 c2 fe ff ff                                  	call   0xa4ef30
  a4f06e:	5f                                              	pop    edi
  a4f06f:	5e                                              	pop    esi
  a4f070:	b0 01                                           	mov    al,0x1
  a4f072:	5d                                              	pop    ebp
  a4f073:	83 c4 08                                        	add    esp,0x8
  a4f076:	c2 08 00                                        	ret    0x8
  a4f079:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  a4f07d:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  a4f080:	3b cf                                           	cmp    ecx,edi
  a4f082:	0f 85 02 01 00 00                               	jne    0xa4f18a
  a4f088:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  a4f08b:	3b d5                                           	cmp    edx,ebp
  a4f08d:	0f 85 f7 00 00 00                               	jne    0xa4f18a
  a4f093:	50                                              	push   eax
  a4f094:	8b ce                                           	mov    ecx,esi
  a4f096:	e8 35 ee ff ff                                  	call   0xa4ded0
  a4f09b:	5f                                              	pop    edi
  a4f09c:	5e                                              	pop    esi
  a4f09d:	b0 01                                           	mov    al,0x1
  a4f09f:	5d                                              	pop    ebp
  a4f0a0:	83 c4 08                                        	add    esp,0x8
  a4f0a3:	c2 08 00                                        	ret    0x8
  a4f0a6:	3d 04 f2 3b 06                                  	cmp    eax,0x63bf204
  a4f0ab:	74 4c                                           	je     0xa4f0f9
  a4f0ad:	3d 2e c1 7a 09                                  	cmp    eax,0x97ac12e
  a4f0b2:	0f 85 d2 00 00 00                               	jne    0xa4f18a
  a4f0b8:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  a4f0bc:	53                                              	push   ebx
  a4f0bd:	50                                              	push   eax
  a4f0be:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  a4f0c2:	e8 39 28 b3 ff                                  	call   0x581900
  a4f0c7:	8b 5c 24 20                                     	mov    ebx,DWORD PTR [esp+0x20]
  a4f0cb:	8b 4b 08                                        	mov    ecx,DWORD PTR [ebx+0x8]
  a4f0ce:	3b cf                                           	cmp    ecx,edi
  a4f0d0:	75 12                                           	jne    0xa4f0e4
  a4f0d2:	8b 53 0c                                        	mov    edx,DWORD PTR [ebx+0xc]
  a4f0d5:	3b d5                                           	cmp    edx,ebp
  a4f0d7:	75 0b                                           	jne    0xa4f0e4
  a4f0d9:	8d 43 10                                        	lea    eax,[ebx+0x10]
  a4f0dc:	50                                              	push   eax
  a4f0dd:	8b ce                                           	mov    ecx,esi
  a4f0df:	e8 cc f3 ff ff                                  	call   0xa4e4b0
  a4f0e4:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  a4f0e6:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  a4f0e9:	8b cb                                           	mov    ecx,ebx
  a4f0eb:	ff d0                                           	call   eax
  a4f0ed:	5b                                              	pop    ebx
  a4f0ee:	5f                                              	pop    edi
  a4f0ef:	5e                                              	pop    esi
  a4f0f0:	b0 01                                           	mov    al,0x1
  a4f0f2:	5d                                              	pop    ebp
  a4f0f3:	83 c4 08                                        	add    esp,0x8
  a4f0f6:	c2 08 00                                        	ret    0x8
  a4f0f9:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  a4f0fd:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  a4f100:	3b cf                                           	cmp    ecx,edi
  a4f102:	0f 85 82 00 00 00                               	jne    0xa4f18a
  a4f108:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  a4f10b:	3b d5                                           	cmp    edx,ebp
  a4f10d:	75 7b                                           	jne    0xa4f18a
  a4f10f:	8b ce                                           	mov    ecx,esi
  a4f111:	e8 2a ea ff ff                                  	call   0xa4db40
  a4f116:	5f                                              	pop    edi
  a4f117:	5e                                              	pop    esi
  a4f118:	b0 01                                           	mov    al,0x1
  a4f11a:	5d                                              	pop    ebp
  a4f11b:	83 c4 08                                        	add    esp,0x8
  a4f11e:	c2 08 00                                        	ret    0x8
  a4f121:	3d d2 d9 51 92                                  	cmp    eax,0x9251d9d2
  a4f126:	77 1b                                           	ja     0xa4f143
  a4f128:	74 20                                           	je     0xa4f14a
  a4f12a:	3d 42 ae 75 31                                  	cmp    eax,0x3175ae42
  a4f12f:	74 19                                           	je     0xa4f14a
  a4f131:	3d 8c d8 51 52                                  	cmp    eax,0x5251d88c
  a4f136:	74 12                                           	je     0xa4f14a
  a4f138:	5f                                              	pop    edi
  a4f139:	5e                                              	pop    esi
  a4f13a:	b0 01                                           	mov    al,0x1
  a4f13c:	5d                                              	pop    ebp
  a4f13d:	83 c4 08                                        	add    esp,0x8
  a4f140:	c2 08 00                                        	ret    0x8
  a4f143:	3d 0a 94 26 b1                                  	cmp    eax,0xb126940a
  a4f148:	75 40                                           	jne    0xa4f18a
  a4f14a:	33 c0                                           	xor    eax,eax
  a4f14c:	83 7e 40 01                                     	cmp    DWORD PTR [esi+0x40],0x1
  a4f150:	89 46 30                                        	mov    DWORD PTR [esi+0x30],eax
  a4f153:	89 46 34                                        	mov    DWORD PTR [esi+0x34],eax
  a4f156:	89 46 38                                        	mov    DWORD PTR [esi+0x38],eax
  a4f159:	89 46 3c                                        	mov    DWORD PTR [esi+0x3c],eax
  a4f15c:	75 13                                           	jne    0xa4f171
  a4f15e:	0f 31                                           	rdtsc
  a4f160:	5f                                              	pop    edi
  a4f161:	89 46 30                                        	mov    DWORD PTR [esi+0x30],eax
  a4f164:	89 56 34                                        	mov    DWORD PTR [esi+0x34],edx
  a4f167:	5e                                              	pop    esi
  a4f168:	b0 01                                           	mov    al,0x1
  a4f16a:	5d                                              	pop    ebp
  a4f16b:	83 c4 08                                        	add    esp,0x8
  a4f16e:	c2 08 00                                        	ret    0x8
  a4f171:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  a4f175:	50                                              	push   eax
  a4f176:	ff 15 bc 63 f9 00                               	call   DWORD PTR ds:0xf963bc
  a4f17c:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  a4f180:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  a4f184:	89 4e 30                                        	mov    DWORD PTR [esi+0x30],ecx
  a4f187:	89 56 34                                        	mov    DWORD PTR [esi+0x34],edx
  a4f18a:	5f                                              	pop    edi
  a4f18b:	5e                                              	pop    esi
  a4f18c:	b0 01                                           	mov    al,0x1
  a4f18e:	5d                                              	pop    ebp
  a4f18f:	83 c4 08                                        	add    esp,0x8
  a4f192:	c2 08 00                                        	ret    0x8
