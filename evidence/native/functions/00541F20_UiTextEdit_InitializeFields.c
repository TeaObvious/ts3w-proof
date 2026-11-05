/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst note, original PC1.67 static. TextEdit physical ECX complete object, no stack inputs,
   plain RET returns complete receiver in EAX. Calls516090 then installs primaryFC1038,
   IWindowFC0F10 at+4 and editor interfaceFC0E00 at+250. Property producer state flags+258=154hex;
   wrap+260=0, maximum+2C0=FFFFFFFF, cursor+2C4=0, anchor+2C8=0, history+57C=10decimal initially.
   Original managed TextEdit constructor subsequently sets UndoHistorySize property0; do not replace
   managed policy with a second native initialization. Three elapsed clocks use5 and stopped flag0.
   GetDoubleClickTime is an unsigned UINT: physical signed FILD followed by negative correction2^32
   then FMUL0.001, stored+680. Full color/default/resource initializations retained, no rendering or
   full IME equivalence inferred. */

void * __thiscall UiTextEdit_InitializeFields(void *this)

{
  int *piVar1;
  float fVar2;
  int *piVar3;
  UINT UVar4;
  int iVar5;
  
  Window_InitializeNativeFields(this);
  *(undefined ***)((int)this + 0x250) = &PTR_LAB_00fc0cd8;
  *(undefined ***)this = &PTR_thunk_FUN_007e4140_00fc1038;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fc0f10;
  *(undefined ***)((int)this + 0x250) = &PTR_LAB_00fc0e00;
  *(undefined4 *)((int)this + 600) = 0x154;
  *(undefined1 *)((int)this + 0x254) = 0;
  *(undefined4 *)((int)this + 0x25c) = 0;
  *(undefined4 *)((int)this + 0x260) = 0;
  *(undefined4 *)((int)this + 0x264) = 0x40800000;
  *(undefined4 *)((int)this + 0x268) = 0x40800000;
  *(undefined4 *)((int)this + 0x26c) = 0x40800000;
  *(undefined4 *)((int)this + 0x270) = 0x40800000;
  *(undefined4 *)((int)this + 0x274) = 0;
  *(undefined4 *)((int)this + 0x278) = 0;
  *(undefined4 *)((int)this + 0x27c) = 0;
  *(undefined4 *)((int)this + 0x280) = 0;
  *(undefined4 *)((int)this + 0x284) = 4;
  *(undefined4 *)((int)this + 0x288) = 3;
  *(undefined4 *)((int)this + 0x28c) = 0;
  *(undefined4 *)((int)this + 0x290) = 0;
  *(undefined4 *)((int)this + 0x294) = 0;
  *(undefined4 *)((int)this + 0x298) = 0;
  *(undefined4 *)((int)this + 0x29c) = 0;
  *(undefined4 *)((int)this + 0x2c0) = 0xffffffff;
  *(undefined4 *)((int)this + 0x2c4) = 0;
  *(undefined4 *)((int)this + 0x2c8) = 0;
  *(undefined4 *)((int)this + 0x2cc) = 0;
  *(undefined4 *)((int)this + 0x2d0) = 0;
  *(undefined4 *)((int)this + 0x2d4) = 0;
  *(undefined4 *)((int)this + 0x2d8) = 0;
  *(undefined4 *)((int)this + 0x2dc) = 0;
  *(undefined4 *)((int)this + 0x2e0) = 0;
  *(char **)((int)this + 0x2e4) = "UI/UTFWin/WinTextEdit";
  TextStyle_Initialize((undefined2 *)((int)this + 0x2e8));
  *(undefined4 *)((int)this + 0x560) = 0;
  *(undefined4 *)((int)this + 0x564) = 0;
  *(undefined4 *)((int)this + 0x568) = 0;
  *(undefined4 *)((int)this + 0x56c) = 0;
  *(undefined4 *)((int)this + 0x570) = 0;
  *(char **)((int)this + 0x574) = "UI/UTFWin/WinTextEdit";
  *(undefined4 *)((int)this + 0x578) = 0;
  *(undefined4 *)((int)this + 0x57c) = 10;
  *(undefined4 *)((int)this + 0x580) = 0;
  *(undefined4 *)((int)this + 0x584) = 0;
  *(undefined4 *)((int)this + 0x588) = 0;
  *(undefined4 *)((int)this + 0x58c) = 0;
  *(undefined4 *)((int)this + 0x590) = 0;
  *(undefined4 *)((int)this + 0x594) = 0;
  *(undefined4 *)((int)this + 0x598) = 0;
  *(undefined4 *)((int)this + 0x59c) = 0;
  *(undefined4 *)((int)this + 0x5a0) = 0;
  *(undefined4 *)((int)this + 0x5a4) = 0;
  *(char **)((int)this + 0x5a8) = "UI/UTFWin/WinTextEdit";
  FUN_00610c90((undefined4 *)((int)this + 0x580),0);
  *(undefined4 *)((int)this + 0x5ac) = 0;
  *(undefined4 *)((int)this + 0x5b0) = 0;
  *(undefined4 *)((int)this + 0x5b4) = 0;
  *(undefined4 *)((int)this + 0x5b8) = 0;
  *(undefined4 *)((int)this + 0x5bc) = 0;
  *(undefined4 *)((int)this + 0x5c0) = 0;
  *(undefined4 *)((int)this + 0x5c4) = 0;
  *(undefined4 *)((int)this + 0x5c8) = 0;
  *(undefined4 *)((int)this + 0x5cc) = 0;
  *(undefined4 *)((int)this + 0x5d0) = 0;
  *(char **)((int)this + 0x5d4) = "UI/UTFWin/WinTextEdit";
  FUN_00610c90((undefined4 *)((int)this + 0x5ac),0);
  piVar1 = (int *)((int)this + 0x5d8);
  iVar5 = 1;
  piVar3 = piVar1;
  do {
    *piVar3 = 0;
    piVar3[1] = 0;
    piVar3 = piVar3 + 5;
    iVar5 = iVar5 + -1;
  } while (-1 < iVar5);
  *(undefined4 *)((int)this + 0x600) = 0;
  *(undefined4 *)((int)this + 0x604) = 0;
  *(undefined4 *)((int)this + 0x610) = 0;
  *(undefined4 *)((int)this + 0x614) = 0;
  ElapsedClock_ConstructAndOptionallyStart((void *)((int)this + 0x618),5,'\0');
  *(undefined4 *)((int)this + 0x630) = 0x3e800000;
  ElapsedClock_ConstructAndOptionallyStart((void *)((int)this + 0x638),5,'\0');
  *(undefined4 *)((int)this + 0x650) = 0;
  *(undefined4 *)((int)this + 0x654) = 0;
  *(undefined4 *)((int)this + 0x658) = 0;
  *(undefined4 *)((int)this + 0x65c) = 0;
  *(undefined1 *)((int)this + 0x660) = 1;
  ElapsedClock_ConstructAndOptionallyStart((void *)((int)this + 0x668),5,'\0');
  *(undefined4 *)((int)this + 0x680) = 0x3f000000;
  *(undefined4 *)((int)this + 0x2a0) = 0xff000000;
  *(undefined4 *)((int)this + 0x2a4) = 0xffffffff;
  *(undefined4 *)((int)this + 0x2a8) = 0xff808080;
  *(undefined4 *)((int)this + 0x2ac) = 0xffffffff;
  *(undefined4 *)((int)this + 0x2b0) = 0xff0080ff;
  *(undefined4 *)((int)this + 0x2b4) = 0xffc0c0ff;
  *(undefined4 *)((int)this + 0x2b8) = 0xff00ff00;
  *(undefined4 *)((int)this + 700) = 0xff000000;
  piVar3 = *(int **)((int)this + 0x5f0);
  if (piVar3 != (int *)0x0) {
    *(undefined4 *)((int)this + 0x5f0) = 0;
    (**(code **)(*piVar3 + 4))();
  }
  piVar3 = *(int **)((int)this + 0x5ec);
  if (piVar3 != (int *)0x0) {
    *(undefined4 *)((int)this + 0x5ec) = 0;
    (**(code **)(*piVar3 + 4))();
  }
  *(undefined4 *)((int)this + 0x5f4) = 0;
  piVar3 = *(int **)((int)this + 0x5dc);
  if (piVar3 != (int *)0x0) {
    *(undefined4 *)((int)this + 0x5dc) = 0;
    (**(code **)(*piVar3 + 4))();
  }
  piVar3 = (int *)*piVar1;
  if (piVar3 != (int *)0x0) {
    *piVar1 = 0;
    (**(code **)(*piVar3 + 4))();
  }
  *(undefined4 *)((int)this + 0x5e0) = 0;
  FUN_00514c30((void *)((int)this + 4),8,1);
  FUN_00514010((void *)((int)this + 4),0x1004);
  UVar4 = GetDoubleClickTime();
  fVar2 = (float)(int)UVar4;
  if ((int)UVar4 < 0) {
    fVar2 = fVar2 + 4.2949673e+09;
  }
  *(float *)((int)this + 0x680) = fVar2 * 0.001;
  return this;
}

