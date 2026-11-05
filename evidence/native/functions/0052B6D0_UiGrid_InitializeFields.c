/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst note, original PC1.67 static. Complete Grid constructor, ECX complete receiver/no
   stack/plainRET returns receiver. Calls516090, installs primaryFBE428, IWindowFBE300 at+4 and Grid
   interfaceFBE0A8 at+250, class interface ID08019BE6 at+254. Initializes all native
   fields/sparse-map sentinels/defaults in full body. Creates a real plain WindowBase
   through5050B0/516090, retains its IWindow+4 at Grid+4E4, releases prior holder if any, then adds
   this container to Grid IWindow through515400. Selected exact table slots establish ClearCell198,
   ClearRectangle19C, ClearAll1A0 and SetCellWindow1EC. No claim that all constructor color/size
   defaults or renderer policies equal current CLR properties. */

void * __thiscall UiGrid_InitializeFields(void *this)

{
  int iVar1;
  int *piVar2;
  uint *puVar3;
  undefined4 *puVar4;
  int *piVar5;
  
  Window_InitializeNativeFields(this);
  *(undefined ***)((int)this + 0x250) = &PTR_LAB_00fbddc0;
  *(undefined ***)this = &PTR_thunk_FUN_007e4140_00fbe428;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fbe300;
  *(undefined ***)((int)this + 0x250) = &PTR_LAB_00fbe0a8;
  *(undefined4 *)((int)this + 0x254) = 0x8019be6;
  *(undefined1 *)((int)this + 600) = 0;
  *(undefined4 *)((int)this + 0x25c) = 0;
  *(undefined4 *)((int)this + 0x260) = 0x40a00000;
  *(undefined4 *)((int)this + 0x264) = 0x40a00000;
  *(undefined4 *)((int)this + 0x268) = 0x40a00000;
  *(undefined4 *)((int)this + 0x26c) = 0x40a00000;
  *(undefined4 *)((int)this + 0x270) = 0;
  *(undefined4 *)((int)this + 0x274) = 0;
  *(undefined4 *)((int)this + 0x278) = 0;
  *(undefined4 *)((int)this + 0x27c) = 0;
  *(float *)((int)this + 0x280) = 1.0;
  *(float *)((int)this + 0x284) = 1.0;
  *(float *)((int)this + 0x288) = 1.0;
  *(float *)((int)this + 0x28c) = 1.0;
  *(undefined4 *)((int)this + 0x2ac) = 0;
  *(undefined4 *)((int)this + 0x2b4) = 0;
  *(undefined4 *)((int)this + 0x290) = 0x41a00000;
  *(undefined4 *)((int)this + 0x294) = 0x42a00000;
  *(float *)((int)this + 0x298) = 1.0;
  *(float *)((int)this + 0x29c) = 1.0;
  *(float *)((int)this + 0x2a0) = 1.0;
  *(float *)((int)this + 0x2a4) = 1.0;
  *(undefined4 *)((int)this + 0x2a8) = 0;
  *(undefined4 *)((int)this + 0x2b0) = 0;
  *(float *)((int)this + 0x2b8) = 1.0;
  *(float *)((int)this + 700) = 1.0;
  *(undefined4 *)((int)this + 0x2c0) = 0xffffffff;
  *(undefined4 *)((int)this + 0x2c4) = 0xffffffff;
  *(undefined4 *)((int)this + 0x2c8) = 0x42c80000;
  *(undefined4 *)((int)this + 0x2cc) = 0x41a00000;
  *(undefined4 *)((int)this + 0x2d0) = 0;
  *(undefined4 *)((int)this + 0x2d4) = 0;
  *(undefined4 *)((int)this + 0x2d8) = 0;
  *(float *)((int)this + 0x2dc) = 1.0;
  *(float *)((int)this + 0x2e0) = 1.0;
  *(undefined4 *)((int)this + 0x2e4) = 0xffffffff;
  *(undefined4 *)((int)this + 0x2e8) = 0xffffffff;
  ElapsedClock_ConstructAndOptionallyStart((void *)((int)this + 0x2f0),4,'\0');
  *(undefined4 *)((int)this + 0x308) = 0;
  *(undefined4 *)((int)this + 0x30c) = 1;
  iVar1 = (int)this + 0x314;
  *(undefined4 *)((int)this + 0x310) = 0x7fffffff;
  *(char **)((int)this + 0x31c) = "UI/UTFWin/WinGrid";
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x318) = iVar1;
  *(undefined4 *)((int)this + 0x328) = 0;
  iVar1 = (int)this + 0x324;
  *(undefined4 *)((int)this + 0x32c) = 0;
  *(undefined4 *)((int)this + 0x330) = 0;
  *(char **)((int)this + 0x338) = "UI/UTFWin/SparseMatrix/MatrixRowList";
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x328) = iVar1;
  *(undefined4 *)((int)this + 0x32c) = 0;
  *(undefined1 *)((int)this + 0x330) = 0;
  *(undefined4 *)((int)this + 0x334) = 0;
  *(undefined4 *)((int)this + 0x33c) = 0;
  *(undefined4 *)((int)this + 0x340) = 0x80000001;
  *(undefined4 *)((int)this + 0x344) = 0x7fffffff;
  *(undefined4 *)((int)this + 0x348) = 0x80000001;
  *(undefined4 *)((int)this + 0x34c) = 0x7fffffff;
  *(undefined4 *)((int)this + 0x358) = 0;
  *(undefined4 *)((int)this + 0x35c) = 0;
  *(undefined4 *)((int)this + 0x360) = 0;
  *(char **)((int)this + 0x368) = "UI/UTFWin/SparseMatrix/MatrixRowList";
  *(undefined4 *)((int)this + 0x35c) = 0;
  *(undefined1 *)((int)this + 0x360) = 0;
  *(undefined4 *)((int)this + 0x364) = 0;
  *(undefined4 *)((int)this + 0x36c) = 0;
  *(undefined4 *)((int)this + 0x370) = 0x80000001;
  *(undefined4 *)((int)this + 0x374) = 0x7fffffff;
  *(undefined4 *)((int)this + 0x378) = 0x80000001;
  *(undefined4 *)((int)this + 0x37c) = 0x7fffffff;
  iVar1 = (int)this + 0x354;
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x358) = iVar1;
  *(undefined4 *)((int)this + 0x388) = 0;
  *(undefined4 *)((int)this + 0x38c) = 0;
  *(undefined4 *)((int)this + 0x390) = 0;
  *(char **)((int)this + 0x398) = "UI/UTFWin/SparseMatrix/MatrixRowList";
  *(undefined4 *)((int)this + 0x38c) = 0;
  *(undefined1 *)((int)this + 0x390) = 0;
  *(undefined4 *)((int)this + 0x394) = 0;
  *(undefined4 *)((int)this + 0x39c) = 0;
  *(undefined4 *)((int)this + 0x3a0) = 0x80000001;
  *(undefined4 *)((int)this + 0x3a4) = 0x7fffffff;
  *(undefined4 *)((int)this + 0x3a8) = 0x80000001;
  *(undefined4 *)((int)this + 0x3ac) = 0x7fffffff;
  iVar1 = (int)this + 900;
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x388) = iVar1;
  *(undefined4 *)((int)this + 0x3b0) = 0;
  *(undefined1 *)((int)this + 0x3d4) = 0xff;
  *(undefined1 *)((int)this + 0x3d5) = 0;
  *(undefined1 *)((int)this + 0x3d6) = 0;
  *(undefined4 *)((int)this + 0x3d8) = 0;
  *(undefined4 *)((int)this + 0x3dc) = 0;
  *(undefined4 *)((int)this + 0x3b4) = 0;
  *(undefined4 *)((int)this + 0x3b8) = 0;
  *(undefined4 *)((int)this + 0x3bc) = 0;
  *(undefined4 *)((int)this + 0x3c0) = 0;
  *(undefined4 *)((int)this + 0x3cc) = 0;
  *(undefined4 *)((int)this + 0x3d0) = 0;
  *(undefined4 *)((int)this + 0x3c4) = 0;
  *(undefined4 *)((int)this + 0x3c8) = 0;
  *(undefined4 *)((int)this + 1000) = 0;
  *(undefined4 *)((int)this + 0x3ec) = 0;
  *(undefined4 *)((int)this + 0x3f0) = 0;
  *(char **)((int)this + 0x3f8) = "UI/UTFWin/WinGrid";
  *(undefined4 *)((int)this + 0x3ec) = 0;
  *(undefined1 *)((int)this + 0x3f0) = 0;
  *(undefined4 *)((int)this + 0x3f4) = 0;
  iVar1 = (int)this + 0x3e4;
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 1000) = iVar1;
  *(undefined4 *)((int)this + 0x400) = 0xffffffff;
  *(undefined4 *)((int)this + 0x404) = 0xffffffff;
  *(undefined4 *)((int)this + 0x3fc) = 0;
  *(undefined4 *)((int)this + 0x40c) = 0xffffffff;
  *(undefined4 *)((int)this + 0x410) = 0xffffffff;
  *(undefined4 *)((int)this + 0x408) = 0;
  *(float *)((int)this + 0x424) = 1.0;
  *(undefined4 *)((int)this + 0x428) = 0x40000000;
  *(char **)((int)this + 0x430) = "UI/UTFWin/WinGrid";
  *(undefined4 *)((int)this + 0x420) = 0;
  *(undefined4 *)((int)this + 0x42c) = 0;
  *(undefined4 *)((int)this + 0x41c) = 1;
  *(undefined4 **)((int)this + 0x418) = &DAT_0114d900;
  *(float *)((int)this + 0x444) = 1.0;
  *(undefined4 *)((int)this + 0x448) = 0x40000000;
  *(char **)((int)this + 0x450) = "UI/UTFWin/WinGrid";
  *(undefined4 *)((int)this + 0x43c) = 1;
  *(undefined4 **)((int)this + 0x438) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x440) = 0;
  *(undefined4 *)((int)this + 0x44c) = 0;
  *(undefined4 *)((int)this + 0x454) = 0;
  *(undefined4 *)((int)this + 0x458) = 0;
  *(undefined4 *)((int)this + 0x45c) = 0;
  *(undefined4 *)((int)this + 0x460) = 0;
  *(undefined4 *)((int)this + 0x464) = 0;
  *(float *)((int)this + 0x484) = 1.0;
  *(undefined4 *)((int)this + 0x488) = 0x40000000;
  *(char **)((int)this + 0x490) = "UI/UTFWin/WinGrid";
  *(undefined4 *)((int)this + 0x47c) = 1;
  *(undefined4 **)((int)this + 0x478) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x480) = 0;
  *(undefined4 *)((int)this + 0x48c) = 0;
  *(float *)((int)this + 0x4a4) = 1.0;
  *(undefined4 *)((int)this + 0x4a8) = 0x40000000;
  *(char **)((int)this + 0x4b0) = "UI/UTFWin/WinGrid";
  *(undefined4 *)((int)this + 0x49c) = 1;
  *(undefined4 **)((int)this + 0x498) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x4a0) = 0;
  *(undefined4 *)((int)this + 0x4ac) = 0;
  *(undefined4 *)((int)this + 0x4b4) = 0;
  *(undefined1 *)((int)this + 0x4d8) = 0xff;
  *(undefined1 *)((int)this + 0x4d9) = 0;
  *(undefined1 *)((int)this + 0x4da) = 0;
  *(undefined4 *)((int)this + 0x4dc) = 0;
  *(undefined4 *)((int)this + 0x4e0) = 0;
  *(undefined4 *)((int)this + 0x4b8) = 0;
  *(undefined4 *)((int)this + 0x4bc) = 0;
  *(undefined4 *)((int)this + 0x4c0) = 0;
  *(undefined4 *)((int)this + 0x4c4) = 0;
  *(undefined4 *)((int)this + 0x4d0) = 0;
  *(undefined4 *)((int)this + 0x4d4) = 0;
  *(undefined4 *)((int)this + 0x4c8) = 0;
  *(undefined4 *)((int)this + 0x4cc) = 0;
  *(undefined4 *)((int)this + 0x4e4) = 0;
  *(undefined4 *)((int)this + 0x4e8) = 0;
  *(undefined4 *)((int)this + 0x4ec) = 0;
  *(undefined4 *)((int)this + 0x4f0) = 0;
  *(undefined4 *)((int)this + 0x4f4) = 0;
  puVar3 = AllocateWithAllocatorHeader(0x250,0x10,"UI/UTFWin/WinGrid",(int *)0x0);
  if (puVar3 != (uint *)0x0) {
    puVar4 = Window_InitializeNativeFields(puVar3);
    if (puVar4 != (undefined4 *)0x0) {
      piVar5 = puVar4 + 1;
      goto LAB_0052bbd8;
    }
  }
  piVar5 = (int *)0x0;
LAB_0052bbd8:
  piVar2 = *(int **)((int)this + 0x4e4);
  if (piVar5 != piVar2) {
    if (piVar5 != (int *)0x0) {
      (**(code **)*piVar5)();
    }
    *(int **)((int)this + 0x4e4) = piVar5;
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
  }
  FUN_00515400((int *)((int)this + 4),*(int *)((int)this + 0x4e4));
  FUN_00524740((int)this);
  *(undefined4 *)((int)this + 0x3b0) = 1;
  *(undefined4 *)((int)this + 0x4b4) = 1;
  if (*(char *)((int)this + 600) == '\0') {
    (**(code **)(*(int *)((int)this + 4) + 0x74))(8,1);
    *(undefined1 *)((int)this + 600) = 1;
  }
  return this;
}

