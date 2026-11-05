# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00ad6150,0x00ad6301); analyst name LotContent_ImportTravelHouseholdAndRemapId.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ad6150 <.text+0x6d5150>:
  ad6150:	81 ec dc 00 00 00    	sub    esp,0xdc
  ad6156:	55                   	push   ebp
  ad6157:	56                   	push   esi
  ad6158:	8b b4 24 e8 00 00 00 	mov    esi,DWORD PTR [esp+0xe8]
  ad615f:	8b 0e                	mov    ecx,DWORD PTR [esi]
  ad6161:	33 ed                	xor    ebp,ebp
  ad6163:	8d 54 24 18          	lea    edx,[esp+0x18]
  ad6167:	52                   	push   edx
  ad6168:	c7 44 24 1c b0 92 fd 00 	mov    DWORD PTR [esp+0x1c],0xfd92b0
  ad6170:	c7 44 24 20 a8 53 28 06 	mov    DWORD PTR [esp+0x20],0x62853a8
  ad6178:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
  ad617c:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
  ad6180:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
  ad6184:	c7 44 24 18 9c 6f 06 01 	mov    DWORD PTR [esp+0x18],0x1066f9c
  ad618c:	8b 01                	mov    eax,DWORD PTR [ecx]
  ad618e:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
  ad6191:	8d 54 24 0c          	lea    edx,[esp+0xc]
  ad6195:	52                   	push   edx
  ad6196:	ff d0                	call   eax
  ad6198:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  ad619c:	3b 44 24 0c          	cmp    eax,DWORD PTR [esp+0xc]
  ad61a0:	75 1c                	jne    0xad61be
  ad61a2:	3b c5                	cmp    eax,ebp
  ad61a4:	74 09                	je     0xad61af
  ad61a6:	50                   	push   eax
  ad61a7:	e8 34 e3 a0 ff       	call   0x4e44e0
  ad61ac:	83 c4 04             	add    esp,0x4
  ad61af:	5e                   	pop    esi
  ad61b0:	33 c0                	xor    eax,eax
  ad61b2:	33 d2                	xor    edx,edx
  ad61b4:	5d                   	pop    ebp
  ad61b5:	81 c4 dc 00 00 00    	add    esp,0xdc
  ad61bb:	c2 04 00             	ret    0x4
  ad61be:	53                   	push   ebx
  ad61bf:	57                   	push   edi
  ad61c0:	8b 3d a4 a6 1e 01    	mov    edi,DWORD PTR ds:0x11ea6a4
  ad61c6:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  ad61ca:	e8 31 17 d0 ff       	call   0x7d7900
  ad61cf:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  ad61d3:	51                   	push   ecx
  ad61d4:	8b cf                	mov    ecx,edi
  ad61d6:	e8 05 b5 ec ff       	call   0x9a16e0
  ad61db:	84 c0                	test   al,al
  ad61dd:	0f 84 f3 00 00 00    	je     0xad62d6
  ad61e3:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  ad61e7:	8b 38                	mov    edi,DWORD PTR [eax]
  ad61e9:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
  ad61ec:	55                   	push   ebp
  ad61ed:	e8 0e 9c cf ff       	call   0x7cfe00
  ad61f2:	6a 00                	push   0x0
  ad61f4:	89 54 24 6c          	mov    DWORD PTR [esp+0x6c],edx
  ad61f8:	89 54 24 64          	mov    DWORD PTR [esp+0x64],edx
  ad61fc:	8d 54 24 58          	lea    edx,[esp+0x58]
  ad6200:	52                   	push   edx
  ad6201:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  ad6205:	6a 00                	push   0x0
  ad6207:	8b e8                	mov    ebp,eax
  ad6209:	8b 06                	mov    eax,DWORD PTR [esi]
  ad620b:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  ad620f:	51                   	push   ecx
  ad6210:	50                   	push   eax
  ad6211:	52                   	push   edx
  ad6212:	c7 44 24 44 ec 6c 06 01 	mov    DWORD PTR [esp+0x44],0x1066cec
  ad621a:	89 7c 24 4c          	mov    DWORD PTR [esp+0x4c],edi
  ad621e:	89 5c 24 50          	mov    DWORD PTR [esp+0x50],ebx
  ad6222:	c7 44 24 6c 94 8e 06 01 	mov    DWORD PTR [esp+0x6c],0x1068e94
  ad622a:	89 6c 24 74          	mov    DWORD PTR [esp+0x74],ebp
  ad622e:	e8 fd 2e d0 ff       	call   0x7d9130
  ad6233:	83 c4 1c             	add    esp,0x1c
  ad6236:	85 c0                	test   eax,eax
  ad6238:	0f 86 98 00 00 00    	jbe    0xad62d6
  ad623e:	6a 00                	push   0x0
  ad6240:	8d 4c 24 6c          	lea    ecx,[esp+0x6c]
  ad6244:	e8 97 09 d0 ff       	call   0x7d6be0
  ad6249:	6a 01                	push   0x1
  ad624b:	53                   	push   ebx
  ad624c:	57                   	push   edi
  ad624d:	68 95 30 28 00       	push   0x283095
  ad6252:	56                   	push   esi
  ad6253:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  ad6257:	e8 94 11 d0 ff       	call   0x7d73f0
  ad625c:	84 c0                	test   al,al
  ad625e:	74 6d                	je     0xad62cd
  ad6260:	56                   	push   esi
  ad6261:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  ad6265:	50                   	push   eax
  ad6266:	8d 8c 24 d0 00 00 00 	lea    ecx,[esp+0xd0]
  ad626d:	51                   	push   ecx
  ad626e:	e8 6d f7 ff ff       	call   0xad59e0
  ad6273:	8b 74 24 70          	mov    esi,DWORD PTR [esp+0x70]
  ad6277:	83 c4 0c             	add    esp,0xc
  ad627a:	6a 00                	push   0x0
  ad627c:	56                   	push   esi
  ad627d:	55                   	push   ebp
  ad627e:	68 95 30 28 00       	push   0x283095
  ad6283:	8d 54 24 48          	lea    edx,[esp+0x48]
  ad6287:	52                   	push   edx
  ad6288:	8d 4c 24 7c          	lea    ecx,[esp+0x7c]
  ad628c:	e8 af 06 d0 ff       	call   0x7d6940
  ad6291:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  ad6295:	e8 f6 05 d0 ff       	call   0x7d6890
  ad629a:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  ad629e:	c7 44 24 28 cc 3c fb 00 	mov    DWORD PTR [esp+0x28],0xfb3ccc
  ad62a6:	e8 e5 16 d0 ff       	call   0x7d7990
  ad62ab:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  ad62af:	85 c0                	test   eax,eax
  ad62b1:	74 09                	je     0xad62bc
  ad62b3:	50                   	push   eax
  ad62b4:	e8 27 e2 a0 ff       	call   0x4e44e0
  ad62b9:	83 c4 04             	add    esp,0x4
  ad62bc:	5f                   	pop    edi
  ad62bd:	5b                   	pop    ebx
  ad62be:	8b d6                	mov    edx,esi
  ad62c0:	5e                   	pop    esi
  ad62c1:	8b c5                	mov    eax,ebp
  ad62c3:	5d                   	pop    ebp
  ad62c4:	81 c4 dc 00 00 00    	add    esp,0xdc
  ad62ca:	c2 04 00             	ret    0x4
  ad62cd:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  ad62d1:	e8 ba 05 d0 ff       	call   0x7d6890
  ad62d6:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  ad62da:	e8 b1 16 d0 ff       	call   0x7d7990
  ad62df:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  ad62e3:	85 c0                	test   eax,eax
  ad62e5:	74 09                	je     0xad62f0
  ad62e7:	50                   	push   eax
  ad62e8:	e8 f3 e1 a0 ff       	call   0x4e44e0
  ad62ed:	83 c4 04             	add    esp,0x4
  ad62f0:	5f                   	pop    edi
  ad62f1:	5b                   	pop    ebx
  ad62f2:	5e                   	pop    esi
  ad62f3:	33 c0                	xor    eax,eax
  ad62f5:	33 d2                	xor    edx,edx
  ad62f7:	5d                   	pop    ebp
  ad62f8:	81 c4 dc 00 00 00    	add    esp,0xdc
  ad62fe:	c2 04 00             	ret    0x4
