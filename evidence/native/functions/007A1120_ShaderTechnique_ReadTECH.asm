# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007a1120, 0x007a121e); analyst name ShaderTechnique_ReadTECH.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

007a1120 <.text+0x3a0120>:
  7a1120:	83 ec 0c             	sub    esp,0xc
  7a1123:	56                   	push   esi
  7a1124:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  7a1128:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7a112b:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  7a112e:	57                   	push   edi
  7a112f:	8b f9                	mov    edi,ecx
  7a1131:	50                   	push   eax
  7a1132:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  7a1136:	51                   	push   ecx
  7a1137:	52                   	push   edx
  7a1138:	e8 43 c8 d3 ff       	call   0x4dd980
  7a113d:	83 c4 0c             	add    esp,0xc
  7a1140:	8b ce                	mov    ecx,esi
  7a1142:	50                   	push   eax
  7a1143:	e8 a8 68 03 00       	call   0x7d79f0
  7a1148:	81 7c 24 08 54 45 43 48 	cmp    DWORD PTR [esp+0x8],0x48434554
  7a1150:	74 0a                	je     0x7a115c
  7a1152:	5f                   	pop    edi
  7a1153:	32 c0                	xor    al,al
  7a1155:	5e                   	pop    esi
  7a1156:	83 c4 0c             	add    esp,0xc
  7a1159:	c2 08 00             	ret    0x8
  7a115c:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7a115f:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  7a1162:	50                   	push   eax
  7a1163:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  7a1167:	51                   	push   ecx
  7a1168:	52                   	push   edx
  7a1169:	e8 12 c8 d3 ff       	call   0x4dd980
  7a116e:	83 c4 0c             	add    esp,0xc
  7a1171:	8b ce                	mov    ecx,esi
  7a1173:	50                   	push   eax
  7a1174:	e8 77 68 03 00       	call   0x7d79f0
  7a1179:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7a117c:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  7a117f:	50                   	push   eax
  7a1180:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  7a1184:	51                   	push   ecx
  7a1185:	52                   	push   edx
  7a1186:	e8 f5 c7 d3 ff       	call   0x4dd980
  7a118b:	83 c4 0c             	add    esp,0xc
  7a118e:	8b ce                	mov    ecx,esi
  7a1190:	50                   	push   eax
  7a1191:	e8 5a 68 03 00       	call   0x7d79f0
  7a1196:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  7a119a:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7a119e:	50                   	push   eax
  7a119f:	51                   	push   ecx
  7a11a0:	8b cf                	mov    ecx,edi
  7a11a2:	e8 a9 fe ff ff       	call   0x7a1050
  7a11a7:	84 c0                	test   al,al
  7a11a9:	74 a7                	je     0x7a1152
  7a11ab:	53                   	push   ebx
  7a11ac:	55                   	push   ebp
  7a11ad:	33 ed                	xor    ebp,ebp
  7a11af:	39 6f 04             	cmp    DWORD PTR [edi+0x4],ebp
  7a11b2:	76 52                	jbe    0x7a1206
  7a11b4:	33 db                	xor    ebx,ebx
  7a11b6:	8b 37                	mov    esi,DWORD PTR [edi]
  7a11b8:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  7a11bc:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  7a11c0:	52                   	push   edx
  7a11c1:	03 f3                	add    esi,ebx
  7a11c3:	50                   	push   eax
  7a11c4:	8b ce                	mov    ecx,esi
  7a11c6:	e8 45 e2 ff ff       	call   0x79f410
  7a11cb:	84 c0                	test   al,al
  7a11cd:	74 43                	je     0x7a1212
  7a11cf:	85 ed                	test   ebp,ebp
  7a11d1:	74 25                	je     0x7a11f8
  7a11d3:	83 c8 ff             	or     eax,0xffffffff
  7a11d6:	39 46 24             	cmp    DWORD PTR [esi+0x24],eax
  7a11d9:	75 0c                	jne    0x7a11e7
  7a11db:	8b 0f                	mov    ecx,DWORD PTR [edi]
  7a11dd:	8b 94 0b 98 fe ff ff 	mov    edx,DWORD PTR [ebx+ecx*1-0x168]
  7a11e4:	89 56 24             	mov    DWORD PTR [esi+0x24],edx
  7a11e7:	39 46 28             	cmp    DWORD PTR [esi+0x28],eax
  7a11ea:	75 0c                	jne    0x7a11f8
  7a11ec:	8b 07                	mov    eax,DWORD PTR [edi]
  7a11ee:	8b 8c 03 9c fe ff ff 	mov    ecx,DWORD PTR [ebx+eax*1-0x164]
  7a11f5:	89 4e 28             	mov    DWORD PTR [esi+0x28],ecx
  7a11f8:	83 c5 01             	add    ebp,0x1
  7a11fb:	81 c3 8c 01 00 00    	add    ebx,0x18c
  7a1201:	3b 6f 04             	cmp    ebp,DWORD PTR [edi+0x4]
  7a1204:	72 b0                	jb     0x7a11b6
  7a1206:	5d                   	pop    ebp
  7a1207:	5b                   	pop    ebx
  7a1208:	5f                   	pop    edi
  7a1209:	b0 01                	mov    al,0x1
  7a120b:	5e                   	pop    esi
  7a120c:	83 c4 0c             	add    esp,0xc
  7a120f:	c2 08 00             	ret    0x8
  7a1212:	5d                   	pop    ebp
  7a1213:	5b                   	pop    ebx
  7a1214:	5f                   	pop    edi
  7a1215:	32 c0                	xor    al,al
  7a1217:	5e                   	pop    esi
  7a1218:	83 c4 0c             	add    esp,0xc
  7a121b:	c2 08 00             	ret    0x8
