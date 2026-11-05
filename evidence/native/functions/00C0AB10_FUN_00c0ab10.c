/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Read-only Ghidra export, 2026-10-12. Decompiled names and ABI are inferred;
   read the paired original-byte disassembly and guides/water/README.md.
   This internal helper is not a managed registration identity. */



undefined4 __thiscall FUN_00c0ab10(void *this,int *param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  undefined4 local_14;
  undefined4 local_10;
  uint local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  piVar2 = (int *)FUN_0072f140();
  local_10 = 1;
  local_c = 0;
  local_8 = 0xb074ace6;
  local_4 = 0;
  local_14 = 0;
  uVar3 = (**(code **)(*piVar2 + 4))(&local_10,&local_14,param_1,2,6);
  if ((char)uVar3 == '\0') {
    if (param_1 != (int *)0x0) {
      uVar3 = (**(code **)(*param_1 + 8))();
    }
    return uVar3 & 0xffffff00;
  }
  piVar2 = (int *)(**(code **)(*param_1 + 0x18))();
  uVar3 = local_c;
  Stream_WriteUInt16(piVar2,4,local_c);
  FUN_004de390(piVar2,*(undefined4 *)((int)this + 0x14),uVar3);
  Stream_WriteUInt16(piVar2,(ushort)(*(int *)((int)this + 0x2cc) - *(int *)((int)this + 0x2c8) >> 2)
                     ,uVar3);
  puVar1 = *(undefined4 **)((int)this + 0x2cc);
  for (puVar5 = *(undefined4 **)((int)this + 0x2c8); puVar5 != puVar1; puVar5 = puVar5 + 1) {
    FUN_00c0cee0((void *)*puVar5,piVar2,uVar3);
  }
  uVar4 = (**(code **)(*param_1 + 0x20))();
  if (param_1 != (int *)0x0) {
    uVar4 = (**(code **)(*param_1 + 8))();
  }
  return CONCAT31((int3)((uint)uVar4 >> 8),1);
}

