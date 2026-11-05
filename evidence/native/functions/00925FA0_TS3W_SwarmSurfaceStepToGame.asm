# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00925fa0, 0x00926231).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Disassembly of section .text:

00925fa0 <.text+0x524fa0>:
  925fa0:	55                   	push   ebp
  925fa1:	8b ec                	mov    ebp,esp
  925fa3:	83 e4 f0             	and    esp,0xfffffff0
  925fa6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  925fa9:	f3 0f 10 10          	movss  xmm2,DWORD PTR [eax]
  925fad:	f3 0f 10 58 04       	movss  xmm3,DWORD PTR [eax+0x4]
  925fb2:	f3 0f 10 60 08       	movss  xmm4,DWORD PTR [eax+0x8]
  925fb7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  925fba:	83 ec 10             	sub    esp,0x10
  925fbd:	f6 00 02             	test   BYTE PTR [eax],0x2
  925fc0:	74 72                	je     0x926034
  925fc2:	f3 0f 10 40 20       	movss  xmm0,DWORD PTR [eax+0x20]
  925fc7:	f3 0f 10 48 2c       	movss  xmm1,DWORD PTR [eax+0x2c]
  925fcc:	f3 0f 10 68 24       	movss  xmm5,DWORD PTR [eax+0x24]
  925fd1:	f3 0f 59 cc          	mulss  xmm1,xmm4
  925fd5:	f3 0f 59 c3          	mulss  xmm0,xmm3
  925fd9:	f3 0f 58 c1          	addss  xmm0,xmm1
  925fdd:	f3 0f 10 48 14       	movss  xmm1,DWORD PTR [eax+0x14]
  925fe2:	f3 0f 59 ca          	mulss  xmm1,xmm2
  925fe6:	f3 0f 59 eb          	mulss  xmm5,xmm3
  925fea:	f3 0f 58 c1          	addss  xmm0,xmm1
  925fee:	f3 0f 10 48 18       	movss  xmm1,DWORD PTR [eax+0x18]
  925ff3:	f3 0f 59 ca          	mulss  xmm1,xmm2
  925ff7:	f3 0f 58 cd          	addss  xmm1,xmm5
  925ffb:	f3 0f 10 68 30       	movss  xmm5,DWORD PTR [eax+0x30]
  926000:	f3 0f 59 ec          	mulss  xmm5,xmm4
  926004:	f3 0f 58 cd          	addss  xmm1,xmm5
  926008:	f3 0f 10 68 1c       	movss  xmm5,DWORD PTR [eax+0x1c]
  92600d:	f3 0f 59 ea          	mulss  xmm5,xmm2
  926011:	f3 0f 10 50 28       	movss  xmm2,DWORD PTR [eax+0x28]
  926016:	f3 0f 59 d3          	mulss  xmm2,xmm3
  92601a:	f3 0f 58 ea          	addss  xmm5,xmm2
  92601e:	f3 0f 10 50 34       	movss  xmm2,DWORD PTR [eax+0x34]
  926023:	f3 0f 59 d4          	mulss  xmm2,xmm4
  926027:	f3 0f 58 ea          	addss  xmm5,xmm2
  92602b:	0f 28 d0             	movaps xmm2,xmm0
  92602e:	0f 28 d9             	movaps xmm3,xmm1
  926031:	0f 28 e5             	movaps xmm4,xmm5
  926034:	f3 0f 10 40 10       	movss  xmm0,DWORD PTR [eax+0x10]
  926039:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  92603c:	0f 28 c8             	movaps xmm1,xmm0
  92603f:	f3 0f 59 ca          	mulss  xmm1,xmm2
  926043:	0f 28 d0             	movaps xmm2,xmm0
  926046:	f3 0f 59 d3          	mulss  xmm2,xmm3
  92604a:	f3 0f 10 58 04       	movss  xmm3,DWORD PTR [eax+0x4]
  92604f:	f3 0f 58 d9          	addss  xmm3,xmm1
  926053:	f3 0f 10 48 08       	movss  xmm1,DWORD PTR [eax+0x8]
  926058:	f3 0f 58 ca          	addss  xmm1,xmm2
  92605c:	f3 0f 10 50 0c       	movss  xmm2,DWORD PTR [eax+0xc]
  926061:	f3 0f 59 c4          	mulss  xmm0,xmm4
  926065:	f3 0f 10 25 f0 98 f9 	movss  xmm4,DWORD PTR ds:0xf998f0
  92606c:	00
  92606d:	f3 0f 58 d0          	addss  xmm2,xmm0
  926071:	0f 28 c4             	movaps xmm0,xmm4
  926074:	f3 0f 5c c3          	subss  xmm0,xmm3
  926078:	f3 0f 11 54 24 04    	movss  DWORD PTR [esp+0x4],xmm2
  92607e:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  926084:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  92608a:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  92608f:	0f 28 34 24          	movaps xmm6,XMMWORD PTR [esp]
  926093:	0f 29 31             	movaps XMMWORD PTR [ecx],xmm6
  926096:	f6 00 02             	test   BYTE PTR [eax],0x2
  926099:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  92609c:	f3 0f 10 11          	movss  xmm2,DWORD PTR [ecx]
  9260a0:	f3 0f 10 59 04       	movss  xmm3,DWORD PTR [ecx+0x4]
  9260a5:	f3 0f 10 69 08       	movss  xmm5,DWORD PTR [ecx+0x8]
  9260aa:	74 72                	je     0x92611e
  9260ac:	f3 0f 10 40 2c       	movss  xmm0,DWORD PTR [eax+0x2c]
  9260b1:	f3 0f 10 48 20       	movss  xmm1,DWORD PTR [eax+0x20]
  9260b6:	f3 0f 10 78 24       	movss  xmm7,DWORD PTR [eax+0x24]
  9260bb:	f3 0f 59 cb          	mulss  xmm1,xmm3
  9260bf:	f3 0f 59 c5          	mulss  xmm0,xmm5
  9260c3:	f3 0f 58 c1          	addss  xmm0,xmm1
  9260c7:	f3 0f 10 48 14       	movss  xmm1,DWORD PTR [eax+0x14]
  9260cc:	f3 0f 59 fb          	mulss  xmm7,xmm3
  9260d0:	f3 0f 59 ca          	mulss  xmm1,xmm2
  9260d4:	f3 0f 58 c1          	addss  xmm0,xmm1
  9260d8:	f3 0f 10 48 30       	movss  xmm1,DWORD PTR [eax+0x30]
  9260dd:	f3 0f 59 cd          	mulss  xmm1,xmm5
  9260e1:	f3 0f 58 cf          	addss  xmm1,xmm7
  9260e5:	f3 0f 10 78 18       	movss  xmm7,DWORD PTR [eax+0x18]
  9260ea:	f3 0f 59 fa          	mulss  xmm7,xmm2
  9260ee:	f3 0f 58 cf          	addss  xmm1,xmm7
  9260f2:	f3 0f 10 78 34       	movss  xmm7,DWORD PTR [eax+0x34]
  9260f7:	f3 0f 59 fd          	mulss  xmm7,xmm5
  9260fb:	f3 0f 10 68 28       	movss  xmm5,DWORD PTR [eax+0x28]
  926100:	f3 0f 59 eb          	mulss  xmm5,xmm3
  926104:	f3 0f 10 58 1c       	movss  xmm3,DWORD PTR [eax+0x1c]
  926109:	f3 0f 59 da          	mulss  xmm3,xmm2
  92610d:	f3 0f 58 fd          	addss  xmm7,xmm5
  926111:	f3 0f 58 fb          	addss  xmm7,xmm3
  926115:	0f 28 d0             	movaps xmm2,xmm0
  926118:	0f 28 d9             	movaps xmm3,xmm1
  92611b:	0f 28 ef             	movaps xmm5,xmm7
  92611e:	f3 0f 10 40 10       	movss  xmm0,DWORD PTR [eax+0x10]
  926123:	0f 28 c8             	movaps xmm1,xmm0
  926126:	f3 0f 59 ca          	mulss  xmm1,xmm2
  92612a:	0f 28 d0             	movaps xmm2,xmm0
  92612d:	f3 0f 59 d3          	mulss  xmm2,xmm3
  926131:	f3 0f 10 58 04       	movss  xmm3,DWORD PTR [eax+0x4]
  926136:	f3 0f 58 d9          	addss  xmm3,xmm1
  92613a:	f3 0f 10 48 08       	movss  xmm1,DWORD PTR [eax+0x8]
  92613f:	f3 0f 58 ca          	addss  xmm1,xmm2
  926143:	f3 0f 10 50 0c       	movss  xmm2,DWORD PTR [eax+0xc]
  926148:	f3 0f 59 c5          	mulss  xmm0,xmm5
  92614c:	f3 0f 58 d0          	addss  xmm2,xmm0
  926150:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  926157:	00
  926158:	f3 0f 5c e3          	subss  xmm4,xmm3
  92615c:	f3 0f 11 54 24 04    	movss  DWORD PTR [esp+0x4],xmm2
  926162:	f3 0f 10 15 54 34 04 	movss  xmm2,DWORD PTR ds:0x1043454
  926169:	01
  92616a:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  926170:	f3 0f 11 64 24 0c    	movss  DWORD PTR [esp+0xc],xmm4
  926176:	f3 0f 11 24 24       	movss  DWORD PTR [esp],xmm4
  92617b:	0f 28 0c 24          	movaps xmm1,XMMWORD PTR [esp]
  92617f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  926183:	0f 5c ce             	subps  xmm1,xmm6
  926186:	0f 59 c1             	mulps  xmm0,xmm1
  926189:	0f 5f c1             	maxps  xmm0,xmm1
  92618c:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  926190:	0f c2 c2 02          	cmpleps xmm0,xmm2
  926194:	0f 50 d0             	movmskps edx,xmm0
  926197:	83 e2 07             	and    edx,0x7
  92619a:	80 fa 07             	cmp    dl,0x7
  92619d:	0f 84 81 00 00 00    	je     0x926224
  9261a3:	0f 28 d1             	movaps xmm2,xmm1
  9261a6:	0f 59 d1             	mulps  xmm2,xmm1
  9261a9:	0f 28 c2             	movaps xmm0,xmm2
  9261ac:	0f c6 c2 02          	shufps xmm0,xmm2,0x2
  9261b0:	0f 28 da             	movaps xmm3,xmm2
  9261b3:	0f c6 da 01          	shufps xmm3,xmm2,0x1
  9261b7:	0f 58 c3             	addps  xmm0,xmm3
  9261ba:	f3 0f 10 1d b4 b5 f9 	movss  xmm3,DWORD PTR ds:0xf9b5b4
  9261c1:	00
  9261c2:	0f 58 c2             	addps  xmm0,xmm2
  9261c5:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9261c9:	0f 28 e8             	movaps xmm5,xmm0
  9261cc:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  9261d3:	00
  9261d4:	0f 52 e5             	rsqrtps xmm4,xmm5
  9261d7:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9261db:	0f 28 d0             	movaps xmm2,xmm0
  9261de:	0f 28 fc             	movaps xmm7,xmm4
  9261e1:	0f 59 fc             	mulps  xmm7,xmm4
  9261e4:	0f 59 fd             	mulps  xmm7,xmm5
  9261e7:	0f 5c d7             	subps  xmm2,xmm7
  9261ea:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  9261ee:	0f 28 fb             	movaps xmm7,xmm3
  9261f1:	0f 59 fc             	mulps  xmm7,xmm4
  9261f4:	0f 59 d7             	mulps  xmm2,xmm7
  9261f7:	0f 58 d4             	addps  xmm2,xmm4
  9261fa:	0f 28 e2             	movaps xmm4,xmm2
  9261fd:	0f 59 e2             	mulps  xmm4,xmm2
  926200:	0f 59 da             	mulps  xmm3,xmm2
  926203:	0f 59 e5             	mulps  xmm4,xmm5
  926206:	0f 5c c4             	subps  xmm0,xmm4
  926209:	0f 59 c3             	mulps  xmm0,xmm3
  92620c:	0f 58 c2             	addps  xmm0,xmm2
  92620f:	f3 0f 10 55 14       	movss  xmm2,DWORD PTR [ebp+0x14]
  926214:	0f 59 c1             	mulps  xmm0,xmm1
  926217:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  92621b:	0f 59 c2             	mulps  xmm0,xmm2
  92621e:	0f 58 c1             	addps  xmm0,xmm1
  926221:	0f 28 c8             	movaps xmm1,xmm0
  926224:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  926227:	0f 58 f1             	addps  xmm6,xmm1
  92622a:	0f 29 30             	movaps XMMWORD PTR [eax],xmm6
  92622d:	8b e5                	mov    esp,ebp
  92622f:	5d                   	pop    ebp
  926230:	c3                   	ret
