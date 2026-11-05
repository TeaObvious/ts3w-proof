# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00956f90, 0x009576c0); analyst name TransformComponent_GetParentSlotQuaternionTranslation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00956f90 <.text+0x555f90>:
  956f90:	55                   	push   ebp
  956f91:	8b ec                	mov    ebp,esp
  956f93:	83 e4 f0             	and    esp,0xfffffff0
  956f96:	0f 57 c0             	xorps  xmm0,xmm0
  956f99:	81 ec 98 00 00 00    	sub    esp,0x98
  956f9f:	56                   	push   esi
  956fa0:	8b f1                	mov    esi,ecx
  956fa2:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  956fa5:	85 c9                	test   ecx,ecx
  956fa7:	57                   	push   edi
  956fa8:	74 2d                	je     0x956fd7
  956faa:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  956faf:	50                   	push   eax
  956fb0:	e8 ab d2 fd ff       	call   0x934260
  956fb5:	85 c0                	test   eax,eax
  956fb7:	74 1b                	je     0x956fd4
  956fb9:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  956fbd:	51                   	push   ecx
  956fbe:	8b c8                	mov    ecx,eax
  956fc0:	e8 4b 09 00 00       	call   0x957910
  956fc5:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  956fc8:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  956fcb:	0f 29 07             	movaps XMMWORD PTR [edi],xmm0
  956fce:	0f 28 40 10          	movaps xmm0,XMMWORD PTR [eax+0x10]
  956fd2:	eb 4b                	jmp    0x95701f
  956fd4:	0f 57 c0             	xorps  xmm0,xmm0
  956fd7:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  956fdf:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  956fe2:	f3 0f 11 4c 24 2c    	movss  DWORD PTR [esp+0x2c],xmm1
  956fe8:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  956fee:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  956ff4:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  956ffa:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  956fff:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  957005:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  95700b:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  957011:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  957017:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  95701c:	0f 29 0f             	movaps XMMWORD PTR [edi],xmm1
  95701f:	0f 29 47 10          	movaps XMMWORD PTR [edi+0x10],xmm0
  957023:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  957026:	85 c9                	test   ecx,ecx
  957028:	c6 44 24 0f 00       	mov    BYTE PTR [esp+0xf],0x0
  95702d:	0f 84 83 06 00 00    	je     0x9576b6
  957033:	8b 15 14 a1 1e 01    	mov    edx,DWORD PTR ds:0x11ea114
  957039:	52                   	push   edx
  95703a:	e8 21 d2 fd ff       	call   0x934260
  95703f:	85 c0                	test   eax,eax
  957041:	0f 84 6f 06 00 00    	je     0x9576b6
  957047:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  95704a:	8d 4c 24 0f          	lea    ecx,[esp+0xf]
  95704e:	51                   	push   ecx
  95704f:	52                   	push   edx
  957050:	8b c8                	mov    ecx,eax
  957052:	e8 59 9f ff ff       	call   0x950fb0
  957057:	8b f0                	mov    esi,eax
  957059:	85 f6                	test   esi,esi
  95705b:	0f 84 55 06 00 00    	je     0x9576b6
  957061:	80 7c 24 0f 00       	cmp    BYTE PTR [esp+0xf],0x0
  957066:	8b 06                	mov    eax,DWORD PTR [esi]
  957068:	0f 84 06 03 00 00    	je     0x957374
  95706e:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  957071:	8b ce                	mov    ecx,esi
  957073:	ff d2                	call   edx
  957075:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  957078:	0f 28 40 10          	movaps xmm0,XMMWORD PTR [eax+0x10]
  95707c:	0f 28 58 30          	movaps xmm3,XMMWORD PTR [eax+0x30]
  957080:	0f 28 48 20          	movaps xmm1,XMMWORD PTR [eax+0x20]
  957084:	0f 28 f2             	movaps xmm6,xmm2
  957087:	0f 29 9c 24 90 00 00 00 	movaps XMMWORD PTR [esp+0x90],xmm3
  95708f:	0f 28 e8             	movaps xmm5,xmm0
  957092:	0f c6 f2 00          	shufps xmm6,xmm2,0x0
  957096:	0f c6 e8 55          	shufps xmm5,xmm0,0x55
  95709a:	0f 28 e6             	movaps xmm4,xmm6
  95709d:	0f 58 e5             	addps  xmm4,xmm5
  9570a0:	0f 28 fc             	movaps xmm7,xmm4
  9570a3:	0f 28 d9             	movaps xmm3,xmm1
  9570a6:	0f c6 d9 aa          	shufps xmm3,xmm1,0xaa
  9570aa:	0f 58 fb             	addps  xmm7,xmm3
  9570ad:	0f 29 7c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm7
  9570b2:	f3 0f 11 7c 24 20    	movss  DWORD PTR [esp+0x20],xmm7
  9570b8:	f3 0f 10 3d cc 4c 0f 01 	movss  xmm7,DWORD PTR ds:0x10f4ccc
  9570c0:	0f c6 ff 00          	shufps xmm7,xmm7,0x0
  9570c4:	f3 0f 11 7c 24 30    	movss  DWORD PTR [esp+0x30],xmm7
  9570ca:	f3 0f 10 7c 24 20    	movss  xmm7,DWORD PTR [esp+0x20]
  9570d0:	0f 2f 7c 24 30       	comiss xmm7,DWORD PTR [esp+0x30]
  9570d5:	0f 29 64 24 40       	movaps XMMWORD PTR [esp+0x40],xmm4
  9570da:	f3 0f 10 25 b4 b5 f9 00 	movss  xmm4,DWORD PTR ds:0xf9b5b4
  9570e2:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  9570e6:	76 61                	jbe    0x957149
  9570e8:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  9570f0:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  9570f4:	0f 58 5c 24 10       	addps  xmm3,XMMWORD PTR [esp+0x10]
  9570f9:	0f 51 fb             	sqrtps xmm7,xmm3
  9570fc:	0f 28 e8             	movaps xmm5,xmm0
  9570ff:	0f c6 e8 00          	shufps xmm5,xmm0,0x0
  957103:	0f 28 da             	movaps xmm3,xmm2
  957106:	0f c6 da 55          	shufps xmm3,xmm2,0x55
  95710a:	0f 5c dd             	subps  xmm3,xmm5
  95710d:	0f 28 e9             	movaps xmm5,xmm1
  957110:	0f c6 e9 00          	shufps xmm5,xmm1,0x0
  957114:	0f c6 c0 aa          	shufps xmm0,xmm0,0xaa
  957118:	0f 28 f4             	movaps xmm6,xmm4
  95711b:	0f 5e f7             	divps  xmm6,xmm7
  95711e:	0f c6 d2 aa          	shufps xmm2,xmm2,0xaa
  957122:	0f c6 c9 55          	shufps xmm1,xmm1,0x55
  957126:	0f 5c c1             	subps  xmm0,xmm1
  957129:	0f 5c ea             	subps  xmm5,xmm2
  95712c:	0f 59 c6             	mulps  xmm0,xmm6
  95712f:	0f 59 ee             	mulps  xmm5,xmm6
  957132:	0f 59 de             	mulps  xmm3,xmm6
  957135:	0f 59 fc             	mulps  xmm7,xmm4
  957138:	0f c6 c5 10          	shufps xmm0,xmm5,0x10
  95713c:	0f c6 df 32          	shufps xmm3,xmm7,0x32
  957140:	0f c6 c3 88          	shufps xmm0,xmm3,0x88
  957144:	e9 87 01 00 00       	jmp    0x9572d0
  957149:	f3 0f 11 74 24 10    	movss  DWORD PTR [esp+0x10],xmm6
  95714f:	f3 0f 10 7c 24 10    	movss  xmm7,DWORD PTR [esp+0x10]
  957155:	f3 0f 11 6c 24 30    	movss  DWORD PTR [esp+0x30],xmm5
  95715b:	0f 2f 7c 24 30       	comiss xmm7,DWORD PTR [esp+0x30]
  957160:	0f 86 84 00 00 00    	jbe    0x9571ea
  957166:	f3 0f 11 74 24 10    	movss  DWORD PTR [esp+0x10],xmm6
  95716c:	f3 0f 10 7c 24 10    	movss  xmm7,DWORD PTR [esp+0x10]
  957172:	f3 0f 11 5c 24 30    	movss  DWORD PTR [esp+0x30],xmm3
  957178:	0f 2f 7c 24 30       	comiss xmm7,DWORD PTR [esp+0x30]
  95717d:	76 6b                	jbe    0x9571ea
  95717f:	0f 58 dd             	addps  xmm3,xmm5
  957182:	0f 5c f3             	subps  xmm6,xmm3
  957185:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  95718d:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  957191:	0f 58 de             	addps  xmm3,xmm6
  957194:	0f 51 eb             	sqrtps xmm5,xmm3
  957197:	0f 28 d9             	movaps xmm3,xmm1
  95719a:	0f c6 d9 55          	shufps xmm3,xmm1,0x55
  95719e:	0f 28 f0             	movaps xmm6,xmm0
  9571a1:	0f c6 f0 aa          	shufps xmm6,xmm0,0xaa
  9571a5:	0f 5c f3             	subps  xmm6,xmm3
  9571a8:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9571ac:	0f 28 da             	movaps xmm3,xmm2
  9571af:	0f c6 da aa          	shufps xmm3,xmm2,0xaa
  9571b3:	0f 58 d9             	addps  xmm3,xmm1
  9571b6:	0f 28 ca             	movaps xmm1,xmm2
  9571b9:	0f c6 ca 55          	shufps xmm1,xmm2,0x55
  9571bd:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9571c1:	0f 28 fc             	movaps xmm7,xmm4
  9571c4:	0f 5e fd             	divps  xmm7,xmm5
  9571c7:	0f 58 c8             	addps  xmm1,xmm0
  9571ca:	0f 59 ec             	mulps  xmm5,xmm4
  9571cd:	0f 59 cf             	mulps  xmm1,xmm7
  9571d0:	0f 59 df             	mulps  xmm3,xmm7
  9571d3:	0f 59 f7             	mulps  xmm6,xmm7
  9571d6:	0f c6 e9 10          	shufps xmm5,xmm1,0x10
  9571da:	0f c6 de 32          	shufps xmm3,xmm6,0x32
  9571de:	0f c6 eb 88          	shufps xmm5,xmm3,0x88
  9571e2:	0f 28 c5             	movaps xmm0,xmm5
  9571e5:	e9 e6 00 00 00       	jmp    0x9572d0
  9571ea:	f3 0f 11 6c 24 10    	movss  DWORD PTR [esp+0x10],xmm5
  9571f0:	f3 0f 10 7c 24 10    	movss  xmm7,DWORD PTR [esp+0x10]
  9571f6:	f3 0f 11 5c 24 30    	movss  DWORD PTR [esp+0x30],xmm3
  9571fc:	0f 2f 7c 24 30       	comiss xmm7,DWORD PTR [esp+0x30]
  957201:	76 6b                	jbe    0x95726e
  957203:	0f 58 de             	addps  xmm3,xmm6
  957206:	0f 5c eb             	subps  xmm5,xmm3
  957209:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  957211:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  957215:	0f 58 dd             	addps  xmm3,xmm5
  957218:	0f 51 fb             	sqrtps xmm7,xmm3
  95721b:	0f 28 e9             	movaps xmm5,xmm1
  95721e:	0f c6 e9 00          	shufps xmm5,xmm1,0x0
  957222:	0f 28 da             	movaps xmm3,xmm2
  957225:	0f c6 da aa          	shufps xmm3,xmm2,0xaa
  957229:	0f 5c eb             	subps  xmm5,xmm3
  95722c:	0f 28 d9             	movaps xmm3,xmm1
  95722f:	0f c6 d9 55          	shufps xmm3,xmm1,0x55
  957233:	0f 28 c8             	movaps xmm1,xmm0
  957236:	0f c6 c8 aa          	shufps xmm1,xmm0,0xaa
  95723a:	0f 58 d9             	addps  xmm3,xmm1
  95723d:	0f 28 ca             	movaps xmm1,xmm2
  957240:	0f c6 ca 55          	shufps xmm1,xmm2,0x55
  957244:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  957248:	0f 58 c8             	addps  xmm1,xmm0
  95724b:	0f 28 f4             	movaps xmm6,xmm4
  95724e:	0f 5e f7             	divps  xmm6,xmm7
  957251:	0f 59 ce             	mulps  xmm1,xmm6
  957254:	0f 59 fc             	mulps  xmm7,xmm4
  957257:	0f 59 de             	mulps  xmm3,xmm6
  95725a:	0f 59 ee             	mulps  xmm5,xmm6
  95725d:	0f c6 cf 10          	shufps xmm1,xmm7,0x10
  957261:	0f c6 dd 32          	shufps xmm3,xmm5,0x32
  957265:	0f c6 cb 88          	shufps xmm1,xmm3,0x88
  957269:	0f 28 c1             	movaps xmm0,xmm1
  95726c:	eb 62                	jmp    0x9572d0
  95726e:	0f 5c 5c 24 40       	subps  xmm3,XMMWORD PTR [esp+0x40]
  957273:	f3 0f 10 2d f8 98 f9 00 	movss  xmm5,DWORD PTR ds:0xf998f8
  95727b:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  95727f:	0f 58 eb             	addps  xmm5,xmm3
  957282:	0f 51 f5             	sqrtps xmm6,xmm5
  957285:	0f 28 e8             	movaps xmm5,xmm0
  957288:	0f c6 e8 00          	shufps xmm5,xmm0,0x0
  95728c:	0f c6 c0 aa          	shufps xmm0,xmm0,0xaa
  957290:	0f 28 da             	movaps xmm3,xmm2
  957293:	0f c6 da 55          	shufps xmm3,xmm2,0x55
  957297:	0f 5c dd             	subps  xmm3,xmm5
  95729a:	0f 28 e9             	movaps xmm5,xmm1
  95729d:	0f c6 e9 55          	shufps xmm5,xmm1,0x55
  9572a1:	0f 58 e8             	addps  xmm5,xmm0
  9572a4:	0f 28 c2             	movaps xmm0,xmm2
  9572a7:	0f c6 c2 aa          	shufps xmm0,xmm2,0xaa
  9572ab:	0f 28 fc             	movaps xmm7,xmm4
  9572ae:	0f 5e fe             	divps  xmm7,xmm6
  9572b1:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9572b5:	0f 58 c1             	addps  xmm0,xmm1
  9572b8:	0f 59 c7             	mulps  xmm0,xmm7
  9572bb:	0f 59 ef             	mulps  xmm5,xmm7
  9572be:	0f 59 f4             	mulps  xmm6,xmm4
  9572c1:	0f 59 df             	mulps  xmm3,xmm7
  9572c4:	0f c6 c5 10          	shufps xmm0,xmm5,0x10
  9572c8:	0f c6 f3 32          	shufps xmm6,xmm3,0x32
  9572cc:	0f c6 c6 88          	shufps xmm0,xmm6,0x88
  9572d0:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  9572d3:	0f 28 9c 24 90 00 00 00 	movaps xmm3,XMMWORD PTR [esp+0x90]
  9572db:	0f 28 d3             	movaps xmm2,xmm3
  9572de:	0f c6 d3 12          	shufps xmm2,xmm3,0x12
  9572e2:	0f 28 e3             	movaps xmm4,xmm3
  9572e5:	0f c6 e3 09          	shufps xmm4,xmm3,0x9
  9572e9:	0f 28 e9             	movaps xmm5,xmm1
  9572ec:	0f c6 e9 12          	shufps xmm5,xmm1,0x12
  9572f0:	0f 59 e5             	mulps  xmm4,xmm5
  9572f3:	0f 28 f1             	movaps xmm6,xmm1
  9572f6:	0f c6 f1 09          	shufps xmm6,xmm1,0x9
  9572fa:	0f 59 d6             	mulps  xmm2,xmm6
  9572fd:	0f 5c d4             	subps  xmm2,xmm4
  957300:	0f 28 f9             	movaps xmm7,xmm1
  957303:	0f c6 f9 ff          	shufps xmm7,xmm1,0xff
  957307:	0f 59 df             	mulps  xmm3,xmm7
  95730a:	0f 58 d3             	addps  xmm2,xmm3
  95730d:	0f 28 da             	movaps xmm3,xmm2
  957310:	0f c6 da 12          	shufps xmm3,xmm2,0x12
  957314:	0f 28 e2             	movaps xmm4,xmm2
  957317:	0f c6 e2 09          	shufps xmm4,xmm2,0x9
  95731b:	f3 0f 10 15 88 fd 03 01 	movss  xmm2,DWORD PTR ds:0x103fd88
  957323:	0f 59 de             	mulps  xmm3,xmm6
  957326:	0f 59 e5             	mulps  xmm4,xmm5
  957329:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  95732d:	0f 5c dc             	subps  xmm3,xmm4
  957330:	0f 59 da             	mulps  xmm3,xmm2
  957333:	0f 28 57 10          	movaps xmm2,XMMWORD PTR [edi+0x10]
  957337:	0f 58 9c 24 90 00 00 00 	addps  xmm3,XMMWORD PTR [esp+0x90]
  95733f:	0f 58 da             	addps  xmm3,xmm2
  957342:	0f 28 d0             	movaps xmm2,xmm0
  957345:	0f c6 d0 12          	shufps xmm2,xmm0,0x12
  957349:	0f 59 d6             	mulps  xmm2,xmm6
  95734c:	0f 28 f0             	movaps xmm6,xmm0
  95734f:	0f c6 f0 09          	shufps xmm6,xmm0,0x9
  957353:	0f 59 f5             	mulps  xmm6,xmm5
  957356:	0f 28 ef             	movaps xmm5,xmm7
  957359:	0f 59 e8             	mulps  xmm5,xmm0
  95735c:	0f 28 e0             	movaps xmm4,xmm0
  95735f:	0f 5c d6             	subps  xmm2,xmm6
  957362:	0f 58 d5             	addps  xmm2,xmm5
  957365:	0f c6 e0 ff          	shufps xmm4,xmm0,0xff
  957369:	0f 28 ec             	movaps xmm5,xmm4
  95736c:	0f 59 e9             	mulps  xmm5,xmm1
  95736f:	e9 0c 03 00 00       	jmp    0x957680
  957374:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  957377:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  95737b:	51                   	push   ecx
  95737c:	8b ce                	mov    ecx,esi
  95737e:	ff d2                	call   edx
  957380:	8b 06                	mov    eax,DWORD PTR [esi]
  957382:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  957385:	6a 00                	push   0x0
  957387:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  95738b:	51                   	push   ecx
  95738c:	57                   	push   edi
  95738d:	8b ce                	mov    ecx,esi
  95738f:	ff d2                	call   edx
  957391:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [esp+0x60]
  957396:	0f 28 54 24 70       	movaps xmm2,XMMWORD PTR [esp+0x70]
  95739b:	0f 28 8c 24 80 00 00 00 	movaps xmm1,XMMWORD PTR [esp+0x80]
  9573a3:	0f 28 f0             	movaps xmm6,xmm0
  9573a6:	0f 28 ea             	movaps xmm5,xmm2
  9573a9:	0f c6 f0 00          	shufps xmm6,xmm0,0x0
  9573ad:	0f 28 d9             	movaps xmm3,xmm1
  9573b0:	0f c6 ea 55          	shufps xmm5,xmm2,0x55
  9573b4:	0f 28 e6             	movaps xmm4,xmm6
  9573b7:	0f 58 e5             	addps  xmm4,xmm5
  9573ba:	0f c6 d9 aa          	shufps xmm3,xmm1,0xaa
  9573be:	0f 28 fb             	movaps xmm7,xmm3
  9573c1:	0f 58 fc             	addps  xmm7,xmm4
  9573c4:	0f 29 7c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm7
  9573c9:	f3 0f 11 7c 24 40    	movss  DWORD PTR [esp+0x40],xmm7
  9573cf:	f3 0f 10 3d cc 4c 0f 01 	movss  xmm7,DWORD PTR ds:0x10f4ccc
  9573d7:	0f c6 ff 00          	shufps xmm7,xmm7,0x0
  9573db:	f3 0f 11 7c 24 10    	movss  DWORD PTR [esp+0x10],xmm7
  9573e1:	f3 0f 10 7c 24 40    	movss  xmm7,DWORD PTR [esp+0x40]
  9573e7:	0f 2f 7c 24 10       	comiss xmm7,DWORD PTR [esp+0x10]
  9573ec:	0f 29 64 24 20       	movaps XMMWORD PTR [esp+0x20],xmm4
  9573f1:	f3 0f 10 25 b4 b5 f9 00 	movss  xmm4,DWORD PTR ds:0xf9b5b4
  9573f9:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  9573fd:	76 64                	jbe    0x957463
  9573ff:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  957407:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  95740b:	0f 58 5c 24 30       	addps  xmm3,XMMWORD PTR [esp+0x30]
  957410:	0f 51 fb             	sqrtps xmm7,xmm3
  957413:	0f 28 d8             	movaps xmm3,xmm0
  957416:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  95741a:	0f c6 c0 aa          	shufps xmm0,xmm0,0xaa
  95741e:	0f 28 ea             	movaps xmm5,xmm2
  957421:	0f c6 ea 00          	shufps xmm5,xmm2,0x0
  957425:	0f 5c dd             	subps  xmm3,xmm5
  957428:	0f 28 e9             	movaps xmm5,xmm1
  95742b:	0f c6 e9 00          	shufps xmm5,xmm1,0x0
  95742f:	0f 5c e8             	subps  xmm5,xmm0
  957432:	0f 28 c2             	movaps xmm0,xmm2
  957435:	0f c6 c2 aa          	shufps xmm0,xmm2,0xaa
  957439:	0f 28 f4             	movaps xmm6,xmm4
  95743c:	0f 5e f7             	divps  xmm6,xmm7
  95743f:	0f c6 c9 55          	shufps xmm1,xmm1,0x55
  957443:	0f 5c c1             	subps  xmm0,xmm1
  957446:	0f 59 c6             	mulps  xmm0,xmm6
  957449:	0f 59 ee             	mulps  xmm5,xmm6
  95744c:	0f 59 de             	mulps  xmm3,xmm6
  95744f:	0f 59 fc             	mulps  xmm7,xmm4
  957452:	0f c6 c5 10          	shufps xmm0,xmm5,0x10
  957456:	0f c6 df 32          	shufps xmm3,xmm7,0x32
  95745a:	0f c6 c3 88          	shufps xmm0,xmm3,0x88
  95745e:	e9 7e 01 00 00       	jmp    0x9575e1
  957463:	f3 0f 11 74 24 40    	movss  DWORD PTR [esp+0x40],xmm6
  957469:	f3 0f 10 7c 24 40    	movss  xmm7,DWORD PTR [esp+0x40]
  95746f:	f3 0f 11 6c 24 10    	movss  DWORD PTR [esp+0x10],xmm5
  957475:	0f 2f 7c 24 10       	comiss xmm7,DWORD PTR [esp+0x10]
  95747a:	0f 86 81 00 00 00    	jbe    0x957501
  957480:	f3 0f 11 74 24 40    	movss  DWORD PTR [esp+0x40],xmm6
  957486:	f3 0f 10 7c 24 40    	movss  xmm7,DWORD PTR [esp+0x40]
  95748c:	f3 0f 11 5c 24 10    	movss  DWORD PTR [esp+0x10],xmm3
  957492:	0f 2f 7c 24 10       	comiss xmm7,DWORD PTR [esp+0x10]
  957497:	76 68                	jbe    0x957501
  957499:	0f 58 dd             	addps  xmm3,xmm5
  95749c:	0f 5c f3             	subps  xmm6,xmm3
  95749f:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  9574a7:	0f 28 f9             	movaps xmm7,xmm1
  9574aa:	0f c6 f9 55          	shufps xmm7,xmm1,0x55
  9574ae:	0f 28 ea             	movaps xmm5,xmm2
  9574b1:	0f c6 ea aa          	shufps xmm5,xmm2,0xaa
  9574b5:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  9574b9:	0f 58 de             	addps  xmm3,xmm6
  9574bc:	0f 5c ef             	subps  xmm5,xmm7
  9574bf:	0f 28 f8             	movaps xmm7,xmm0
  9574c2:	0f 51 db             	sqrtps xmm3,xmm3
  9574c5:	0f c6 f8 aa          	shufps xmm7,xmm0,0xaa
  9574c9:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9574cd:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  9574d1:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  9574d5:	0f 28 f4             	movaps xmm6,xmm4
  9574d8:	0f 5e f3             	divps  xmm6,xmm3
  9574db:	0f 58 cf             	addps  xmm1,xmm7
  9574de:	0f 58 d0             	addps  xmm2,xmm0
  9574e1:	0f 59 dc             	mulps  xmm3,xmm4
  9574e4:	0f 59 d6             	mulps  xmm2,xmm6
  9574e7:	0f 59 ce             	mulps  xmm1,xmm6
  9574ea:	0f 59 ee             	mulps  xmm5,xmm6
  9574ed:	0f c6 da 10          	shufps xmm3,xmm2,0x10
  9574f1:	0f c6 cd 32          	shufps xmm1,xmm5,0x32
  9574f5:	0f c6 d9 88          	shufps xmm3,xmm1,0x88
  9574f9:	0f 28 c3             	movaps xmm0,xmm3
  9574fc:	e9 e0 00 00 00       	jmp    0x9575e1
  957501:	f3 0f 11 6c 24 40    	movss  DWORD PTR [esp+0x40],xmm5
  957507:	f3 0f 10 7c 24 40    	movss  xmm7,DWORD PTR [esp+0x40]
  95750d:	f3 0f 11 5c 24 10    	movss  DWORD PTR [esp+0x10],xmm3
  957513:	0f 2f 7c 24 10       	comiss xmm7,DWORD PTR [esp+0x10]
  957518:	76 65                	jbe    0x95757f
  95751a:	0f 58 de             	addps  xmm3,xmm6
  95751d:	0f 5c eb             	subps  xmm5,xmm3
  957520:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  957528:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  95752c:	0f 58 dd             	addps  xmm3,xmm5
  95752f:	0f 51 fb             	sqrtps xmm7,xmm3
  957532:	0f 28 e9             	movaps xmm5,xmm1
  957535:	0f c6 e9 00          	shufps xmm5,xmm1,0x0
  957539:	0f c6 c9 55          	shufps xmm1,xmm1,0x55
  95753d:	0f 28 d8             	movaps xmm3,xmm0
  957540:	0f c6 d8 aa          	shufps xmm3,xmm0,0xaa
  957544:	0f 5c eb             	subps  xmm5,xmm3
  957547:	0f 28 da             	movaps xmm3,xmm2
  95754a:	0f c6 da aa          	shufps xmm3,xmm2,0xaa
  95754e:	0f 58 d9             	addps  xmm3,xmm1
  957551:	0f 28 ca             	movaps xmm1,xmm2
  957554:	0f c6 ca 00          	shufps xmm1,xmm2,0x0
  957558:	0f 28 f4             	movaps xmm6,xmm4
  95755b:	0f 5e f7             	divps  xmm6,xmm7
  95755e:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  957562:	0f 58 c8             	addps  xmm1,xmm0
  957565:	0f 59 ce             	mulps  xmm1,xmm6
  957568:	0f 59 fc             	mulps  xmm7,xmm4
  95756b:	0f 59 de             	mulps  xmm3,xmm6
  95756e:	0f 59 ee             	mulps  xmm5,xmm6
  957571:	0f c6 cf 10          	shufps xmm1,xmm7,0x10
  957575:	0f c6 dd 32          	shufps xmm3,xmm5,0x32
  957579:	0f c6 cb 88          	shufps xmm1,xmm3,0x88
  95757d:	eb 5f                	jmp    0x9575de
  95757f:	0f 5c 5c 24 20       	subps  xmm3,XMMWORD PTR [esp+0x20]
  957584:	f3 0f 10 2d f8 98 f9 00 	movss  xmm5,DWORD PTR ds:0xf998f8
  95758c:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  957590:	0f 58 eb             	addps  xmm5,xmm3
  957593:	0f 28 fa             	movaps xmm7,xmm2
  957596:	0f c6 fa 00          	shufps xmm7,xmm2,0x0
  95759a:	0f 28 d8             	movaps xmm3,xmm0
  95759d:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  9575a1:	0f 5c df             	subps  xmm3,xmm7
  9575a4:	0f 28 f9             	movaps xmm7,xmm1
  9575a7:	0f c6 f9 55          	shufps xmm7,xmm1,0x55
  9575ab:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9575af:	0f 51 ed             	sqrtps xmm5,xmm5
  9575b2:	0f c6 d2 aa          	shufps xmm2,xmm2,0xaa
  9575b6:	0f 28 f4             	movaps xmm6,xmm4
  9575b9:	0f 5e f5             	divps  xmm6,xmm5
  9575bc:	0f c6 c0 aa          	shufps xmm0,xmm0,0xaa
  9575c0:	0f 58 c8             	addps  xmm1,xmm0
  9575c3:	0f 58 d7             	addps  xmm2,xmm7
  9575c6:	0f 59 ce             	mulps  xmm1,xmm6
  9575c9:	0f 59 d6             	mulps  xmm2,xmm6
  9575cc:	0f 59 ec             	mulps  xmm5,xmm4
  9575cf:	0f 59 de             	mulps  xmm3,xmm6
  9575d2:	0f c6 ca 10          	shufps xmm1,xmm2,0x10
  9575d6:	0f c6 eb 32          	shufps xmm5,xmm3,0x32
  9575da:	0f c6 cd 88          	shufps xmm1,xmm5,0x88
  9575de:	0f 28 c1             	movaps xmm0,xmm1
  9575e1:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  9575e4:	0f 28 9c 24 90 00 00 00 	movaps xmm3,XMMWORD PTR [esp+0x90]
  9575ec:	0f 28 d3             	movaps xmm2,xmm3
  9575ef:	0f c6 d3 12          	shufps xmm2,xmm3,0x12
  9575f3:	0f 28 e3             	movaps xmm4,xmm3
  9575f6:	0f c6 e3 09          	shufps xmm4,xmm3,0x9
  9575fa:	0f 28 e9             	movaps xmm5,xmm1
  9575fd:	0f c6 e9 09          	shufps xmm5,xmm1,0x9
  957601:	0f 59 d5             	mulps  xmm2,xmm5
  957604:	0f 28 f1             	movaps xmm6,xmm1
  957607:	0f c6 f1 12          	shufps xmm6,xmm1,0x12
  95760b:	0f 59 e6             	mulps  xmm4,xmm6
  95760e:	0f 5c d4             	subps  xmm2,xmm4
  957611:	0f 28 f9             	movaps xmm7,xmm1
  957614:	0f c6 f9 ff          	shufps xmm7,xmm1,0xff
  957618:	0f 59 df             	mulps  xmm3,xmm7
  95761b:	0f 58 d3             	addps  xmm2,xmm3
  95761e:	0f 28 da             	movaps xmm3,xmm2
  957621:	0f c6 da 12          	shufps xmm3,xmm2,0x12
  957625:	0f 59 dd             	mulps  xmm3,xmm5
  957628:	0f 28 e2             	movaps xmm4,xmm2
  95762b:	0f c6 e2 09          	shufps xmm4,xmm2,0x9
  95762f:	f3 0f 10 15 88 fd 03 01 	movss  xmm2,DWORD PTR ds:0x103fd88
  957637:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  95763b:	0f 59 e6             	mulps  xmm4,xmm6
  95763e:	0f 5c dc             	subps  xmm3,xmm4
  957641:	0f 59 da             	mulps  xmm3,xmm2
  957644:	0f 28 57 10          	movaps xmm2,XMMWORD PTR [edi+0x10]
  957648:	0f 58 9c 24 90 00 00 00 	addps  xmm3,XMMWORD PTR [esp+0x90]
  957650:	0f 58 da             	addps  xmm3,xmm2
  957653:	0f 28 d0             	movaps xmm2,xmm0
  957656:	0f c6 d0 12          	shufps xmm2,xmm0,0x12
  95765a:	0f 59 d5             	mulps  xmm2,xmm5
  95765d:	0f 28 e8             	movaps xmm5,xmm0
  957660:	0f c6 e8 09          	shufps xmm5,xmm0,0x9
  957664:	0f 59 ee             	mulps  xmm5,xmm6
  957667:	0f 5c d5             	subps  xmm2,xmm5
  95766a:	0f 28 ef             	movaps xmm5,xmm7
  95766d:	0f 59 e8             	mulps  xmm5,xmm0
  957670:	0f 58 d5             	addps  xmm2,xmm5
  957673:	0f 28 e0             	movaps xmm4,xmm0
  957676:	0f c6 e0 ff          	shufps xmm4,xmm0,0xff
  95767a:	0f 28 e9             	movaps xmm5,xmm1
  95767d:	0f 59 ec             	mulps  xmm5,xmm4
  957680:	0f 59 c8             	mulps  xmm1,xmm0
  957683:	0f 58 d5             	addps  xmm2,xmm5
  957686:	0f 28 e9             	movaps xmm5,xmm1
  957689:	0f 28 c1             	movaps xmm0,xmm1
  95768c:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  957690:	0f c6 e9 01          	shufps xmm5,xmm1,0x1
  957694:	0f 58 c5             	addps  xmm0,xmm5
  957697:	0f 58 c1             	addps  xmm0,xmm1
  95769a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  95769e:	0f 59 e7             	mulps  xmm4,xmm7
  9576a1:	0f 28 ca             	movaps xmm1,xmm2
  9576a4:	0f 5c e0             	subps  xmm4,xmm0
  9576a7:	0f c6 cc 0a          	shufps xmm1,xmm4,0xa
  9576ab:	0f c6 d1 84          	shufps xmm2,xmm1,0x84
  9576af:	0f 29 5f 10          	movaps XMMWORD PTR [edi+0x10],xmm3
  9576b3:	0f 29 17             	movaps XMMWORD PTR [edi],xmm2
  9576b6:	8b c7                	mov    eax,edi
  9576b8:	5f                   	pop    edi
  9576b9:	5e                   	pop    esi
  9576ba:	8b e5                	mov    esp,ebp
  9576bc:	5d                   	pop    ebp
  9576bd:	c2 04 00             	ret    0x4
