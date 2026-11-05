# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00d6be80 WeatherResources_InitializeBindingsAndRequests
# Complete actual Ghidra owned ranges: 00d6be80..00d6c4e0; 465 instructions/1633 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00D6BE80_WeatherResources_InitializeBindingsAndRequests.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d6be80 <.text+0x96ae80>:
  d6be80:	81 ec 80 00 00 00                               	sub    esp,0x80
  d6be86:	56                                              	push   esi
  d6be87:	8b f1                                           	mov    esi,ecx
  d6be89:	80 3e 00                                        	cmp    BYTE PTR [esi],0x0
  d6be8c:	0f 85 47 06 00 00                               	jne    0xd6c4d9
  d6be92:	e8 39 ce f1 ff                                  	call   0xc88cd0
  d6be97:	84 c0                                           	test   al,al
  d6be99:	75 0d                                           	jne    0xd6bea8
  d6be9b:	e8 90 ce f1 ff                                  	call   0xc88d30
  d6bea0:	84 c0                                           	test   al,al
  d6bea2:	0f 84 31 06 00 00                               	je     0xd6c4d9
  d6bea8:	57                                              	push   edi
  d6bea9:	c6 06 01                                        	mov    BYTE PTR [esi],0x1
  d6beac:	8b 3d 30 85 1d 01                               	mov    edi,DWORD PTR ds:0x11d8530
  d6beb2:	85 ff                                           	test   edi,edi
  d6beb4:	0f 84 8a 03 00 00                               	je     0xd6c244
  d6beba:	53                                              	push   ebx
  d6bebb:	55                                              	push   ebp
  d6bebc:	6a 01                                           	push   0x1
  d6bebe:	6a 04                                           	push   0x4
  d6bec0:	68 9c be 08 01                                  	push   0x108be9c
  d6bec5:	8b cf                                           	mov    ecx,edi
  d6bec7:	e8 64 e6 a2 ff                                  	call   0x79a530
  d6becc:	89 46 40                                        	mov    DWORD PTR [esi+0x40],eax
  d6becf:	b8 01 00 00 00                                  	mov    eax,0x1
  d6bed4:	8d 6e 44                                        	lea    ebp,[esi+0x44]
  d6bed7:	8d 58 01                                        	lea    ebx,[eax+0x1]
  d6beda:	53                                              	push   ebx
  d6bedb:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  d6bedf:	68 84 be 08 01                                  	push   0x108be84
  d6bee4:	50                                              	push   eax
  d6bee5:	e8 d6 71 78 ff                                  	call   0x4f30c0
  d6beea:	83 c4 0c                                        	add    esp,0xc
  d6beed:	6a 01                                           	push   0x1
  d6beef:	6a 04                                           	push   0x4
  d6bef1:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  d6bef5:	51                                              	push   ecx
  d6bef6:	8b cf                                           	mov    ecx,edi
  d6bef8:	e8 33 e6 a2 ff                                  	call   0x79a530
  d6befd:	89 45 00                                        	mov    DWORD PTR [ebp+0x0],eax
  d6bf00:	8b c3                                           	mov    eax,ebx
  d6bf02:	83 c5 04                                        	add    ebp,0x4
  d6bf05:	83 f8 03                                        	cmp    eax,0x3
  d6bf08:	72 cd                                           	jb     0xd6bed7
  d6bf0a:	e8 c1 cd f1 ff                                  	call   0xc88cd0
  d6bf0f:	84 c0                                           	test   al,al
  d6bf11:	5d                                              	pop    ebp
  d6bf12:	5b                                              	pop    ebx
  d6bf13:	0f 84 bf 05 00 00                               	je     0xd6c4d8
  d6bf19:	6a 01                                           	push   0x1
  d6bf1b:	6a 04                                           	push   0x4
  d6bf1d:	68 70 be 08 01                                  	push   0x108be70
  d6bf22:	8b cf                                           	mov    ecx,edi
  d6bf24:	e8 07 e6 a2 ff                                  	call   0x79a530
  d6bf29:	6a 01                                           	push   0x1
  d6bf2b:	6a 04                                           	push   0x4
  d6bf2d:	68 5c be 08 01                                  	push   0x108be5c
  d6bf32:	8b cf                                           	mov    ecx,edi
  d6bf34:	89 46 60                                        	mov    DWORD PTR [esi+0x60],eax
  d6bf37:	e8 f4 e5 a2 ff                                  	call   0x79a530
  d6bf3c:	6a 01                                           	push   0x1
  d6bf3e:	6a 04                                           	push   0x4
  d6bf40:	68 48 be 08 01                                  	push   0x108be48
  d6bf45:	8b cf                                           	mov    ecx,edi
  d6bf47:	89 86 80 00 00 00                               	mov    DWORD PTR [esi+0x80],eax
  d6bf4d:	e8 de e5 a2 ff                                  	call   0x79a530
  d6bf52:	6a 05                                           	push   0x5
  d6bf54:	6a 01                                           	push   0x1
  d6bf56:	68 34 be 08 01                                  	push   0x108be34
  d6bf5b:	8b cf                                           	mov    ecx,edi
  d6bf5d:	89 86 a0 00 00 00                               	mov    DWORD PTR [esi+0xa0],eax
  d6bf63:	e8 c8 e5 a2 ff                                  	call   0x79a530
  d6bf68:	6a 01                                           	push   0x1
  d6bf6a:	6a 04                                           	push   0x4
  d6bf6c:	68 20 be 08 01                                  	push   0x108be20
  d6bf71:	8b cf                                           	mov    ecx,edi
  d6bf73:	89 86 a4 00 00 00                               	mov    DWORD PTR [esi+0xa4],eax
  d6bf79:	e8 b2 e5 a2 ff                                  	call   0x79a530
  d6bf7e:	6a 05                                           	push   0x5
  d6bf80:	6a 04                                           	push   0x4
  d6bf82:	68 0c be 08 01                                  	push   0x108be0c
  d6bf87:	8b cf                                           	mov    ecx,edi
  d6bf89:	89 86 e4 00 00 00                               	mov    DWORD PTR [esi+0xe4],eax
  d6bf8f:	e8 9c e5 a2 ff                                  	call   0x79a530
  d6bf94:	6a 05                                           	push   0x5
  d6bf96:	6a 04                                           	push   0x4
  d6bf98:	68 f8 bd 08 01                                  	push   0x108bdf8
  d6bf9d:	8b cf                                           	mov    ecx,edi
  d6bf9f:	89 86 c0 00 00 00                               	mov    DWORD PTR [esi+0xc0],eax
  d6bfa5:	e8 86 e5 a2 ff                                  	call   0x79a530
  d6bfaa:	6a 05                                           	push   0x5
  d6bfac:	6a 04                                           	push   0x4
  d6bfae:	68 e0 bd 08 01                                  	push   0x108bde0
  d6bfb3:	8b cf                                           	mov    ecx,edi
  d6bfb5:	89 86 e8 00 00 00                               	mov    DWORD PTR [esi+0xe8],eax
  d6bfbb:	e8 70 e5 a2 ff                                  	call   0x79a530
  d6bfc0:	6a 05                                           	push   0x5
  d6bfc2:	6a 04                                           	push   0x4
  d6bfc4:	68 c8 bd 08 01                                  	push   0x108bdc8
  d6bfc9:	8b cf                                           	mov    ecx,edi
  d6bfcb:	89 86 ec 00 00 00                               	mov    DWORD PTR [esi+0xec],eax
  d6bfd1:	e8 5a e5 a2 ff                                  	call   0x79a530
  d6bfd6:	6a 05                                           	push   0x5
  d6bfd8:	6a 04                                           	push   0x4
  d6bfda:	68 b0 bd 08 01                                  	push   0x108bdb0
  d6bfdf:	8b cf                                           	mov    ecx,edi
  d6bfe1:	89 86 f0 00 00 00                               	mov    DWORD PTR [esi+0xf0],eax
  d6bfe7:	e8 44 e5 a2 ff                                  	call   0x79a530
  d6bfec:	6a 05                                           	push   0x5
  d6bfee:	6a 04                                           	push   0x4
  d6bff0:	68 98 bd 08 01                                  	push   0x108bd98
  d6bff5:	8b cf                                           	mov    ecx,edi
  d6bff7:	89 86 f4 00 00 00                               	mov    DWORD PTR [esi+0xf4],eax
  d6bffd:	e8 2e e5 a2 ff                                  	call   0x79a530
  d6c002:	6a 05                                           	push   0x5
  d6c004:	6a 01                                           	push   0x1
  d6c006:	68 80 bd 08 01                                  	push   0x108bd80
  d6c00b:	8b cf                                           	mov    ecx,edi
  d6c00d:	89 86 c4 00 00 00                               	mov    DWORD PTR [esi+0xc4],eax
  d6c013:	e8 18 e5 a2 ff                                  	call   0x79a530
  d6c018:	6a 05                                           	push   0x5
  d6c01a:	6a 01                                           	push   0x1
  d6c01c:	68 74 bd 08 01                                  	push   0x108bd74
  d6c021:	8b cf                                           	mov    ecx,edi
  d6c023:	89 86 c8 00 00 00                               	mov    DWORD PTR [esi+0xc8],eax
  d6c029:	e8 02 e5 a2 ff                                  	call   0x79a530
  d6c02e:	6a 05                                           	push   0x5
  d6c030:	6a 01                                           	push   0x1
  d6c032:	89 86 cc 00 00 00                               	mov    DWORD PTR [esi+0xcc],eax
  d6c038:	68 64 bd 08 01                                  	push   0x108bd64
  d6c03d:	8b cf                                           	mov    ecx,edi
  d6c03f:	e8 ec e4 a2 ff                                  	call   0x79a530
  d6c044:	6a 05                                           	push   0x5
  d6c046:	6a 01                                           	push   0x1
  d6c048:	68 54 bd 08 01                                  	push   0x108bd54
  d6c04d:	8b cf                                           	mov    ecx,edi
  d6c04f:	89 86 d0 00 00 00                               	mov    DWORD PTR [esi+0xd0],eax
  d6c055:	e8 d6 e4 a2 ff                                  	call   0x79a530
  d6c05a:	6a 05                                           	push   0x5
  d6c05c:	6a 01                                           	push   0x1
  d6c05e:	68 48 bd 08 01                                  	push   0x108bd48
  d6c063:	8b cf                                           	mov    ecx,edi
  d6c065:	89 86 d4 00 00 00                               	mov    DWORD PTR [esi+0xd4],eax
  d6c06b:	e8 c0 e4 a2 ff                                  	call   0x79a530
  d6c070:	6a 05                                           	push   0x5
  d6c072:	6a 01                                           	push   0x1
  d6c074:	68 38 bd 08 01                                  	push   0x108bd38
  d6c079:	8b cf                                           	mov    ecx,edi
  d6c07b:	89 86 d8 00 00 00                               	mov    DWORD PTR [esi+0xd8],eax
  d6c081:	e8 aa e4 a2 ff                                  	call   0x79a530
  d6c086:	6a 05                                           	push   0x5
  d6c088:	6a 01                                           	push   0x1
  d6c08a:	68 24 bd 08 01                                  	push   0x108bd24
  d6c08f:	8b cf                                           	mov    ecx,edi
  d6c091:	89 86 dc 00 00 00                               	mov    DWORD PTR [esi+0xdc],eax
  d6c097:	e8 94 e4 a2 ff                                  	call   0x79a530
  d6c09c:	6a 05                                           	push   0x5
  d6c09e:	6a 01                                           	push   0x1
  d6c0a0:	68 14 bd 08 01                                  	push   0x108bd14
  d6c0a5:	8b cf                                           	mov    ecx,edi
  d6c0a7:	89 86 e0 00 00 00                               	mov    DWORD PTR [esi+0xe0],eax
  d6c0ad:	e8 7e e4 a2 ff                                  	call   0x79a530
  d6c0b2:	6a 05                                           	push   0x5
  d6c0b4:	6a 01                                           	push   0x1
  d6c0b6:	68 00 bd 08 01                                  	push   0x108bd00
  d6c0bb:	8b cf                                           	mov    ecx,edi
  d6c0bd:	89 86 f8 00 00 00                               	mov    DWORD PTR [esi+0xf8],eax
  d6c0c3:	e8 68 e4 a2 ff                                  	call   0x79a530
  d6c0c8:	6a 05                                           	push   0x5
  d6c0ca:	6a 01                                           	push   0x1
  d6c0cc:	68 ec bc 08 01                                  	push   0x108bcec
  d6c0d1:	8b cf                                           	mov    ecx,edi
  d6c0d3:	89 86 fc 00 00 00                               	mov    DWORD PTR [esi+0xfc],eax
  d6c0d9:	e8 52 e4 a2 ff                                  	call   0x79a530
  d6c0de:	6a 05                                           	push   0x5
  d6c0e0:	6a 01                                           	push   0x1
  d6c0e2:	68 cc bc 08 01                                  	push   0x108bccc
  d6c0e7:	8b cf                                           	mov    ecx,edi
  d6c0e9:	89 86 00 01 00 00                               	mov    DWORD PTR [esi+0x100],eax
  d6c0ef:	e8 3c e4 a2 ff                                  	call   0x79a530
  d6c0f4:	6a 05                                           	push   0x5
  d6c0f6:	6a 01                                           	push   0x1
  d6c0f8:	68 ac bc 08 01                                  	push   0x108bcac
  d6c0fd:	8b cf                                           	mov    ecx,edi
  d6c0ff:	89 86 04 01 00 00                               	mov    DWORD PTR [esi+0x104],eax
  d6c105:	e8 26 e4 a2 ff                                  	call   0x79a530
  d6c10a:	6a 05                                           	push   0x5
  d6c10c:	6a 01                                           	push   0x1
  d6c10e:	68 98 bc 08 01                                  	push   0x108bc98
  d6c113:	8b cf                                           	mov    ecx,edi
  d6c115:	89 86 08 01 00 00                               	mov    DWORD PTR [esi+0x108],eax
  d6c11b:	e8 10 e4 a2 ff                                  	call   0x79a530
  d6c120:	6a 05                                           	push   0x5
  d6c122:	6a 01                                           	push   0x1
  d6c124:	68 84 bc 08 01                                  	push   0x108bc84
  d6c129:	8b cf                                           	mov    ecx,edi
  d6c12b:	89 86 0c 01 00 00                               	mov    DWORD PTR [esi+0x10c],eax
  d6c131:	e8 fa e3 a2 ff                                  	call   0x79a530
  d6c136:	6a 05                                           	push   0x5
  d6c138:	6a 01                                           	push   0x1
  d6c13a:	68 70 bc 08 01                                  	push   0x108bc70
  d6c13f:	8b cf                                           	mov    ecx,edi
  d6c141:	89 86 10 01 00 00                               	mov    DWORD PTR [esi+0x110],eax
  d6c147:	e8 e4 e3 a2 ff                                  	call   0x79a530
  d6c14c:	6a 05                                           	push   0x5
  d6c14e:	6a 01                                           	push   0x1
  d6c150:	68 5c bc 08 01                                  	push   0x108bc5c
  d6c155:	8b cf                                           	mov    ecx,edi
  d6c157:	89 86 14 01 00 00                               	mov    DWORD PTR [esi+0x114],eax
  d6c15d:	e8 ce e3 a2 ff                                  	call   0x79a530
  d6c162:	89 86 18 01 00 00                               	mov    DWORD PTR [esi+0x118],eax
  d6c168:	6a 05                                           	push   0x5
  d6c16a:	6a 01                                           	push   0x1
  d6c16c:	68 48 bc 08 01                                  	push   0x108bc48
  d6c171:	8b cf                                           	mov    ecx,edi
  d6c173:	e8 b8 e3 a2 ff                                  	call   0x79a530
  d6c178:	6a 05                                           	push   0x5
  d6c17a:	6a 01                                           	push   0x1
  d6c17c:	68 38 bc 08 01                                  	push   0x108bc38
  d6c181:	8b cf                                           	mov    ecx,edi
  d6c183:	89 86 1c 01 00 00                               	mov    DWORD PTR [esi+0x11c],eax
  d6c189:	e8 a2 e3 a2 ff                                  	call   0x79a530
  d6c18e:	6a 05                                           	push   0x5
  d6c190:	6a 01                                           	push   0x1
  d6c192:	68 24 bc 08 01                                  	push   0x108bc24
  d6c197:	8b cf                                           	mov    ecx,edi
  d6c199:	89 86 20 01 00 00                               	mov    DWORD PTR [esi+0x120],eax
  d6c19f:	e8 8c e3 a2 ff                                  	call   0x79a530
  d6c1a4:	6a 05                                           	push   0x5
  d6c1a6:	6a 01                                           	push   0x1
  d6c1a8:	68 18 bc 08 01                                  	push   0x108bc18
  d6c1ad:	8b cf                                           	mov    ecx,edi
  d6c1af:	89 86 24 01 00 00                               	mov    DWORD PTR [esi+0x124],eax
  d6c1b5:	e8 76 e3 a2 ff                                  	call   0x79a530
  d6c1ba:	6a 05                                           	push   0x5
  d6c1bc:	6a 01                                           	push   0x1
  d6c1be:	68 00 bc 08 01                                  	push   0x108bc00
  d6c1c3:	8b cf                                           	mov    ecx,edi
  d6c1c5:	89 86 28 01 00 00                               	mov    DWORD PTR [esi+0x128],eax
  d6c1cb:	e8 60 e3 a2 ff                                  	call   0x79a530
  d6c1d0:	6a 05                                           	push   0x5
  d6c1d2:	6a 01                                           	push   0x1
  d6c1d4:	68 e8 bb 08 01                                  	push   0x108bbe8
  d6c1d9:	8b cf                                           	mov    ecx,edi
  d6c1db:	89 86 2c 01 00 00                               	mov    DWORD PTR [esi+0x12c],eax
  d6c1e1:	e8 4a e3 a2 ff                                  	call   0x79a530
  d6c1e6:	6a 05                                           	push   0x5
  d6c1e8:	6a 01                                           	push   0x1
  d6c1ea:	68 d8 bb 08 01                                  	push   0x108bbd8
  d6c1ef:	8b cf                                           	mov    ecx,edi
  d6c1f1:	89 86 30 01 00 00                               	mov    DWORD PTR [esi+0x130],eax
  d6c1f7:	e8 34 e3 a2 ff                                  	call   0x79a530
  d6c1fc:	6a 05                                           	push   0x5
  d6c1fe:	6a 01                                           	push   0x1
  d6c200:	68 c4 bb 08 01                                  	push   0x108bbc4
  d6c205:	8b cf                                           	mov    ecx,edi
  d6c207:	89 86 34 01 00 00                               	mov    DWORD PTR [esi+0x134],eax
  d6c20d:	e8 1e e3 a2 ff                                  	call   0x79a530
  d6c212:	6a 05                                           	push   0x5
  d6c214:	6a 01                                           	push   0x1
  d6c216:	68 ac bb 08 01                                  	push   0x108bbac
  d6c21b:	8b cf                                           	mov    ecx,edi
  d6c21d:	89 86 38 01 00 00                               	mov    DWORD PTR [esi+0x138],eax
  d6c223:	e8 08 e3 a2 ff                                  	call   0x79a530
  d6c228:	6a 05                                           	push   0x5
  d6c22a:	6a 01                                           	push   0x1
  d6c22c:	68 98 bb 08 01                                  	push   0x108bb98
  d6c231:	8b cf                                           	mov    ecx,edi
  d6c233:	89 86 3c 01 00 00                               	mov    DWORD PTR [esi+0x13c],eax
  d6c239:	e8 f2 e2 a2 ff                                  	call   0x79a530
  d6c23e:	89 86 40 01 00 00                               	mov    DWORD PTR [esi+0x140],eax
  d6c244:	6a 10                                           	push   0x10
  d6c246:	68 c0 38 ff 00                                  	push   0xff38c0
  d6c24b:	8d 96 44 01 00 00                               	lea    edx,[esi+0x144]
  d6c251:	52                                              	push   edx
  d6c252:	8b ce                                           	mov    ecx,esi
  d6c254:	e8 f7 e5 ff ff                                  	call   0xd6a850
  d6c259:	6a 01                                           	push   0x1
  d6c25b:	68 80 bb 08 01                                  	push   0x108bb80
  d6c260:	8d 86 64 01 00 00                               	lea    eax,[esi+0x164]
  d6c266:	50                                              	push   eax
  d6c267:	8b ce                                           	mov    ecx,esi
  d6c269:	e8 e2 e5 ff ff                                  	call   0xd6a850
  d6c26e:	6a 01                                           	push   0x1
  d6c270:	68 64 bb 08 01                                  	push   0x108bb64
  d6c275:	8d 8e 68 01 00 00                               	lea    ecx,[esi+0x168]
  d6c27b:	51                                              	push   ecx
  d6c27c:	8b ce                                           	mov    ecx,esi
  d6c27e:	e8 cd e5 ff ff                                  	call   0xd6a850
  d6c283:	6a 01                                           	push   0x1
  d6c285:	68 44 bb 08 01                                  	push   0x108bb44
  d6c28a:	8d 96 6c 01 00 00                               	lea    edx,[esi+0x16c]
  d6c290:	52                                              	push   edx
  d6c291:	8b ce                                           	mov    ecx,esi
  d6c293:	e8 b8 e5 ff ff                                  	call   0xd6a850
  d6c298:	6a 01                                           	push   0x1
  d6c29a:	68 2c bb 08 01                                  	push   0x108bb2c
  d6c29f:	8d 86 70 01 00 00                               	lea    eax,[esi+0x170]
  d6c2a5:	50                                              	push   eax
  d6c2a6:	8b ce                                           	mov    ecx,esi
  d6c2a8:	e8 a3 e5 ff ff                                  	call   0xd6a850
  d6c2ad:	6a 01                                           	push   0x1
  d6c2af:	68 10 bb 08 01                                  	push   0x108bb10
  d6c2b4:	8d 8e 74 01 00 00                               	lea    ecx,[esi+0x174]
  d6c2ba:	51                                              	push   ecx
  d6c2bb:	8b ce                                           	mov    ecx,esi
  d6c2bd:	e8 8e e5 ff ff                                  	call   0xd6a850
  d6c2c2:	6a 01                                           	push   0x1
  d6c2c4:	68 ec ba 08 01                                  	push   0x108baec
  d6c2c9:	8d 96 78 01 00 00                               	lea    edx,[esi+0x178]
  d6c2cf:	52                                              	push   edx
  d6c2d0:	8b ce                                           	mov    ecx,esi
  d6c2d2:	e8 79 e5 ff ff                                  	call   0xd6a850
  d6c2d7:	6a 01                                           	push   0x1
  d6c2d9:	68 d4 ba 08 01                                  	push   0x108bad4
  d6c2de:	8d 86 48 01 00 00                               	lea    eax,[esi+0x148]
  d6c2e4:	50                                              	push   eax
  d6c2e5:	8b ce                                           	mov    ecx,esi
  d6c2e7:	e8 64 e5 ff ff                                  	call   0xd6a850
  d6c2ec:	6a 10                                           	push   0x10
  d6c2ee:	68 ac ba 08 01                                  	push   0x108baac
  d6c2f3:	8d 8e 4c 01 00 00                               	lea    ecx,[esi+0x14c]
  d6c2f9:	51                                              	push   ecx
  d6c2fa:	8b ce                                           	mov    ecx,esi
  d6c2fc:	e8 4f e5 ff ff                                  	call   0xd6a850
  d6c301:	6a 10                                           	push   0x10
  d6c303:	68 84 ba 08 01                                  	push   0x108ba84
  d6c308:	8d 96 50 01 00 00                               	lea    edx,[esi+0x150]
  d6c30e:	52                                              	push   edx
  d6c30f:	8b ce                                           	mov    ecx,esi
  d6c311:	e8 3a e5 ff ff                                  	call   0xd6a850
  d6c316:	6a 01                                           	push   0x1
  d6c318:	68 6c ba 08 01                                  	push   0x108ba6c
  d6c31d:	8d 86 54 01 00 00                               	lea    eax,[esi+0x154]
  d6c323:	50                                              	push   eax
  d6c324:	8b ce                                           	mov    ecx,esi
  d6c326:	e8 25 e5 ff ff                                  	call   0xd6a850
  d6c32b:	6a 10                                           	push   0x10
  d6c32d:	68 50 ba 08 01                                  	push   0x108ba50
  d6c332:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
  d6c338:	51                                              	push   ecx
  d6c339:	8b ce                                           	mov    ecx,esi
  d6c33b:	e8 10 e5 ff ff                                  	call   0xd6a850
  d6c340:	6a 10                                           	push   0x10
  d6c342:	68 20 ba 08 01                                  	push   0x108ba20
  d6c347:	8d 96 5c 01 00 00                               	lea    edx,[esi+0x15c]
  d6c34d:	52                                              	push   edx
  d6c34e:	8b ce                                           	mov    ecx,esi
  d6c350:	e8 fb e4 ff ff                                  	call   0xd6a850
  d6c355:	6a 10                                           	push   0x10
  d6c357:	68 04 ba 08 01                                  	push   0x108ba04
  d6c35c:	8d 86 7c 01 00 00                               	lea    eax,[esi+0x17c]
  d6c362:	50                                              	push   eax
  d6c363:	8b ce                                           	mov    ecx,esi
  d6c365:	e8 e6 e4 ff ff                                  	call   0xd6a850
  d6c36a:	6a 10                                           	push   0x10
  d6c36c:	68 e0 b9 08 01                                  	push   0x108b9e0
  d6c371:	8d 8e 80 01 00 00                               	lea    ecx,[esi+0x180]
  d6c377:	51                                              	push   ecx
  d6c378:	8b ce                                           	mov    ecx,esi
  d6c37a:	e8 d1 e4 ff ff                                  	call   0xd6a850
  d6c37f:	6a 10                                           	push   0x10
  d6c381:	68 bc b9 08 01                                  	push   0x108b9bc
  d6c386:	8d 96 84 01 00 00                               	lea    edx,[esi+0x184]
  d6c38c:	52                                              	push   edx
  d6c38d:	8b ce                                           	mov    ecx,esi
  d6c38f:	e8 bc e4 ff ff                                  	call   0xd6a850
  d6c394:	6a 10                                           	push   0x10
  d6c396:	68 80 b9 08 01                                  	push   0x108b980
  d6c39b:	8d 86 88 01 00 00                               	lea    eax,[esi+0x188]
  d6c3a1:	50                                              	push   eax
  d6c3a2:	8b ce                                           	mov    ecx,esi
  d6c3a4:	e8 a7 e4 ff ff                                  	call   0xd6a850
  d6c3a9:	6a 10                                           	push   0x10
  d6c3ab:	68 44 b9 08 01                                  	push   0x108b944
  d6c3b0:	8d 8e 8c 01 00 00                               	lea    ecx,[esi+0x18c]
  d6c3b6:	51                                              	push   ecx
  d6c3b7:	8b ce                                           	mov    ecx,esi
  d6c3b9:	e8 92 e4 ff ff                                  	call   0xd6a850
  d6c3be:	6a 10                                           	push   0x10
  d6c3c0:	68 24 b9 08 01                                  	push   0x108b924
  d6c3c5:	8d 96 90 01 00 00                               	lea    edx,[esi+0x190]
  d6c3cb:	52                                              	push   edx
  d6c3cc:	8b ce                                           	mov    ecx,esi
  d6c3ce:	e8 7d e4 ff ff                                  	call   0xd6a850
  d6c3d3:	6a 10                                           	push   0x10
  d6c3d5:	68 04 b9 08 01                                  	push   0x108b904
  d6c3da:	8d 86 94 01 00 00                               	lea    eax,[esi+0x194]
  d6c3e0:	50                                              	push   eax
  d6c3e1:	8b ce                                           	mov    ecx,esi
  d6c3e3:	e8 68 e4 ff ff                                  	call   0xd6a850
  d6c3e8:	6a 01                                           	push   0x1
  d6c3ea:	68 e4 b8 08 01                                  	push   0x108b8e4
  d6c3ef:	8d 8e 98 01 00 00                               	lea    ecx,[esi+0x198]
  d6c3f5:	51                                              	push   ecx
  d6c3f6:	8b ce                                           	mov    ecx,esi
  d6c3f8:	e8 53 e4 ff ff                                  	call   0xd6a850
  d6c3fd:	6a 10                                           	push   0x10
  d6c3ff:	68 c4 b8 08 01                                  	push   0x108b8c4
  d6c404:	8d 96 b8 01 00 00                               	lea    edx,[esi+0x1b8]
  d6c40a:	52                                              	push   edx
  d6c40b:	8b ce                                           	mov    ecx,esi
  d6c40d:	e8 3e e4 ff ff                                  	call   0xd6a850
  d6c412:	6a 10                                           	push   0x10
  d6c414:	68 a4 b8 08 01                                  	push   0x108b8a4
  d6c419:	8d 86 bc 01 00 00                               	lea    eax,[esi+0x1bc]
  d6c41f:	50                                              	push   eax
  d6c420:	8b ce                                           	mov    ecx,esi
  d6c422:	e8 29 e4 ff ff                                  	call   0xd6a850
  d6c427:	6a 10                                           	push   0x10
  d6c429:	68 88 b8 08 01                                  	push   0x108b888
  d6c42e:	8d 8e 9c 01 00 00                               	lea    ecx,[esi+0x19c]
  d6c434:	51                                              	push   ecx
  d6c435:	8b ce                                           	mov    ecx,esi
  d6c437:	e8 14 e4 ff ff                                  	call   0xd6a850
  d6c43c:	6a 10                                           	push   0x10
  d6c43e:	68 68 b8 08 01                                  	push   0x108b868
  d6c443:	8d 96 a0 01 00 00                               	lea    edx,[esi+0x1a0]
  d6c449:	52                                              	push   edx
  d6c44a:	8b ce                                           	mov    ecx,esi
  d6c44c:	e8 ff e3 ff ff                                  	call   0xd6a850
  d6c451:	6a 01                                           	push   0x1
  d6c453:	68 98 ef 06 01                                  	push   0x106ef98
  d6c458:	8d 86 a4 01 00 00                               	lea    eax,[esi+0x1a4]
  d6c45e:	50                                              	push   eax
  d6c45f:	8b ce                                           	mov    ecx,esi
  d6c461:	e8 ea e3 ff ff                                  	call   0xd6a850
  d6c466:	6a 10                                           	push   0x10
  d6c468:	68 40 b8 08 01                                  	push   0x108b840
  d6c46d:	8d 8e a8 01 00 00                               	lea    ecx,[esi+0x1a8]
  d6c473:	51                                              	push   ecx
  d6c474:	8b ce                                           	mov    ecx,esi
  d6c476:	e8 d5 e3 ff ff                                  	call   0xd6a850
  d6c47b:	6a 10                                           	push   0x10
  d6c47d:	68 10 b8 08 01                                  	push   0x108b810
  d6c482:	8d 96 ac 01 00 00                               	lea    edx,[esi+0x1ac]
  d6c488:	52                                              	push   edx
  d6c489:	8b ce                                           	mov    ecx,esi
  d6c48b:	e8 c0 e3 ff ff                                  	call   0xd6a850
  d6c490:	6a 10                                           	push   0x10
  d6c492:	68 f4 b7 08 01                                  	push   0x108b7f4
  d6c497:	8d 86 b4 01 00 00                               	lea    eax,[esi+0x1b4]
  d6c49d:	50                                              	push   eax
  d6c49e:	8b ce                                           	mov    ecx,esi
  d6c4a0:	e8 ab e3 ff ff                                  	call   0xd6a850
  d6c4a5:	6a 10                                           	push   0x10
  d6c4a7:	68 c8 b7 08 01                                  	push   0x108b7c8
  d6c4ac:	8d be b0 01 00 00                               	lea    edi,[esi+0x1b0]
  d6c4b2:	57                                              	push   edi
  d6c4b3:	8b ce                                           	mov    ecx,esi
  d6c4b5:	e8 96 e3 ff ff                                  	call   0xd6a850
  d6c4ba:	6a 01                                           	push   0x1
  d6c4bc:	68 6c ba 08 01                                  	push   0x108ba6c
  d6c4c1:	57                                              	push   edi
  d6c4c2:	8b ce                                           	mov    ecx,esi
  d6c4c4:	e8 87 e3 ff ff                                  	call   0xd6a850
  d6c4c9:	5f                                              	pop    edi
  d6c4ca:	8b ce                                           	mov    ecx,esi
  d6c4cc:	5e                                              	pop    esi
  d6c4cd:	81 c4 80 00 00 00                               	add    esp,0x80
  d6c4d3:	e9 b8 d2 ff ff                                  	jmp    0xd69790
  d6c4d8:	5f                                              	pop    edi
  d6c4d9:	5e                                              	pop    esi
  d6c4da:	81 c4 80 00 00 00                               	add    esp,0x80
  d6c4e0:	c3                                              	ret
