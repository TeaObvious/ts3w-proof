/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  float fVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  uint *puVar7;
  undefined4 *puVar8;
  int *piVar9;
  
  FUN_00516090(this);
  uVar5 = _DAT_01062bc8;
  *(undefined ***)((int)this + 0x250) = &PTR_LAB_00fbddc0;
  uVar6 = DAT_010690d4;
  uVar4 = _DAT_00fbe4c4;
  *(undefined ***)this = &PTR_thunk_FUN_007e4140_00fbe428;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fbe300;
  *(undefined ***)((int)this + 0x250) = &PTR_LAB_00fbe0a8;
  *(undefined4 *)((int)this + 0x254) = 0x8019be6;
  *(undefined1 *)((int)this + 600) = 0;
  *(undefined4 *)((int)this + 0x25c) = 0;
  *(undefined4 *)((int)this + 0x260) = uVar5;
  *(undefined4 *)((int)this + 0x264) = uVar5;
  *(undefined4 *)((int)this + 0x268) = uVar5;
  *(undefined4 *)((int)this + 0x26c) = uVar5;
  fVar3 = FLOAT_00f998f8;
  *(undefined4 *)((int)this + 0x270) = 0;
  *(undefined4 *)((int)this + 0x274) = 0;
  *(undefined4 *)((int)this + 0x278) = 0;
  *(undefined4 *)((int)this + 0x27c) = 0;
  *(float *)((int)this + 0x280) = fVar3;
  *(float *)((int)this + 0x284) = fVar3;
  *(float *)((int)this + 0x288) = fVar3;
  *(float *)((int)this + 0x28c) = fVar3;
  *(undefined4 *)((int)this + 0x2ac) = 0;
  *(undefined4 *)((int)this + 0x2b4) = 0;
  uVar5 = DAT_010f6bf4;
  *(undefined4 *)((int)this + 0x290) = uVar6;
  *(undefined4 *)((int)this + 0x294) = uVar4;
  *(float *)((int)this + 0x298) = fVar3;
  *(float *)((int)this + 0x29c) = fVar3;
  *(float *)((int)this + 0x2a0) = fVar3;
  *(float *)((int)this + 0x2a4) = fVar3;
  *(undefined4 *)((int)this + 0x2a8) = 0;
  *(undefined4 *)((int)this + 0x2b0) = 0;
  *(float *)((int)this + 0x2b8) = fVar3;
  *(float *)((int)this + 700) = fVar3;
  *(undefined4 *)((int)this + 0x2c0) = 0xffffffff;
  *(undefined4 *)((int)this + 0x2c4) = 0xffffffff;
  *(undefined4 *)((int)this + 0x2c8) = uVar5;
  *(undefined4 *)((int)this + 0x2cc) = uVar6;
  *(undefined4 *)((int)this + 0x2d0) = 0;
  *(undefined4 *)((int)this + 0x2d4) = 0;
  *(undefined4 *)((int)this + 0x2d8) = 0;
  *(float *)((int)this + 0x2dc) = fVar3;
  *(float *)((int)this + 0x2e0) = fVar3;
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
  uVar4 = DAT_0103fd88;
  fVar3 = FLOAT_00f998f8;
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
  *(float *)((int)this + 0x424) = fVar3;
  *(undefined4 *)((int)this + 0x428) = uVar4;
  *(char **)((int)this + 0x430) = "UI/UTFWin/WinGrid";
  *(undefined4 *)((int)this + 0x420) = 0;
  *(undefined4 *)((int)this + 0x42c) = 0;
  *(undefined4 *)((int)this + 0x41c) = 1;
  *(undefined4 **)((int)this + 0x418) = &DAT_0114d900;
  *(float *)((int)this + 0x444) = fVar3;
  *(undefined4 *)((int)this + 0x448) = uVar4;
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
  *(float *)((int)this + 0x484) = fVar3;
  *(undefined4 *)((int)this + 0x488) = uVar4;
  *(char **)((int)this + 0x490) = "UI/UTFWin/WinGrid";
  *(undefined4 *)((int)this + 0x47c) = 1;
  *(undefined4 **)((int)this + 0x478) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x480) = 0;
  *(undefined4 *)((int)this + 0x48c) = 0;
  *(float *)((int)this + 0x4a4) = fVar3;
  *(undefined4 *)((int)this + 0x4a8) = uVar4;
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
  puVar7 = FUN_005050b0(0x250,0x10,"UI/UTFWin/WinGrid",(int *)0x0);
  if (puVar7 != (uint *)0x0) {
    puVar8 = FUN_00516090(puVar7);
    if (puVar8 != (undefined4 *)0x0) {
      piVar9 = puVar8 + 1;
      goto LAB_0052bbd8;
    }
  }
  piVar9 = (int *)0x0;
LAB_0052bbd8:
  piVar2 = *(int **)((int)this + 0x4e4);
  if (piVar9 != piVar2) {
    if (piVar9 != (int *)0x0) {
      (**(code **)*piVar9)();
    }
    *(int **)((int)this + 0x4e4) = piVar9;
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

