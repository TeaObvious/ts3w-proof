/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
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
  uint endianFlag;
  char cVar3;
  uint3 extraout_var;
  int *piVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  
  cVar3 = FUN_007d9290(param_1,0xb074ace6);
  if (cVar3 == '\0') {
    return (uint)extraout_var << 8;
  }
  piVar4 = (int *)(**(code **)(_DAT_00000000 + 0x18))();
  endianFlag = param_2;
  Stream_ReadUInt16(piVar4,(ushort *)&param_1,param_2);
  Stream_ReadUInt32(piVar4,(uint *)((int)this + 0x14),endianFlag);
  FUN_00c0a510(this,*(uint *)((int)this + 0x14));
  if ((ushort)param_1 < 4) {
    piVar1 = *(int **)((int)this + 0x2cc);
    for (piVar4 = *(int **)((int)this + 0x2c8); piVar4 != piVar1; piVar4 = piVar4 + 1) {
      *(undefined1 *)(*piVar4 + 0x241) = 1;
    }
  }
  else {
    param_2 = 0;
    Stream_ReadUInt16(piVar4,(ushort *)&param_2,endianFlag);
    puVar2 = *(undefined4 **)((int)this + 0x2cc);
    for (puVar6 = *(undefined4 **)((int)this + 0x2c8); puVar6 != puVar2; puVar6 = puVar6 + 1) {
      this_00 = (void *)*puVar6;
      FUN_00c0cb80(this_00,piVar4,endianFlag,(ushort)param_1);
      *(undefined1 *)((int)this_00 + 0x241) = 1;
    }
  }
  uVar5 = (**(code **)(_DAT_00000000 + 0x20))();
  piVar1 = *(int **)((int)this + 0x2cc);
  for (piVar4 = *(int **)((int)this + 0x2c8); piVar4 != piVar1; piVar4 = piVar4 + 1) {
    uVar5 = SceneObject_QueueDirtyOnce(*piVar4);
  }
  return CONCAT31((int3)((uint)uVar5 >> 8),1);
}

