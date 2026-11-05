# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00958760, 0x009589e2); analyst name TransformComponent_SetWorldMatrix.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00958760 <.text+0x557760>:
  958760:	55                   	push   ebp
  958761:	8b ec                	mov    ebp,esp
  958763:	83 e4 f0             	and    esp,0xfffffff0
  958766:	83 ec 70             	sub    esp,0x70
  958769:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  95876c:	0f 28 48 10          	movaps xmm1,XMMWORD PTR [eax+0x10]
  958770:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  958773:	0f 28 40 20          	movaps xmm0,XMMWORD PTR [eax+0x20]
  958777:	0f 28 e1             	movaps xmm4,xmm1
  95877a:	0f 28 f2             	movaps xmm6,xmm2
  95877d:	0f c6 e1 55          	shufps xmm4,xmm1,0x55
  958781:	0f 28 d8             	movaps xmm3,xmm0
  958784:	0f c6 f2 00          	shufps xmm6,xmm2,0x0
  958788:	0f 28 ec             	movaps xmm5,xmm4
  95878b:	0f 58 ee             	addps  xmm5,xmm6
  95878e:	0f c6 d8 aa          	shufps xmm3,xmm0,0xaa
  958792:	0f 28 fb             	movaps xmm7,xmm3
  958795:	0f 58 fd             	addps  xmm7,xmm5
  958798:	f3 0f 10 2d b4 b5 f9 00 	movss  xmm5,DWORD PTR ds:0xf9b5b4
  9587a0:	0f 29 7c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm7
  9587a5:	f3 0f 11 3c 24       	movss  DWORD PTR [esp],xmm7
  9587aa:	f3 0f 10 3d cc 4c 0f 01 	movss  xmm7,DWORD PTR ds:0x10f4ccc
  9587b2:	0f c6 ff 00          	shufps xmm7,xmm7,0x0
  9587b6:	f3 0f 11 7c 24 10    	movss  DWORD PTR [esp+0x10],xmm7
  9587bc:	f3 0f 10 3c 24       	movss  xmm7,DWORD PTR [esp]
  9587c1:	0f 2f 7c 24 10       	comiss xmm7,DWORD PTR [esp+0x10]
  9587c6:	0f 29 54 24 40       	movaps XMMWORD PTR [esp+0x40],xmm2
  9587cb:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  9587d0:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  9587d5:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  9587d9:	76 61                	jbe    0x95883c
  9587db:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  9587e3:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  9587e7:	0f 58 5c 24 20       	addps  xmm3,XMMWORD PTR [esp+0x20]
  9587ec:	0f 51 fb             	sqrtps xmm7,xmm3
  9587ef:	0f 28 e1             	movaps xmm4,xmm1
  9587f2:	0f c6 e1 00          	shufps xmm4,xmm1,0x0
  9587f6:	0f 28 da             	movaps xmm3,xmm2
  9587f9:	0f c6 da 55          	shufps xmm3,xmm2,0x55
  9587fd:	0f 5c dc             	subps  xmm3,xmm4
  958800:	0f 28 e0             	movaps xmm4,xmm0
  958803:	0f c6 e0 00          	shufps xmm4,xmm0,0x0
  958807:	0f c6 c9 aa          	shufps xmm1,xmm1,0xaa
  95880b:	0f 28 f5             	movaps xmm6,xmm5
  95880e:	0f 5e f7             	divps  xmm6,xmm7
  958811:	0f c6 d2 aa          	shufps xmm2,xmm2,0xaa
  958815:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  958819:	0f 5c c8             	subps  xmm1,xmm0
  95881c:	0f 5c e2             	subps  xmm4,xmm2
  95881f:	0f 59 ce             	mulps  xmm1,xmm6
  958822:	0f 59 e6             	mulps  xmm4,xmm6
  958825:	0f 59 de             	mulps  xmm3,xmm6
  958828:	0f 59 fd             	mulps  xmm7,xmm5
  95882b:	0f c6 cc 10          	shufps xmm1,xmm4,0x10
  95882f:	0f c6 df 32          	shufps xmm3,xmm7,0x32
  958833:	0f c6 cb 88          	shufps xmm1,xmm3,0x88
  958837:	e9 88 01 00 00       	jmp    0x9589c4
  95883c:	f3 0f 11 74 24 20    	movss  DWORD PTR [esp+0x20],xmm6
  958842:	f3 0f 10 7c 24 20    	movss  xmm7,DWORD PTR [esp+0x20]
  958848:	f3 0f 11 64 24 10    	movss  DWORD PTR [esp+0x10],xmm4
  95884e:	0f 2f 7c 24 10       	comiss xmm7,DWORD PTR [esp+0x10]
  958853:	0f 86 84 00 00 00    	jbe    0x9588dd
  958859:	f3 0f 11 74 24 20    	movss  DWORD PTR [esp+0x20],xmm6
  95885f:	f3 0f 10 7c 24 20    	movss  xmm7,DWORD PTR [esp+0x20]
  958865:	f3 0f 11 5c 24 10    	movss  DWORD PTR [esp+0x10],xmm3
  95886b:	0f 2f 7c 24 10       	comiss xmm7,DWORD PTR [esp+0x10]
  958870:	76 6b                	jbe    0x9588dd
  958872:	0f 58 dc             	addps  xmm3,xmm4
  958875:	0f 5c f3             	subps  xmm6,xmm3
  958878:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  958880:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  958884:	0f 58 de             	addps  xmm3,xmm6
  958887:	0f 51 e3             	sqrtps xmm4,xmm3
  95888a:	0f 28 d8             	movaps xmm3,xmm0
  95888d:	0f c6 d8 55          	shufps xmm3,xmm0,0x55
  958891:	0f 28 f1             	movaps xmm6,xmm1
  958894:	0f c6 f1 aa          	shufps xmm6,xmm1,0xaa
  958898:	0f 5c f3             	subps  xmm6,xmm3
  95889b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  95889f:	0f 28 da             	movaps xmm3,xmm2
  9588a2:	0f c6 da aa          	shufps xmm3,xmm2,0xaa
  9588a6:	0f 58 d8             	addps  xmm3,xmm0
  9588a9:	0f 28 c2             	movaps xmm0,xmm2
  9588ac:	0f c6 c2 55          	shufps xmm0,xmm2,0x55
  9588b0:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9588b4:	0f 28 fd             	movaps xmm7,xmm5
  9588b7:	0f 5e fc             	divps  xmm7,xmm4
  9588ba:	0f 58 c1             	addps  xmm0,xmm1
  9588bd:	0f 59 e5             	mulps  xmm4,xmm5
  9588c0:	0f 59 c7             	mulps  xmm0,xmm7
  9588c3:	0f 59 df             	mulps  xmm3,xmm7
  9588c6:	0f 59 f7             	mulps  xmm6,xmm7
  9588c9:	0f c6 e0 10          	shufps xmm4,xmm0,0x10
  9588cd:	0f c6 de 32          	shufps xmm3,xmm6,0x32
  9588d1:	0f c6 e3 88          	shufps xmm4,xmm3,0x88
  9588d5:	0f 28 cc             	movaps xmm1,xmm4
  9588d8:	e9 e7 00 00 00       	jmp    0x9589c4
  9588dd:	f3 0f 11 64 24 20    	movss  DWORD PTR [esp+0x20],xmm4
  9588e3:	f3 0f 10 7c 24 20    	movss  xmm7,DWORD PTR [esp+0x20]
  9588e9:	f3 0f 11 5c 24 10    	movss  DWORD PTR [esp+0x10],xmm3
  9588ef:	0f 2f 7c 24 10       	comiss xmm7,DWORD PTR [esp+0x10]
  9588f4:	76 68                	jbe    0x95895e
  9588f6:	0f 58 de             	addps  xmm3,xmm6
  9588f9:	0f 5c e3             	subps  xmm4,xmm3
  9588fc:	f3 0f 10 1d f8 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f8
  958904:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  958908:	0f 58 dc             	addps  xmm3,xmm4
  95890b:	0f 51 fb             	sqrtps xmm7,xmm3
  95890e:	0f 28 e0             	movaps xmm4,xmm0
  958911:	0f c6 e0 00          	shufps xmm4,xmm0,0x0
  958915:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  958919:	0f 28 da             	movaps xmm3,xmm2
  95891c:	0f c6 da aa          	shufps xmm3,xmm2,0xaa
  958920:	0f 5c e3             	subps  xmm4,xmm3
  958923:	0f 28 d9             	movaps xmm3,xmm1
  958926:	0f c6 d9 aa          	shufps xmm3,xmm1,0xaa
  95892a:	0f 58 d8             	addps  xmm3,xmm0
  95892d:	0f 28 c2             	movaps xmm0,xmm2
  958930:	0f c6 c2 55          	shufps xmm0,xmm2,0x55
  958934:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  958938:	0f 58 c1             	addps  xmm0,xmm1
  95893b:	0f 28 f5             	movaps xmm6,xmm5
  95893e:	0f 5e f7             	divps  xmm6,xmm7
  958941:	0f 59 c6             	mulps  xmm0,xmm6
  958944:	0f 59 fd             	mulps  xmm7,xmm5
  958947:	0f 59 de             	mulps  xmm3,xmm6
  95894a:	0f 59 e6             	mulps  xmm4,xmm6
  95894d:	0f c6 c7 10          	shufps xmm0,xmm7,0x10
  958951:	0f c6 dc 32          	shufps xmm3,xmm4,0x32
  958955:	0f c6 c3 88          	shufps xmm0,xmm3,0x88
  958959:	0f 28 c8             	movaps xmm1,xmm0
  95895c:	eb 66                	jmp    0x9589c4
  95895e:	0f 58 e6             	addps  xmm4,xmm6
  958961:	0f 5c dc             	subps  xmm3,xmm4
  958964:	f3 0f 10 25 f8 98 f9 00 	movss  xmm4,DWORD PTR ds:0xf998f8
  95896c:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  958970:	0f 58 e3             	addps  xmm4,xmm3
  958973:	0f 51 f4             	sqrtps xmm6,xmm4
  958976:	0f 28 e1             	movaps xmm4,xmm1
  958979:	0f c6 e1 00          	shufps xmm4,xmm1,0x0
  95897d:	0f 28 da             	movaps xmm3,xmm2
  958980:	0f c6 da 55          	shufps xmm3,xmm2,0x55
  958984:	0f 5c dc             	subps  xmm3,xmm4
  958987:	0f 28 e1             	movaps xmm4,xmm1
  95898a:	0f c6 e1 aa          	shufps xmm4,xmm1,0xaa
  95898e:	0f 28 c8             	movaps xmm1,xmm0
  958991:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  958995:	0f 58 e1             	addps  xmm4,xmm1
  958998:	0f 28 ca             	movaps xmm1,xmm2
  95899b:	0f c6 ca aa          	shufps xmm1,xmm2,0xaa
  95899f:	0f 28 fd             	movaps xmm7,xmm5
  9589a2:	0f 5e fe             	divps  xmm7,xmm6
  9589a5:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9589a9:	0f 58 c8             	addps  xmm1,xmm0
  9589ac:	0f 59 cf             	mulps  xmm1,xmm7
  9589af:	0f 59 e7             	mulps  xmm4,xmm7
  9589b2:	0f 59 f5             	mulps  xmm6,xmm5
  9589b5:	0f 59 df             	mulps  xmm3,xmm7
  9589b8:	0f c6 cc 10          	shufps xmm1,xmm4,0x10
  9589bc:	0f c6 f3 32          	shufps xmm6,xmm3,0x32
  9589c0:	0f c6 ce 88          	shufps xmm1,xmm6,0x88
  9589c4:	0f 28 40 30          	movaps xmm0,XMMWORD PTR [eax+0x30]
  9589c8:	8d 44 24 20          	lea    eax,[esp+0x20]
  9589cc:	50                   	push   eax
  9589cd:	0f 29 4c 24 24       	movaps XMMWORD PTR [esp+0x24],xmm1
  9589d2:	0f 29 44 24 34       	movaps XMMWORD PTR [esp+0x34],xmm0
  9589d7:	e8 74 f7 ff ff       	call   0x958150
  9589dc:	8b e5                	mov    esp,ebp
  9589de:	5d                   	pop    ebp
  9589df:	c2 04 00             	ret    0x4
