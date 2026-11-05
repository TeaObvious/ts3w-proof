# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body and owned-range envelope.
Actual annotated Ghidra pseudocode: 00F80F70_UiStdDrawable_InitializePropertyRows.c
Owned ranges: [[00f80f70, 00f811c2]]

00f80f70  55  PUSH EBP
00f80f71  8bec  MOV EBP,ESP
00f80f73  c70558fd140108000000  MOV dword ptr [0x0114fd58],0x8
00f80f7d  c7055cfd140100000000  MOV dword ptr [0x0114fd5c],0x0
00f80f87  c70560fd140100000000  MOV dword ptr [0x0114fd60],0x0
00f80f91  c70564fd14010a003cef  MOV dword ptr [0x0114fd64],0xef3c000a
00f80f9b  66c70568fd14010900  MOV word ptr [0x0114fd68],0x9
00f80fa4  66c7056afd14015400  MOV word ptr [0x0114fd6a],0x54
00f80fad  c7056cfd140101000000  MOV dword ptr [0x0114fd6c],0x1
00f80fb7  c70570fd140100000000  MOV dword ptr [0x0114fd70],0x0
00f80fc1  c70574fd140100000000  MOV dword ptr [0x0114fd74],0x0
00f80fcb  c70578fd14010b003cef  MOV dword ptr [0x0114fd78],0xef3c000b
00f80fd5  66c7057cfd14011100  MOV word ptr [0x0114fd7c],0x11
00f80fde  66c7057efd14016800  MOV word ptr [0x0114fd7e],0x68
00f80fe7  c70580fd140101000000  MOV dword ptr [0x0114fd80],0x1
00f80ff1  c70584fd140100000000  MOV dword ptr [0x0114fd84],0x0
00f80ffb  c70588fd1401acc0fb00  MOV dword ptr [0x0114fd88],0xfbc0ac
00f81005  c7058cfd14010c003cef  MOV dword ptr [0x0114fd8c],0xef3c000c
00f8100f  66c70590fd14011400  MOV word ptr [0x0114fd90],0x14
00f81018  66c70592fd14015800  MOV word ptr [0x0114fd92],0x58
00f81021  c70594fd140101000000  MOV dword ptr [0x0114fd94],0x1
00f8102b  c70598fd140100000000  MOV dword ptr [0x0114fd98],0x0
00f81035  c7059cfd14018c08fc00  MOV dword ptr [0x0114fd9c],0xfc088c
00f8103f  c705a0fd14010d003c0f  MOV dword ptr [0x0114fda0],0xf3c000d
00f81049  66c705a4fd14011300  MOV word ptr [0x0114fda4],0x13
00f81052  66c705a6fd14017800  MOV word ptr [0x0114fda6],0x78
00f8105b  c705a8fd140101000000  MOV dword ptr [0x0114fda8],0x1
00f81065  c705acfd140100000000  MOV dword ptr [0x0114fdac],0x0
00f8106f  c705b0fd140100000000  MOV dword ptr [0x0114fdb0],0x0
00f81079  c705b4fd14010e003c0f  MOV dword ptr [0x0114fdb4],0xf3c000e
00f81083  66c705b8fd14010b00  MOV word ptr [0x0114fdb8],0xb
00f8108c  66c705bafd14017c00  MOV word ptr [0x0114fdba],0x7c
00f81095  c705bcfd140101000000  MOV dword ptr [0x0114fdbc],0x1
00f8109f  c705c0fd140100000000  MOV dword ptr [0x0114fdc0],0x0
00f810a9  c705c4fd140194c0fb00  MOV dword ptr [0x0114fdc4],0xfbc094
00f810b3  c705c8fd14010f003c0f  MOV dword ptr [0x0114fdc8],0xf3c000f
00f810bd  66c705ccfd14011300  MOV word ptr [0x0114fdcc],0x13
00f810c6  66c705cefd14013000  MOV word ptr [0x0114fdce],0x30
00f810cf  c705d0fd140108000000  MOV dword ptr [0x0114fdd0],0x8
00f810d9  c705d4fd140100000000  MOV dword ptr [0x0114fdd4],0x0
00f810e3  c705d8fd140100000000  MOV dword ptr [0x0114fdd8],0x0
00f810ed  c705dcfd140110003c0f  MOV dword ptr [0x0114fddc],0xf3c0010
00f810f7  66c705e0fd14010900  MOV word ptr [0x0114fde0],0x9
00f81100  66c705e2fd14018000  MOV word ptr [0x0114fde2],0x80
00f81109  c705e4fd140101000000  MOV dword ptr [0x0114fde4],0x1
00f81113  c705e8fd140100000000  MOV dword ptr [0x0114fde8],0x0
00f8111d  c705ecfd140194c0fb00  MOV dword ptr [0x0114fdec],0xfbc094
00f81127  c705f0fd140111003c0f  MOV dword ptr [0x0114fdf0],0xf3c0011
00f81131  66c705f4fd14011300  MOV word ptr [0x0114fdf4],0x13
00f8113a  66c705f6fd14015000  MOV word ptr [0x0114fdf6],0x50
00f81143  c705f8fd140101000000  MOV dword ptr [0x0114fdf8],0x1
00f8114d  c705fcfd140100000000  MOV dword ptr [0x0114fdfc],0x0
00f81157  c70500fe140100000000  MOV dword ptr [0x0114fe00],0x0
00f81161  c70504fe140112003c0f  MOV dword ptr [0x0114fe04],0xf3c0012
00f8116b  66c70508fe14011100  MOV word ptr [0x0114fe08],0x11
00f81174  66c7050afe14017000  MOV word ptr [0x0114fe0a],0x70
00f8117d  c7050cfe140101000000  MOV dword ptr [0x0114fe0c],0x1
00f81187  c70510fe140100000000  MOV dword ptr [0x0114fe10],0x0
00f81191  c70514fe140100000000  MOV dword ptr [0x0114fe14],0x0
00f8119b  c70518fe140113003c0f  MOV dword ptr [0x0114fe18],0xf3c0013
00f811a5  66c7051cfe14010900  MOV word ptr [0x0114fe1c],0x9
00f811ae  66c7051efe14018400  MOV word ptr [0x0114fe1e],0x84
00f811b7  c70520fe140101000000  MOV dword ptr [0x0114fe20],0x1
00f811c1  5d  POP EBP
00f811c2  c3  RET
