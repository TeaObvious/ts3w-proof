# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00661fa0, 0x00662e6e); analyst name RouteGraph_PlanWithRecovery.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00661fa0 <.text+0x260fa0>:
  661fa0:	55                   	push   ebp
  661fa1:	8b ec                	mov    ebp,esp
  661fa3:	83 e4 f0             	and    esp,0xfffffff0
  661fa6:	81 ec f4 00 00 00    	sub    esp,0xf4
  661fac:	8b 45 34             	mov    eax,DWORD PTR [ebp+0x34]
  661faf:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  661fb2:	8b 55 2c             	mov    edx,DWORD PTR [ebp+0x2c]
  661fb5:	53                   	push   ebx
  661fb6:	56                   	push   esi
  661fb7:	8b 75 28             	mov    esi,DWORD PTR [ebp+0x28]
  661fba:	57                   	push   edi
  661fbb:	50                   	push   eax
  661fbc:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  661fbf:	8b d9                	mov    ebx,ecx
  661fc1:	8b 4d 30             	mov    ecx,DWORD PTR [ebp+0x30]
  661fc4:	51                   	push   ecx
  661fc5:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  661fc8:	52                   	push   edx
  661fc9:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  661fcc:	56                   	push   esi
  661fcd:	50                   	push   eax
  661fce:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  661fd1:	51                   	push   ecx
  661fd2:	52                   	push   edx
  661fd3:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  661fd6:	50                   	push   eax
  661fd7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  661fda:	51                   	push   ecx
  661fdb:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  661fde:	d9 1c 24             	fstp   DWORD PTR [esp]
  661fe1:	51                   	push   ecx
  661fe2:	52                   	push   edx
  661fe3:	50                   	push   eax
  661fe4:	8b cb                	mov    ecx,ebx
  661fe6:	e8 35 c5 ff ff       	call   0x65e520
  661feb:	8b f8                	mov    edi,eax
  661fed:	83 ff 08             	cmp    edi,0x8
  661ff0:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  661ff4:	75 09                	jne    0x661fff
  661ff6:	5f                   	pop    edi
  661ff7:	5e                   	pop    esi
  661ff8:	5b                   	pop    ebx
  661ff9:	8b e5                	mov    esp,ebp
  661ffb:	5d                   	pop    ebp
  661ffc:	c2 30 00             	ret    0x30
  661fff:	83 ff 06             	cmp    edi,0x6
  662002:	75 43                	jne    0x662047
  662004:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  662007:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  66200a:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  66200d:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  662010:	51                   	push   ecx
  662011:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  662014:	52                   	push   edx
  662015:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  662018:	50                   	push   eax
  662019:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  66201c:	81 ce 00 00 80 00    	or     esi,0x800000
  662022:	56                   	push   esi
  662023:	51                   	push   ecx
  662024:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  662027:	52                   	push   edx
  662028:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  66202b:	50                   	push   eax
  66202c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  66202f:	51                   	push   ecx
  662030:	51                   	push   ecx
  662031:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  662034:	d9 1c 24             	fstp   DWORD PTR [esp]
  662037:	52                   	push   edx
  662038:	50                   	push   eax
  662039:	51                   	push   ecx
  66203a:	8b cb                	mov    ecx,ebx
  66203c:	e8 df c4 ff ff       	call   0x65e520
  662041:	8b f8                	mov    edi,eax
  662043:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  662047:	85 ff                	test   edi,edi
  662049:	0f 84 aa 0b 00 00    	je     0x662bf9
  66204f:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  662052:	8b 01                	mov    eax,DWORD PTR [ecx]
  662054:	3b 41 04             	cmp    eax,DWORD PTR [ecx+0x4]
  662057:	0f 84 cb 02 00 00    	je     0x662328
  66205d:	d9 00                	fld    DWORD PTR [eax]
  66205f:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
  662062:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  662065:	d9 54 24 20          	fst    DWORD PTR [esp+0x20]
  662069:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  66206c:	83 ec 0c             	sub    esp,0xc
  66206f:	d9 54 24 5c          	fst    DWORD PTR [esp+0x5c]
  662073:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  662077:	d9 ee                	fldz
  662079:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  66207d:	d9 1c 24             	fstp   DWORD PTR [esp]
  662080:	52                   	push   edx
  662081:	e8 aa bb 00 00       	call   0x66dc30
  662086:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  662089:	3b 41 0c             	cmp    eax,DWORD PTR [ecx+0xc]
  66208c:	73 0d                	jae    0x66209b
  66208e:	8b 49 1c             	mov    ecx,DWORD PTR [ecx+0x1c]
  662091:	80 3c 41 00          	cmp    BYTE PTR [ecx+eax*2],0x0
  662095:	0f 85 8d 02 00 00    	jne    0x662328
  66209b:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  66209f:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  6620a2:	6a 01                	push   0x1
  6620a4:	6a 00                	push   0x0
  6620a6:	6a 00                	push   0x0
  6620a8:	6a 00                	push   0x0
  6620aa:	6a 00                	push   0x0
  6620ac:	6a 00                	push   0x0
  6620ae:	6a 00                	push   0x0
  6620b0:	6a 00                	push   0x0
  6620b2:	6a 00                	push   0x0
  6620b4:	83 ec 08             	sub    esp,0x8
  6620b7:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6620bb:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  6620bf:	d9 1c 24             	fstp   DWORD PTR [esp]
  6620c2:	e8 b9 82 60 00       	call   0xc6a380
  6620c7:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  6620ca:	d9 5c 24 28          	fstp   DWORD PTR [esp+0x28]
  6620ce:	e8 bd ef 5f 00       	call   0xc61090
  6620d3:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  6620d7:	d9 c9                	fxch   st(1)
  6620d9:	df f1                	fcomip st,st(1)
  6620db:	dd d8                	fstp   st(0)
  6620dd:	73 24                	jae    0x662103
  6620df:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  6620e3:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  6620e6:	6a 00                	push   0x0
  6620e8:	83 ec 08             	sub    esp,0x8
  6620eb:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6620ef:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  6620f3:	d9 1c 24             	fstp   DWORD PTR [esp]
  6620f6:	e8 85 e7 5f 00       	call   0xc60880
  6620fb:	85 c0                	test   eax,eax
  6620fd:	0f 84 25 02 00 00    	je     0x662328
  662103:	f3 0f 10 05 58 e5 fe 00 	movss  xmm0,DWORD PTR ds:0xfee558
  66210b:	f3 0f 10 54 24 50    	movss  xmm2,DWORD PTR [esp+0x50]
  662111:	f3 0f 10 4c 24 20    	movss  xmm1,DWORD PTR [esp+0x20]
  662117:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  66211d:	0f 57 c0             	xorps  xmm0,xmm0
  662120:	32 c9                	xor    cl,cl
  662122:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  662128:	88 4c 24 1b          	mov    BYTE PTR [esp+0x1b],cl
  66212c:	c7 44 24 20 01 00 00 00 	mov    DWORD PTR [esp+0x20],0x1
  662134:	84 c9                	test   cl,cl
  662136:	0f 85 ec 01 00 00    	jne    0x662328
  66213c:	c7 44 24 28 00 00 00 00 	mov    DWORD PTR [esp+0x28],0x0
  662144:	84 c9                	test   cl,cl
  662146:	0f 85 c4 01 00 00    	jne    0x662310
  66214c:	83 7c 24 20 00       	cmp    DWORD PTR [esp+0x20],0x0
  662151:	c7 44 24 24 00 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
  662159:	0f 8e 71 01 00 00    	jle    0x6622d0
  66215f:	33 ff                	xor    edi,edi
  662161:	84 c9                	test   cl,cl
  662163:	0f 85 67 01 00 00    	jne    0x6622d0
  662169:	f3 0f 10 5c 24 50    	movss  xmm3,DWORD PTR [esp+0x50]
  66216f:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  662172:	f3 0f 58 d9          	addss  xmm3,xmm1
  662176:	0f 28 cb             	movaps xmm1,xmm3
  662179:	0f 2f 88 b4 00 00 00 	comiss xmm1,DWORD PTR [eax+0xb4]
  662180:	0f 28 d8             	movaps xmm3,xmm0
  662183:	f3 0f 58 da          	addss  xmm3,xmm2
  662187:	0f 28 d3             	movaps xmm2,xmm3
  66218a:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  662190:	f3 0f 11 54 24 10    	movss  DWORD PTR [esp+0x10],xmm2
  662196:	0f 82 1b 01 00 00    	jb     0x6622b7
  66219c:	0f 2f 90 b8 00 00 00 	comiss xmm2,DWORD PTR [eax+0xb8]
  6621a3:	0f 82 0e 01 00 00    	jb     0x6622b7
  6621a9:	f3 0f 10 98 bc 00 00 00 	movss  xmm3,DWORD PTR [eax+0xbc]
  6621b1:	0f 2f d9             	comiss xmm3,xmm1
  6621b4:	0f 86 fd 00 00 00    	jbe    0x6622b7
  6621ba:	f3 0f 10 98 c4 00 00 00 	movss  xmm3,DWORD PTR [eax+0xc4]
  6621c2:	f3 0f 58 98 c0 00 00 00 	addss  xmm3,DWORD PTR [eax+0xc0]
  6621ca:	0f 2f da             	comiss xmm3,xmm2
  6621cd:	0f 86 e4 00 00 00    	jbe    0x6622b7
  6621d3:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  6621d7:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  6621da:	83 ec 0c             	sub    esp,0xc
  6621dd:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  6621e1:	d9 ee                	fldz
  6621e3:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6621e7:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  6621eb:	d9 1c 24             	fstp   DWORD PTR [esp]
  6621ee:	50                   	push   eax
  6621ef:	e8 3c ba 00 00       	call   0x66dc30
  6621f4:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  6621f7:	3b 41 0c             	cmp    eax,DWORD PTR [ecx+0xc]
  6621fa:	0f 83 a5 00 00 00    	jae    0x6622a5
  662200:	8b 51 1c             	mov    edx,DWORD PTR [ecx+0x1c]
  662203:	80 3c 42 00          	cmp    BYTE PTR [edx+eax*2],0x0
  662207:	0f 84 98 00 00 00    	je     0x6622a5
  66220d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  662210:	8b 08                	mov    ecx,DWORD PTR [eax]
  662212:	51                   	push   ecx
  662213:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  662217:	89 7c 24 44          	mov    DWORD PTR [esp+0x44],edi
  66221b:	89 7c 24 48          	mov    DWORD PTR [esp+0x48],edi
  66221f:	89 7c 24 4c          	mov    DWORD PTR [esp+0x4c],edi
  662223:	c7 44 24 50 3c e5 fe 00 	mov    DWORD PTR [esp+0x50],0xfee53c
  66222b:	e8 e0 47 ff ff       	call   0x656a10
  662230:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  662233:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  662237:	f3 0f 10 44 24 14    	movss  xmm0,DWORD PTR [esp+0x14]
  66223d:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  662240:	51                   	push   ecx
  662241:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  662244:	f3 0f 11 02          	movss  DWORD PTR [edx],xmm0
  662248:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  66224c:	f3 0f 10 44 24 14    	movss  xmm0,DWORD PTR [esp+0x14]
  662252:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  662255:	52                   	push   edx
  662256:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  662259:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  66225e:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  662261:	50                   	push   eax
  662262:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  662265:	81 ce 00 00 00 11    	or     esi,0x11000000
  66226b:	56                   	push   esi
  66226c:	51                   	push   ecx
  66226d:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  662270:	52                   	push   edx
  662271:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  662274:	50                   	push   eax
  662275:	51                   	push   ecx
  662276:	51                   	push   ecx
  662277:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  66227a:	d9 1c 24             	fstp   DWORD PTR [esp]
  66227d:	52                   	push   edx
  66227e:	8d 44 24 68          	lea    eax,[esp+0x68]
  662282:	50                   	push   eax
  662283:	51                   	push   ecx
  662284:	8b cb                	mov    ecx,ebx
  662286:	e8 95 c2 ff ff       	call   0x65e520
  66228b:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  66228f:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  662293:	3b c7                	cmp    eax,edi
  662295:	c6 44 24 1b 01       	mov    BYTE PTR [esp+0x1b],0x1
  66229a:	74 09                	je     0x6622a5
  66229c:	50                   	push   eax
  66229d:	e8 3e 22 e8 ff       	call   0x4e44e0
  6622a2:	83 c4 04             	add    esp,0x4
  6622a5:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  6622ab:	f3 0f 10 54 24 10    	movss  xmm2,DWORD PTR [esp+0x10]
  6622b1:	f3 0f 10 44 24 3c    	movss  xmm0,DWORD PTR [esp+0x3c]
  6622b7:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  6622bb:	8a 4c 24 1b          	mov    cl,BYTE PTR [esp+0x1b]
  6622bf:	83 c0 01             	add    eax,0x1
  6622c2:	3b 44 24 20          	cmp    eax,DWORD PTR [esp+0x20]
  6622c6:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  6622ca:	0f 8c 91 fe ff ff    	jl     0x662161
  6622d0:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  6622d4:	85 c0                	test   eax,eax
  6622d6:	74 0b                	je     0x6622e3
  6622d8:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  6622de:	0f 57 c0             	xorps  xmm0,xmm0
  6622e1:	eb 17                	jmp    0x6622fa
  6622e3:	f3 0f 10 05 f0 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f0
  6622eb:	f3 0f 5c 44 24 50    	subss  xmm0,DWORD PTR [esp+0x50]
  6622f1:	0f 57 db             	xorps  xmm3,xmm3
  6622f4:	f3 0f 11 5c 24 50    	movss  DWORD PTR [esp+0x50],xmm3
  6622fa:	83 c0 01             	add    eax,0x1
  6622fd:	83 f8 02             	cmp    eax,0x2
  662300:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  662306:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  66230a:	0f 8c 34 fe ff ff    	jl     0x662144
  662310:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  662314:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  662318:	83 c0 01             	add    eax,0x1
  66231b:	83 f8 0a             	cmp    eax,0xa
  66231e:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  662322:	0f 8c 0c fe ff ff    	jl     0x662134
  662328:	85 ff                	test   edi,edi
  66232a:	0f 84 c9 08 00 00    	je     0x662bf9
  662330:	f7 c6 00 04 00 00    	test   esi,0x400
  662336:	0f 84 bd 08 00 00    	je     0x662bf9
  66233c:	83 7d 1c 00          	cmp    DWORD PTR [ebp+0x1c],0x0
  662340:	0f 84 b3 08 00 00    	je     0x662bf9
  662346:	8b 45 34             	mov    eax,DWORD PTR [ebp+0x34]
  662349:	85 c0                	test   eax,eax
  66234b:	c7 44 24 10 00 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  662353:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  662357:	74 0a                	je     0x662363
  662359:	8b 10                	mov    edx,DWORD PTR [eax]
  66235b:	52                   	push   edx
  66235c:	e8 2f 42 f0 ff       	call   0x566590
  662361:	eb 39                	jmp    0x66239c
  662363:	e8 78 25 2d 00       	call   0x9348e0
  662368:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  66236b:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  66236e:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  662371:	50                   	push   eax
  662372:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  662375:	50                   	push   eax
  662376:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  662379:	51                   	push   ecx
  66237a:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  66237d:	56                   	push   esi
  66237e:	52                   	push   edx
  66237f:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  662382:	50                   	push   eax
  662383:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  662386:	51                   	push   ecx
  662387:	52                   	push   edx
  662388:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  66238b:	51                   	push   ecx
  66238c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  66238f:	d9 1c 24             	fstp   DWORD PTR [esp]
  662392:	50                   	push   eax
  662393:	51                   	push   ecx
  662394:	52                   	push   edx
  662395:	8b cb                	mov    ecx,ebx
  662397:	e8 84 c1 ff ff       	call   0x65e520
  66239c:	6a 00                	push   0x0
  66239e:	6a 00                	push   0x0
  6623a0:	6a 00                	push   0x0
  6623a2:	6a 00                	push   0x0
  6623a4:	68 a0 d8 fe 00       	push   0xfed8a0
  6623a9:	6a 18                	push   0x18
  6623ab:	e8 50 21 e8 ff       	call   0x4e4500
  6623b0:	83 c4 18             	add    esp,0x18
  6623b3:	85 c0                	test   eax,eax
  6623b5:	0f 84 b3 00 00 00    	je     0x66246e
  6623bb:	8b c8                	mov    ecx,eax
  6623bd:	e8 5e ca fe ff       	call   0x64ee20
  6623c2:	8b f8                	mov    edi,eax
  6623c4:	85 ff                	test   edi,edi
  6623c6:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  6623ca:	74 08                	je     0x6623d4
  6623cc:	8b 07                	mov    eax,DWORD PTR [edi]
  6623ce:	8b 10                	mov    edx,DWORD PTR [eax]
  6623d0:	8b cf                	mov    ecx,edi
  6623d2:	ff d2                	call   edx
  6623d4:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  6623d7:	89 38                	mov    DWORD PTR [eax],edi
  6623d9:	8b 17                	mov    edx,DWORD PTR [edi]
  6623db:	8b 02                	mov    eax,DWORD PTR [edx]
  6623dd:	8b cf                	mov    ecx,edi
  6623df:	ff d0                	call   eax
  6623e1:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6623e4:	8b 01                	mov    eax,DWORD PTR [ecx]
  6623e6:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  6623ea:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  6623ed:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  6623f3:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  6623f8:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  6623fe:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
  662402:	c7 44 24 28 03 00 00 00 	mov    DWORD PTR [esp+0x28],0x3
  66240a:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  66240e:	33 c0                	xor    eax,eax
  662410:	3b c8                	cmp    ecx,eax
  662412:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  662416:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  66241a:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  66241e:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  662422:	c7 44 24 4c 24 e5 fe 00 	mov    DWORD PTR [esp+0x4c],0xfee524
  66242a:	c7 44 24 1c ff ff ff ff 	mov    DWORD PTR [esp+0x1c],0xffffffff
  662432:	74 49                	je     0x66247d
  662434:	e8 b7 c9 fe ff       	call   0x64edf0
  662439:	33 ff                	xor    edi,edi
  66243b:	85 c0                	test   eax,eax
  66243d:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  662441:	76 3a                	jbe    0x66247d
  662443:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  662447:	57                   	push   edi
  662448:	e8 c3 c9 fe ff       	call   0x64ee10
  66244d:	83 38 14             	cmp    DWORD PTR [eax],0x14
  662450:	74 11                	je     0x662463
  662452:	50                   	push   eax
  662453:	8b 43 0c             	mov    eax,DWORD PTR [ebx+0xc]
  662456:	50                   	push   eax
  662457:	e8 d4 fb fe ff       	call   0x652030
  66245c:	83 c4 08             	add    esp,0x8
  66245f:	84 c0                	test   al,al
  662461:	75 16                	jne    0x662479
  662463:	83 c7 01             	add    edi,0x1
  662466:	3b 7c 24 24          	cmp    edi,DWORD PTR [esp+0x24]
  66246a:	72 d7                	jb     0x662443
  66246c:	eb 0f                	jmp    0x66247d
  66246e:	33 ff                	xor    edi,edi
  662470:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  662474:	e9 5b ff ff ff       	jmp    0x6623d4
  662479:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  66247d:	83 7c 24 1c ff       	cmp    DWORD PTR [esp+0x1c],0xffffffff
  662482:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  662485:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  66248a:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  66248e:	f3 0f 10 54 24 30    	movss  xmm2,DWORD PTR [esp+0x30]
  662494:	f3 0f 10 5c 24 34    	movss  xmm3,DWORD PTR [esp+0x34]
  66249a:	f3 0f 5c c3          	subss  xmm0,xmm3
  66249e:	f3 0f 5c ca          	subss  xmm1,xmm2
  6624a2:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  6624a8:	f3 0f 59 c0          	mulss  xmm0,xmm0
  6624ac:	0f 28 e1             	movaps xmm4,xmm1
  6624af:	f3 0f 59 e1          	mulss  xmm4,xmm1
  6624b3:	f3 0f 58 c4          	addss  xmm0,xmm4
  6624b7:	f3 0f 11 4c 24 50    	movss  DWORD PTR [esp+0x50],xmm1
  6624bd:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6624c1:	0f 51 c0             	sqrtps xmm0,xmm0
  6624c4:	0f 29 84 24 d0 00 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm0
  6624cc:	0f 84 d2 04 00 00    	je     0x6629a4
  6624d2:	f3 0f 10 8c 24 d0 00 00 00 	movss  xmm1,DWORD PTR [esp+0xd0]
  6624db:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  6624e3:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  6624e7:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6624eb:	0f 59 c1             	mulps  xmm0,xmm1
  6624ee:	0f 5f c1             	maxps  xmm0,xmm1
  6624f1:	f3 0f 10 0d 9c e1 fe 00 	movss  xmm1,DWORD PTR ds:0xfee19c
  6624f9:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  6624fd:	0f c2 c1 02          	cmpleps xmm0,xmm1
  662501:	0f 50 c8             	movmskps ecx,xmm0
  662504:	83 f9 0f             	cmp    ecx,0xf
  662507:	0f 84 97 04 00 00    	je     0x6629a4
  66250d:	0f 57 c0             	xorps  xmm0,xmm0
  662510:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  662514:	8b 7c 24 38          	mov    edi,DWORD PTR [esp+0x38]
  662518:	8d 44 24 58          	lea    eax,[esp+0x58]
  66251c:	50                   	push   eax
  66251d:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  662521:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
  662525:	f3 0f 11 54 24 5c    	movss  DWORD PTR [esp+0x5c],xmm2
  66252b:	f3 0f 11 5c 24 60    	movss  DWORD PTR [esp+0x60],xmm3
  662531:	89 7c 24 64          	mov    DWORD PTR [esp+0x64],edi
  662535:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  66253b:	f3 0f 11 44 24 74    	movss  DWORD PTR [esp+0x74],xmm0
  662541:	c7 44 24 78 00 00 00 00 	mov    DWORD PTR [esp+0x78],0x0
  662549:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  66254f:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  662555:	e8 b6 44 ff ff       	call   0x656a10
  66255a:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  66255e:	51                   	push   ecx
  66255f:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  662563:	e8 a8 c8 fe ff       	call   0x64ee10
  662568:	f3 0f 10 60 18       	movss  xmm4,DWORD PTR [eax+0x18]
  66256d:	f3 0f 10 4c 24 30    	movss  xmm1,DWORD PTR [esp+0x30]
  662573:	f3 0f 10 54 24 34    	movss  xmm2,DWORD PTR [esp+0x34]
  662579:	f3 0f 11 a4 24 98 00 00 00 	movss  DWORD PTR [esp+0x98],xmm4
  662582:	f3 0f 10 68 1c       	movss  xmm5,DWORD PTR [eax+0x1c]
  662587:	f3 0f 5c cc          	subss  xmm1,xmm4
  66258b:	f3 0f 5c d5          	subss  xmm2,xmm5
  66258f:	0f 28 c2             	movaps xmm0,xmm2
  662592:	f3 0f 59 c2          	mulss  xmm0,xmm2
  662596:	0f 28 d9             	movaps xmm3,xmm1
  662599:	f3 0f 59 d9          	mulss  xmm3,xmm1
  66259d:	f3 0f 58 c3          	addss  xmm0,xmm3
  6625a1:	f3 0f 11 ac 24 9c 00 00 00 	movss  DWORD PTR [esp+0x9c],xmm5
  6625aa:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
  6625ad:	89 84 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],eax
  6625b4:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6625b8:	0f 51 c0             	sqrtps xmm0,xmm0
  6625bb:	0f 29 84 24 f0 00 00 00 	movaps XMMWORD PTR [esp+0xf0],xmm0
  6625c3:	f3 0f 10 9c 24 f0 00 00 00 	movss  xmm3,DWORD PTR [esp+0xf0]
  6625cc:	0f 2f 1d b4 b5 f9 00 	comiss xmm3,DWORD PTR ds:0xf9b5b4
  6625d3:	0f 86 4c 01 00 00    	jbe    0x662725
  6625d9:	f3 0f 59 1d 88 fd 03 01 	mulss  xmm3,DWORD PTR ds:0x103fd88
  6625e1:	f3 0f 10 35 f8 98 f9 00 	movss  xmm6,DWORD PTR ds:0xf998f8
  6625e9:	33 c9                	xor    ecx,ecx
  6625eb:	0f 28 c6             	movaps xmm0,xmm6
  6625ee:	f3 0f 5e c3          	divss  xmm0,xmm3
  6625f2:	0f 28 d8             	movaps xmm3,xmm0
  6625f5:	f3 0f 59 c2          	mulss  xmm0,xmm2
  6625f9:	f3 0f 58 c5          	addss  xmm0,xmm5
  6625fd:	8d 54 24 58          	lea    edx,[esp+0x58]
  662601:	f3 0f 59 d9          	mulss  xmm3,xmm1
  662605:	f3 0f 58 dc          	addss  xmm3,xmm4
  662609:	f3 0f 11 84 24 9c 00 00 00 	movss  DWORD PTR [esp+0x9c],xmm0
  662612:	89 8c 24 c0 00 00 00 	mov    DWORD PTR [esp+0xc0],ecx
  662619:	89 8c 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],ecx
  662620:	89 8c 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],ecx
  662627:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  66262d:	0f 57 c0             	xorps  xmm0,xmm0
  662630:	89 4c 24 6c          	mov    DWORD PTR [esp+0x6c],ecx
  662634:	52                   	push   edx
  662635:	8d 8c 24 c4 00 00 00 	lea    ecx,[esp+0xc4]
  66263c:	f3 0f 11 9c 24 9c 00 00 00 	movss  DWORD PTR [esp+0x9c],xmm3
  662645:	c7 84 24 d0 00 00 00 24 e5 fe 00 	mov    DWORD PTR [esp+0xd0],0xfee524
  662650:	f3 0f 11 5c 24 5c    	movss  DWORD PTR [esp+0x5c],xmm3
  662656:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  66265a:	f3 0f 11 74 24 74    	movss  DWORD PTR [esp+0x74],xmm6
  662660:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  662666:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  66266c:	e8 9f 89 fc ff       	call   0x62b010
  662671:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  662675:	85 c9                	test   ecx,ecx
  662677:	74 0f                	je     0x662688
  662679:	c7 44 24 14 00 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
  662681:	8b 01                	mov    eax,DWORD PTR [ecx]
  662683:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  662686:	ff d2                	call   edx
  662688:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  66268b:	d9 e8                	fld1
  66268d:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  662690:	6a 00                	push   0x0
  662692:	50                   	push   eax
  662693:	51                   	push   ecx
  662694:	56                   	push   esi
  662695:	6a 00                	push   0x0
  662697:	6a 00                	push   0x0
  662699:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  66269d:	52                   	push   edx
  66269e:	8d 84 24 dc 00 00 00 	lea    eax,[esp+0xdc]
  6626a5:	50                   	push   eax
  6626a6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6626a9:	51                   	push   ecx
  6626aa:	d9 1c 24             	fstp   DWORD PTR [esp]
  6626ad:	8d 8c 24 bc 00 00 00 	lea    ecx,[esp+0xbc]
  6626b4:	51                   	push   ecx
  6626b5:	8d 54 24 68          	lea    edx,[esp+0x68]
  6626b9:	52                   	push   edx
  6626ba:	50                   	push   eax
  6626bb:	8b cb                	mov    ecx,ebx
  6626bd:	e8 5e be ff ff       	call   0x65e520
  6626c2:	85 c0                	test   eax,eax
  6626c4:	75 4b                	jne    0x662711
  6626c6:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  6626c9:	8b 01                	mov    eax,DWORD PTR [ecx]
  6626cb:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  6626cf:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  6626d3:	52                   	push   edx
  6626d4:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  6626d7:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  6626da:	52                   	push   edx
  6626db:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  6626de:	51                   	push   ecx
  6626df:	52                   	push   edx
  6626e0:	8d 48 08             	lea    ecx,[eax+0x8]
  6626e3:	e8 18 08 ff ff       	call   0x652f00
  6626e8:	f3 0f 10 84 24 98 00 00 00 	movss  xmm0,DWORD PTR [esp+0x98]
  6626f1:	8b bc 24 a0 00 00 00 	mov    edi,DWORD PTR [esp+0xa0]
  6626f8:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  6626fe:	f3 0f 10 84 24 9c 00 00 00 	movss  xmm0,DWORD PTR [esp+0x9c]
  662707:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  66270d:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
  662711:	8b 84 24 c0 00 00 00 	mov    eax,DWORD PTR [esp+0xc0]
  662718:	85 c0                	test   eax,eax
  66271a:	74 09                	je     0x662725
  66271c:	50                   	push   eax
  66271d:	e8 be 1d e8 ff       	call   0x4e44e0
  662722:	83 c4 04             	add    esp,0x4
  662725:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  662728:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  66272b:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  662733:	f3 0f 5e 84 24 d0 00 00 00 	divss  xmm0,DWORD PTR [esp+0xd0]
  66273c:	0f 28 c8             	movaps xmm1,xmm0
  66273f:	f3 0f 59 44 24 3c    	mulss  xmm0,DWORD PTR [esp+0x3c]
  662745:	f3 0f 58 44 24 34    	addss  xmm0,DWORD PTR [esp+0x34]
  66274b:	f3 0f 59 4c 24 50    	mulss  xmm1,DWORD PTR [esp+0x50]
  662751:	f3 0f 58 4c 24 30    	addss  xmm1,DWORD PTR [esp+0x30]
  662757:	0f 28 d8             	movaps xmm3,xmm0
  66275a:	8b c7                	mov    eax,edi
  66275c:	2b c2                	sub    eax,edx
  66275e:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  662762:	99                   	cdq
  662763:	33 c2                	xor    eax,edx
  662765:	2b c2                	sub    eax,edx
  662767:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  66276b:	f3 0f 59 05 9c 2b fa 00 	mulss  xmm0,DWORD PTR ds:0xfa2b9c
  662773:	0f 28 d1             	movaps xmm2,xmm1
  662776:	0f 28 cb             	movaps xmm1,xmm3
  662779:	f3 0f 5c 49 04       	subss  xmm1,DWORD PTR [ecx+0x4]
  66277e:	0f 28 e1             	movaps xmm4,xmm1
  662781:	f3 0f 59 e1          	mulss  xmm4,xmm1
  662785:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  662789:	f3 0f 11 84 24 e0 00 00 00 	movss  DWORD PTR [esp+0xe0],xmm0
  662792:	0f 28 c2             	movaps xmm0,xmm2
  662795:	f3 0f 5c 01          	subss  xmm0,DWORD PTR [ecx]
  662799:	f3 0f 59 c0          	mulss  xmm0,xmm0
  66279d:	f3 0f 58 c4          	addss  xmm0,xmm4
  6627a1:	f3 0f 11 54 24 30    	movss  DWORD PTR [esp+0x30],xmm2
  6627a7:	f3 0f 11 5c 24 34    	movss  DWORD PTR [esp+0x34],xmm3
  6627ad:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6627b1:	0f 51 c0             	sqrtps xmm0,xmm0
  6627b4:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  6627ba:	f3 0f 10 84 24 e0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xe0]
  6627c3:	0f 2f 44 24 58       	comiss xmm0,DWORD PTR [esp+0x58]
  6627c8:	76 12                	jbe    0x6627dc
  6627ca:	3b 7c 24 24          	cmp    edi,DWORD PTR [esp+0x24]
  6627ce:	7e 05                	jle    0x6627d5
  6627d0:	83 ef 01             	sub    edi,0x1
  6627d3:	eb 03                	jmp    0x6627d8
  6627d5:	83 c7 01             	add    edi,0x1
  6627d8:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
  6627dc:	83 6c 24 28 01       	sub    DWORD PTR [esp+0x28],0x1
  6627e1:	75 53                	jne    0x662836
  6627e3:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  6627e7:	85 c9                	test   ecx,ecx
  6627e9:	74 22                	je     0x66280d
  6627eb:	c7 44 24 10 00 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  6627f3:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  6627f6:	83 c0 ff             	add    eax,0xffffffff
  6627f9:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  6627fc:	75 0f                	jne    0x66280d
  6627fe:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  662805:	8b 01                	mov    eax,DWORD PTR [ecx]
  662807:	8b 10                	mov    edx,DWORD PTR [eax]
  662809:	6a 01                	push   0x1
  66280b:	ff d2                	call   edx
  66280d:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  662811:	85 c0                	test   eax,eax
  662813:	74 09                	je     0x66281e
  662815:	50                   	push   eax
  662816:	e8 c5 1c e8 ff       	call   0x4e44e0
  66281b:	83 c4 04             	add    esp,0x4
  66281e:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  662822:	85 c9                	test   ecx,ecx
  662824:	0f 84 e0 fb ff ff    	je     0x66240a
  66282a:	8b 01                	mov    eax,DWORD PTR [ecx]
  66282c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  66282f:	ff d2                	call   edx
  662831:	e9 d4 fb ff ff       	jmp    0x66240a
  662836:	0f 57 c0             	xorps  xmm0,xmm0
  662839:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  66283d:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  662841:	51                   	push   ecx
  662842:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  662846:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  66284a:	f3 0f 11 54 24 5c    	movss  DWORD PTR [esp+0x5c],xmm2
  662850:	f3 0f 11 5c 24 60    	movss  DWORD PTR [esp+0x60],xmm3
  662856:	89 7c 24 64          	mov    DWORD PTR [esp+0x64],edi
  66285a:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  662860:	f3 0f 11 44 24 74    	movss  DWORD PTR [esp+0x74],xmm0
  662866:	c7 44 24 78 00 00 00 00 	mov    DWORD PTR [esp+0x78],0x0
  66286e:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  662874:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  66287a:	e8 91 41 ff ff       	call   0x656a10
  66287f:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  662883:	85 c9                	test   ecx,ecx
  662885:	74 22                	je     0x6628a9
  662887:	c7 44 24 10 00 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  66288f:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  662892:	83 c0 ff             	add    eax,0xffffffff
  662895:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  662898:	75 0f                	jne    0x6628a9
  66289a:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  6628a1:	8b 11                	mov    edx,DWORD PTR [ecx]
  6628a3:	8b 02                	mov    eax,DWORD PTR [edx]
  6628a5:	6a 01                	push   0x1
  6628a7:	ff d0                	call   eax
  6628a9:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  6628ad:	85 c9                	test   ecx,ecx
  6628af:	74 0f                	je     0x6628c0
  6628b1:	c7 44 24 14 00 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
  6628b9:	8b 11                	mov    edx,DWORD PTR [ecx]
  6628bb:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6628be:	ff d0                	call   eax
  6628c0:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  6628c3:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  6628c6:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  6628c9:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  6628cd:	51                   	push   ecx
  6628ce:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  6628d1:	52                   	push   edx
  6628d2:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  6628d5:	50                   	push   eax
  6628d6:	56                   	push   esi
  6628d7:	51                   	push   ecx
  6628d8:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  6628db:	52                   	push   edx
  6628dc:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  6628df:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  6628e3:	50                   	push   eax
  6628e4:	51                   	push   ecx
  6628e5:	51                   	push   ecx
  6628e6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  6628e9:	d9 1c 24             	fstp   DWORD PTR [esp]
  6628ec:	52                   	push   edx
  6628ed:	8d 44 24 68          	lea    eax,[esp+0x68]
  6628f1:	50                   	push   eax
  6628f2:	51                   	push   ecx
  6628f3:	8b cb                	mov    ecx,ebx
  6628f5:	e8 26 bc ff ff       	call   0x65e520
  6628fa:	85 c0                	test   eax,eax
  6628fc:	74 29                	je     0x662927
  6628fe:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  662902:	85 c0                	test   eax,eax
  662904:	74 09                	je     0x66290f
  662906:	50                   	push   eax
  662907:	e8 d4 1b e8 ff       	call   0x4e44e0
  66290c:	83 c4 04             	add    esp,0x4
  66290f:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  662913:	85 c9                	test   ecx,ecx
  662915:	0f 84 ef fa ff ff    	je     0x66240a
  66291b:	8b 11                	mov    edx,DWORD PTR [ecx]
  66291d:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  662920:	ff d0                	call   eax
  662922:	e9 e3 fa ff ff       	jmp    0x66240a
  662927:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  66292a:	8b 01                	mov    eax,DWORD PTR [ecx]
  66292c:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  662930:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  662934:	52                   	push   edx
  662935:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  662938:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  66293b:	52                   	push   edx
  66293c:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  66293f:	51                   	push   ecx
  662940:	52                   	push   edx
  662941:	8d 48 08             	lea    ecx,[eax+0x8]
  662944:	e8 b7 05 ff ff       	call   0x652f00
  662949:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  66294d:	85 c0                	test   eax,eax
  66294f:	74 09                	je     0x66295a
  662951:	50                   	push   eax
  662952:	e8 89 1b e8 ff       	call   0x4e44e0
  662957:	83 c4 04             	add    esp,0x4
  66295a:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  66295e:	85 c9                	test   ecx,ecx
  662960:	74 07                	je     0x662969
  662962:	8b 01                	mov    eax,DWORD PTR [ecx]
  662964:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  662967:	ff d2                	call   edx
  662969:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  66296d:	8b 01                	mov    eax,DWORD PTR [ecx]
  66296f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  662972:	ff d2                	call   edx
  662974:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  662978:	85 c0                	test   eax,eax
  66297a:	74 1d                	je     0x662999
  66297c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  66297f:	8b c8                	mov    ecx,eax
  662981:	83 c0 04             	add    eax,0x4
  662984:	83 c2 ff             	add    edx,0xffffffff
  662987:	89 10                	mov    DWORD PTR [eax],edx
  662989:	75 0e                	jne    0x662999
  66298b:	c7 00 01 00 00 00    	mov    DWORD PTR [eax],0x1
  662991:	8b 01                	mov    eax,DWORD PTR [ecx]
  662993:	8b 10                	mov    edx,DWORD PTR [eax]
  662995:	6a 01                	push   0x1
  662997:	ff d2                	call   edx
  662999:	33 c0                	xor    eax,eax
  66299b:	5f                   	pop    edi
  66299c:	5e                   	pop    esi
  66299d:	5b                   	pop    ebx
  66299e:	8b e5                	mov    esp,ebp
  6629a0:	5d                   	pop    ebp
  6629a1:	c2 30 00             	ret    0x30
  6629a4:	33 f6                	xor    esi,esi
  6629a6:	56                   	push   esi
  6629a7:	56                   	push   esi
  6629a8:	56                   	push   esi
  6629a9:	56                   	push   esi
  6629aa:	68 a0 d8 fe 00       	push   0xfed8a0
  6629af:	6a 18                	push   0x18
  6629b1:	e8 4a 1b e8 ff       	call   0x4e4500
  6629b6:	83 c4 18             	add    esp,0x18
  6629b9:	3b c6                	cmp    eax,esi
  6629bb:	0f 84 0e 01 00 00    	je     0x662acf
  6629c1:	8b c8                	mov    ecx,eax
  6629c3:	e8 58 c4 fe ff       	call   0x64ee20
  6629c8:	8b f8                	mov    edi,eax
  6629ca:	3b fe                	cmp    edi,esi
  6629cc:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  6629d0:	74 08                	je     0x6629da
  6629d2:	8b 07                	mov    eax,DWORD PTR [edi]
  6629d4:	8b 10                	mov    edx,DWORD PTR [eax]
  6629d6:	8b cf                	mov    ecx,edi
  6629d8:	ff d2                	call   edx
  6629da:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  6629de:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  6629e2:	0f 57 c0             	xorps  xmm0,xmm0
  6629e5:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  6629e8:	6a 01                	push   0x1
  6629ea:	56                   	push   esi
  6629eb:	56                   	push   esi
  6629ec:	56                   	push   esi
  6629ed:	56                   	push   esi
  6629ee:	56                   	push   esi
  6629ef:	56                   	push   esi
  6629f0:	6a 01                	push   0x1
  6629f2:	f3 0f 11 84 24 88 00 00 00 	movss  DWORD PTR [esp+0x88],xmm0
  6629fb:	f3 0f 10 05 dc e0 fe 00 	movss  xmm0,DWORD PTR ds:0xfee0dc
  662a03:	50                   	push   eax
  662a04:	83 ec 08             	sub    esp,0x8
  662a07:	f3 0f 11 84 24 98 00 00 00 	movss  DWORD PTR [esp+0x98],xmm0
  662a10:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  662a14:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  662a1c:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  662a20:	f3 0f 11 84 24 9c 00 00 00 	movss  DWORD PTR [esp+0x9c],xmm0
  662a29:	d9 1c 24             	fstp   DWORD PTR [esp]
  662a2c:	f3 0f 10 44 24 5c    	movss  xmm0,DWORD PTR [esp+0x5c]
  662a32:	66 89 b4 24 92 00 00 00 	mov    WORD PTR [esp+0x92],si
  662a3a:	89 b4 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],esi
  662a41:	89 b4 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],esi
  662a48:	89 b4 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],esi
  662a4f:	c7 84 24 b0 00 00 00 28 b8 00 00 	mov    DWORD PTR [esp+0xb0],0xb828
  662a5a:	66 89 b4 24 b4 00 00 00 	mov    WORD PTR [esp+0xb4],si
  662a62:	66 89 b4 24 b6 00 00 00 	mov    WORD PTR [esp+0xb6],si
  662a6a:	66 89 b4 24 b8 00 00 00 	mov    WORD PTR [esp+0xb8],si
  662a72:	89 b4 24 bc 00 00 00 	mov    DWORD PTR [esp+0xbc],esi
  662a79:	f3 0f 11 84 24 84 00 00 00 	movss  DWORD PTR [esp+0x84],xmm0
  662a82:	e8 f9 78 60 00       	call   0xc6a380
  662a87:	d9 5c 24 5c          	fstp   DWORD PTR [esp+0x5c]
  662a8b:	66 8b 4c 24 38       	mov    cx,WORD PTR [esp+0x38]
  662a90:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  662a93:	3b 47 10             	cmp    eax,DWORD PTR [edi+0x10]
  662a96:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  662a9c:	66 89 4c 24 64       	mov    WORD PTR [esp+0x64],cx
  662aa1:	8d 4f 08             	lea    ecx,[edi+0x8]
  662aa4:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  662aaa:	c7 44 24 74 06 00 00 00 	mov    DWORD PTR [esp+0x74],0x6
  662ab2:	73 26                	jae    0x662ada
  662ab4:	3b c6                	cmp    eax,esi
  662ab6:	8d 50 40             	lea    edx,[eax+0x40]
  662ab9:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  662abc:	74 27                	je     0x662ae5
  662abe:	b9 10 00 00 00       	mov    ecx,0x10
  662ac3:	8d 74 24 58          	lea    esi,[esp+0x58]
  662ac7:	8b f8                	mov    edi,eax
  662ac9:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  662acb:	33 f6                	xor    esi,esi
  662acd:	eb 16                	jmp    0x662ae5
  662acf:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  662ad3:	8b fe                	mov    edi,esi
  662ad5:	e9 00 ff ff ff       	jmp    0x6629da
  662ada:	8d 54 24 58          	lea    edx,[esp+0x58]
  662ade:	52                   	push   edx
  662adf:	50                   	push   eax
  662ae0:	e8 eb c9 42 00       	call   0xa8f4d0
  662ae5:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  662ae8:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  662aeb:	d9 47 04             	fld    DWORD PTR [edi+0x4]
  662aee:	f3 0f 10 07          	movss  xmm0,DWORD PTR [edi]
  662af2:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  662af5:	6a 01                	push   0x1
  662af7:	56                   	push   esi
  662af8:	56                   	push   esi
  662af9:	56                   	push   esi
  662afa:	56                   	push   esi
  662afb:	56                   	push   esi
  662afc:	56                   	push   esi
  662afd:	6a 01                	push   0x1
  662aff:	50                   	push   eax
  662b00:	83 ec 08             	sub    esp,0x8
  662b03:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  662b07:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  662b0d:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  662b11:	f3 0f 11 84 24 84 00 00 00 	movss  DWORD PTR [esp+0x84],xmm0
  662b1a:	d9 1c 24             	fstp   DWORD PTR [esp]
  662b1d:	e8 5e 78 60 00       	call   0xc6a380
  662b22:	66 8b 4f 08          	mov    cx,WORD PTR [edi+0x8]
  662b26:	d9 5c 24 5c          	fstp   DWORD PTR [esp+0x5c]
  662b2a:	f3 0f 10 47 04       	movss  xmm0,DWORD PTR [edi+0x4]
  662b2f:	66 89 4c 24 64       	mov    WORD PTR [esp+0x64],cx
  662b34:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  662b38:	8b 79 0c             	mov    edi,DWORD PTR [ecx+0xc]
  662b3b:	83 c1 08             	add    ecx,0x8
  662b3e:	3b 79 08             	cmp    edi,DWORD PTR [ecx+0x8]
  662b41:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  662b47:	c7 44 24 74 07 00 00 00 	mov    DWORD PTR [esp+0x74],0x7
  662b4f:	73 17                	jae    0x662b68
  662b51:	3b fe                	cmp    edi,esi
  662b53:	8d 57 40             	lea    edx,[edi+0x40]
  662b56:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  662b59:	74 18                	je     0x662b73
  662b5b:	b9 10 00 00 00       	mov    ecx,0x10
  662b60:	8d 74 24 58          	lea    esi,[esp+0x58]
  662b64:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  662b66:	eb 0b                	jmp    0x662b73
  662b68:	8d 44 24 58          	lea    eax,[esp+0x58]
  662b6c:	50                   	push   eax
  662b6d:	57                   	push   edi
  662b6e:	e8 5d c9 42 00       	call   0xa8f4d0
  662b73:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  662b76:	8b 01                	mov    eax,DWORD PTR [ecx]
  662b78:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  662b7c:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  662b80:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  662b83:	52                   	push   edx
  662b84:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  662b87:	51                   	push   ecx
  662b88:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  662b8b:	52                   	push   edx
  662b8c:	51                   	push   ecx
  662b8d:	8d 48 08             	lea    ecx,[eax+0x8]
  662b90:	e8 6b 03 ff ff       	call   0x652f00
  662b95:	8b 16                	mov    edx,DWORD PTR [esi]
  662b97:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  662b9a:	8b ce                	mov    ecx,esi
  662b9c:	ff d0                	call   eax
  662b9e:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  662ba2:	85 c0                	test   eax,eax
  662ba4:	74 09                	je     0x662baf
  662ba6:	50                   	push   eax
  662ba7:	e8 34 19 e8 ff       	call   0x4e44e0
  662bac:	83 c4 04             	add    esp,0x4
  662baf:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  662bb3:	85 c9                	test   ecx,ecx
  662bb5:	74 07                	je     0x662bbe
  662bb7:	8b 11                	mov    edx,DWORD PTR [ecx]
  662bb9:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  662bbc:	ff d0                	call   eax
  662bbe:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  662bc2:	8b 11                	mov    edx,DWORD PTR [ecx]
  662bc4:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  662bc7:	ff d0                	call   eax
  662bc9:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  662bcd:	85 c0                	test   eax,eax
  662bcf:	74 1d                	je     0x662bee
  662bd1:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  662bd4:	8b c8                	mov    ecx,eax
  662bd6:	83 c0 04             	add    eax,0x4
  662bd9:	83 c2 ff             	add    edx,0xffffffff
  662bdc:	89 10                	mov    DWORD PTR [eax],edx
  662bde:	75 0e                	jne    0x662bee
  662be0:	c7 00 01 00 00 00    	mov    DWORD PTR [eax],0x1
  662be6:	8b 11                	mov    edx,DWORD PTR [ecx]
  662be8:	8b 02                	mov    eax,DWORD PTR [edx]
  662bea:	6a 01                	push   0x1
  662bec:	ff d0                	call   eax
  662bee:	33 c0                	xor    eax,eax
  662bf0:	5f                   	pop    edi
  662bf1:	5e                   	pop    esi
  662bf2:	5b                   	pop    ebx
  662bf3:	8b e5                	mov    esp,ebp
  662bf5:	5d                   	pop    ebp
  662bf6:	c2 30 00             	ret    0x30
  662bf9:	83 ff 05             	cmp    edi,0x5
  662bfc:	0f 85 61 02 00 00    	jne    0x662e63
  662c02:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  662c05:	8b 08                	mov    ecx,DWORD PTR [eax]
  662c07:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  662c0a:	2b d1                	sub    edx,ecx
  662c0c:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  662c10:	b8 93 24 49 92       	mov    eax,0x92492493
  662c15:	f7 ea                	imul   edx
  662c17:	03 54 24 28          	add    edx,DWORD PTR [esp+0x28]
  662c1b:	c1 fa 04             	sar    edx,0x4
  662c1e:	8b c2                	mov    eax,edx
  662c20:	c1 e8 1f             	shr    eax,0x1f
  662c23:	03 c2                	add    eax,edx
  662c25:	83 f8 02             	cmp    eax,0x2
  662c28:	0f 82 35 02 00 00    	jb     0x662e63
  662c2e:	0f 85 a4 00 00 00    	jne    0x662cd8
  662c34:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  662c37:	f3 0f 10 02          	movss  xmm0,DWORD PTR [edx]
  662c3b:	0f 2e 01             	ucomiss xmm0,DWORD PTR [ecx]
  662c3e:	9f                   	lahf
  662c3f:	f6 c4 44             	test   ah,0x44
  662c42:	7a 57                	jp     0x662c9b
  662c44:	f3 0f 10 42 04       	movss  xmm0,DWORD PTR [edx+0x4]
  662c49:	0f 2e 41 04          	ucomiss xmm0,DWORD PTR [ecx+0x4]
  662c4d:	9f                   	lahf
  662c4e:	f6 c4 44             	test   ah,0x44
  662c51:	7a 48                	jp     0x662c9b
  662c53:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  662c56:	3b 51 08             	cmp    edx,DWORD PTR [ecx+0x8]
  662c59:	75 40                	jne    0x662c9b
  662c5b:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  662c5e:	d9 41 34             	fld    DWORD PTR [ecx+0x34]
  662c61:	8d 41 1c             	lea    eax,[ecx+0x1c]
  662c64:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  662c67:	51                   	push   ecx
  662c68:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  662c6b:	52                   	push   edx
  662c6c:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  662c6f:	51                   	push   ecx
  662c70:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  662c73:	56                   	push   esi
  662c74:	52                   	push   edx
  662c75:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  662c78:	51                   	push   ecx
  662c79:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  662c7c:	52                   	push   edx
  662c7d:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  662c80:	51                   	push   ecx
  662c81:	51                   	push   ecx
  662c82:	d9 1c 24             	fstp   DWORD PTR [esp]
  662c85:	50                   	push   eax
  662c86:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  662c89:	52                   	push   edx
  662c8a:	50                   	push   eax
  662c8b:	8b cb                	mov    ecx,ebx
  662c8d:	e8 8e b8 ff ff       	call   0x65e520
  662c92:	5f                   	pop    edi
  662c93:	5e                   	pop    esi
  662c94:	5b                   	pop    ebx
  662c95:	8b e5                	mov    esp,ebp
  662c97:	5d                   	pop    ebp
  662c98:	c2 30 00             	ret    0x30
  662c9b:	8b 55 34             	mov    edx,DWORD PTR [ebp+0x34]
  662c9e:	d9 41 18             	fld    DWORD PTR [ecx+0x18]
  662ca1:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  662ca4:	52                   	push   edx
  662ca5:	8b 55 2c             	mov    edx,DWORD PTR [ebp+0x2c]
  662ca8:	50                   	push   eax
  662ca9:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  662cac:	52                   	push   edx
  662cad:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  662cb0:	56                   	push   esi
  662cb1:	50                   	push   eax
  662cb2:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  662cb5:	52                   	push   edx
  662cb6:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  662cb9:	50                   	push   eax
  662cba:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  662cbd:	52                   	push   edx
  662cbe:	51                   	push   ecx
  662cbf:	d9 1c 24             	fstp   DWORD PTR [esp]
  662cc2:	51                   	push   ecx
  662cc3:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  662cc6:	50                   	push   eax
  662cc7:	51                   	push   ecx
  662cc8:	8b cb                	mov    ecx,ebx
  662cca:	e8 51 b8 ff ff       	call   0x65e520
  662ccf:	5f                   	pop    edi
  662cd0:	5e                   	pop    esi
  662cd1:	5b                   	pop    ebx
  662cd2:	8b e5                	mov    esp,ebp
  662cd4:	5d                   	pop    ebp
  662cd5:	c2 30 00             	ret    0x30
  662cd8:	33 c0                	xor    eax,eax
  662cda:	89 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],eax
  662ce1:	89 84 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],eax
  662ce8:	89 84 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],eax
  662cef:	89 84 24 ac 00 00 00 	mov    DWORD PTR [esp+0xac],eax
  662cf6:	89 84 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],eax
  662cfd:	88 84 24 b4 00 00 00 	mov    BYTE PTR [esp+0xb4],al
  662d04:	89 84 24 b8 00 00 00 	mov    DWORD PTR [esp+0xb8],eax
  662d0b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  662d0e:	d9 40 04             	fld    DWORD PTR [eax+0x4]
  662d11:	8d 94 24 a8 00 00 00 	lea    edx,[esp+0xa8]
  662d18:	83 ec 08             	sub    esp,0x8
  662d1b:	8b ca                	mov    ecx,edx
  662d1d:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  662d21:	d9 00                	fld    DWORD PTR [eax]
  662d23:	89 8c 24 b4 00 00 00 	mov    DWORD PTR [esp+0xb4],ecx
  662d2a:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  662d2d:	d9 1c 24             	fstp   DWORD PTR [esp]
  662d30:	c7 84 24 c4 00 00 00 0c e5 fe 00 	mov    DWORD PTR [esp+0xc4],0xfee50c
  662d3b:	89 94 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],edx
  662d42:	e8 89 5a 60 00       	call   0xc687d0
  662d47:	c6 44 24 28 00       	mov    BYTE PTR [esp+0x28],0x0
  662d4c:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  662d50:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  662d54:	52                   	push   edx
  662d55:	8d 44 24 28          	lea    eax,[esp+0x28]
  662d59:	50                   	push   eax
  662d5a:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  662d5e:	51                   	push   ecx
  662d5f:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  662d66:	e8 e5 17 e4 ff       	call   0x4a4550
  662d6b:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  662d6e:	8b 3a                	mov    edi,DWORD PTR [edx]
  662d70:	8b c2                	mov    eax,edx
  662d72:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  662d75:	3b f8                	cmp    edi,eax
  662d77:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  662d7b:	0f 84 a1 00 00 00    	je     0x662e22
  662d81:	d9 47 04             	fld    DWORD PTR [edi+0x4]
  662d84:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  662d87:	83 ec 08             	sub    esp,0x8
  662d8a:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  662d8e:	d9 07                	fld    DWORD PTR [edi]
  662d90:	d9 1c 24             	fstp   DWORD PTR [esp]
  662d93:	e8 38 5a 60 00       	call   0xc687d0
  662d98:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  662d9c:	51                   	push   ecx
  662d9d:	8d 54 24 24          	lea    edx,[esp+0x24]
  662da1:	52                   	push   edx
  662da2:	8d 8c 24 ac 00 00 00 	lea    ecx,[esp+0xac]
  662da9:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  662dad:	e8 3e 79 f6 ff       	call   0x5ca6f0
  662db2:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  662db9:	39 08                	cmp    DWORD PTR [eax],ecx
  662dbb:	75 58                	jne    0x662e15
  662dbd:	8b 55 34             	mov    edx,DWORD PTR [ebp+0x34]
  662dc0:	d9 47 18             	fld    DWORD PTR [edi+0x18]
  662dc3:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  662dc6:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  662dc9:	52                   	push   edx
  662dca:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  662dcd:	50                   	push   eax
  662dce:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  662dd1:	51                   	push   ecx
  662dd2:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  662dd5:	56                   	push   esi
  662dd6:	52                   	push   edx
  662dd7:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  662dda:	50                   	push   eax
  662ddb:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  662dde:	51                   	push   ecx
  662ddf:	52                   	push   edx
  662de0:	51                   	push   ecx
  662de1:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  662de4:	d9 1c 24             	fstp   DWORD PTR [esp]
  662de7:	57                   	push   edi
  662de8:	50                   	push   eax
  662de9:	51                   	push   ecx
  662dea:	8b cb                	mov    ecx,ebx
  662dec:	e8 2f b7 ff ff       	call   0x65e520
  662df1:	85 c0                	test   eax,eax
  662df3:	74 4f                	je     0x662e44
  662df5:	c6 44 24 24 00       	mov    BYTE PTR [esp+0x24],0x0
  662dfa:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  662dfe:	52                   	push   edx
  662dff:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  662e03:	50                   	push   eax
  662e04:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  662e08:	51                   	push   ecx
  662e09:	8d 8c 24 b0 00 00 00 	lea    ecx,[esp+0xb0]
  662e10:	e8 3b 17 e4 ff       	call   0x4a4550
  662e15:	83 c7 1c             	add    edi,0x1c
  662e18:	3b 7c 24 1c          	cmp    edi,DWORD PTR [esp+0x1c]
  662e1c:	0f 85 5f ff ff ff    	jne    0x662d81
  662e22:	8b 84 24 b0 00 00 00 	mov    eax,DWORD PTR [esp+0xb0]
  662e29:	50                   	push   eax
  662e2a:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  662e31:	e8 7a eb 24 00       	call   0x8b19b0
  662e36:	b8 05 00 00 00       	mov    eax,0x5
  662e3b:	5f                   	pop    edi
  662e3c:	5e                   	pop    esi
  662e3d:	5b                   	pop    ebx
  662e3e:	8b e5                	mov    esp,ebp
  662e40:	5d                   	pop    ebp
  662e41:	c2 30 00             	ret    0x30
  662e44:	8b 94 24 b0 00 00 00 	mov    edx,DWORD PTR [esp+0xb0]
  662e4b:	52                   	push   edx
  662e4c:	8d 8c 24 a8 00 00 00 	lea    ecx,[esp+0xa8]
  662e53:	e8 58 eb 24 00       	call   0x8b19b0
  662e58:	33 c0                	xor    eax,eax
  662e5a:	5f                   	pop    edi
  662e5b:	5e                   	pop    esi
  662e5c:	5b                   	pop    ebx
  662e5d:	8b e5                	mov    esp,ebp
  662e5f:	5d                   	pop    ebp
  662e60:	c2 30 00             	ret    0x30
  662e63:	8b c7                	mov    eax,edi
  662e65:	5f                   	pop    edi
  662e66:	5e                   	pop    esi
  662e67:	5b                   	pop    ebx
  662e68:	8b e5                	mov    esp,ebp
  662e6a:	5d                   	pop    ebp
  662e6b:	c2 30 00             	ret    0x30
