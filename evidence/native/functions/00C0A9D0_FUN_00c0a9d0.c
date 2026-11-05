/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Read-only Ghidra export, 2026-10-12. Decompiled names and ABI are inferred;
   read the paired original-byte disassembly and guides/water/README.md.
   This internal helper is not a managed registration identity. */

/* WARNING: Removing unreachable block (ram,0x00c0aaeb) */
/* WARNING: Removing unreachable block (ram,0x00c0aaff) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __thiscall FUN_00c0a9d0(void *this,int *param_1,uint param_2)

{
  int *piVar1;
  undefined4 *puVar2;
  void *this_00;
  uint uVar3;
  char cVar4;
  uint3 extraout_var;
  int *piVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  
  cVar4 = FUN_007d9290(param_1,0xb074ace6);
  if (cVar4 == '\0') {
    return (uint)extraout_var << 8;
  }
  piVar5 = (int *)(**(code **)(_DAT_00000000 + 0x18))();
  uVar3 = param_2;
  FUN_004dd8e0(piVar5,(ushort *)&param_1);
  FUN_004dd980(piVar5,(uint *)((int)this + 0x14));
  FUN_00c0a510(this,*(uint *)((int)this + 0x14));
  if ((ushort)param_1 < 4) {
    piVar1 = *(int **)((int)this + 0x2cc);
    for (piVar5 = *(int **)((int)this + 0x2c8); piVar5 != piVar1; piVar5 = piVar5 + 1) {
      *(undefined1 *)(*piVar5 + 0x241) = 1;
    }
  }
  else {
    param_2 = 0;
    FUN_004dd8e0(piVar5,(ushort *)&param_2);
    puVar2 = *(undefined4 **)((int)this + 0x2cc);
    for (puVar7 = *(undefined4 **)((int)this + 0x2c8); puVar7 != puVar2; puVar7 = puVar7 + 1) {
      this_00 = (void *)*puVar7;
      FUN_00c0cb80(this_00,piVar5,uVar3,(ushort)param_1);
      *(undefined1 *)((int)this_00 + 0x241) = 1;
    }
  }
  uVar6 = (**(code **)(_DAT_00000000 + 0x20))();
  piVar1 = *(int **)((int)this + 0x2cc);
  for (piVar5 = *(int **)((int)this + 0x2c8); piVar5 != piVar1; piVar5 = piVar5 + 1) {
    uVar6 = FUN_006fa9f0(*piVar5);
  }
  return CONCAT31((int3)((uint)uVar6 >> 8),1);
}

