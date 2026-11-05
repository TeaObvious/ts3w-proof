/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163c68 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_RebuildLotCompositorsImpl [assembly=ScriptCore token=0x06000888; lotId:
   System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_RebuildLotCompositorsImpl(int param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  bool bVar3;
  int *this;
  uint *puVar4;
  undefined4 *puVar5;
  void *pvVar6;
  int iVar7;
  int iVar8;
  undefined4 *puVar9;
  char cStack_ac;
  undefined1 uStack_ab;
  undefined1 uStack_aa;
  undefined1 uStack_a9;
  undefined1 uStack_a8;
  undefined1 uStack_a7;
  int *piStack_a4;
  uint uStack_a0;
  undefined1 auStack_9c [4];
  undefined4 *puStack_98;
  uint uStack_94;
  undefined4 uStack_90;
  float fStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  char *pcStack_80;
  int iStack_7c;
  undefined4 uStack_78;
  uint uStack_74;
  uint uStack_70;
  uint uStack_6c;
  uint uStack_68;
  undefined4 *puStack_64;
  undefined4 *puStack_60;
  undefined4 uStack_5c;
  char *pcStack_58;
  uint uStack_54;
  uint uStack_50;
  int iStack_4c;
  undefined4 uStack_48;
  undefined4 auStack_40 [12];
  uint uStack_10;
  uint uStack_c;
  uint uStack_8;
  uint uStack_4;
  
  if ((DAT_011edbc4 != (void *)0x0) &&
     (this = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0),
     this != (int *)0x0)) {
    pvVar6 = (void *)this[0xa6];
    piStack_a4 = this;
    FUN_00a96ef0(this[0xa4]);
    fStack_8c = 1.0;
    uStack_88 = 0x40000000;
    pcStack_80 = "Scripting/WorldHost";
    uStack_94 = 1;
    puStack_98 = &DAT_0114d900;
    uStack_90 = 0;
    uStack_84 = 0;
    uStack_50 = FUN_00b47e40((int)pvVar6);
    cStack_ac = -1;
    uStack_ab = 0xff;
    uStack_aa = 0;
    uStack_a9 = 0xff;
    uStack_a8 = 0xff;
    uStack_a7 = 0;
    uStack_a0 = 0;
    if (uStack_50 != 0) {
      do {
        FUN_00b47e60(pvVar6,uStack_a0,&cStack_ac);
        puVar4 = FUN_00b4abd0(pvVar6,&cStack_ac);
        uVar1 = puVar4[2];
        uVar2 = *puVar4;
        uStack_70 = puVar4[1];
        uStack_68 = puVar4[3];
        uStack_74 = uVar2;
        uStack_6c = uVar1;
        if (uVar1 != 0) {
          FUN_00793830(auStack_9c,&iStack_7c,&uStack_74);
          if (iStack_7c == puStack_98[uStack_94]) {
            puVar5 = WallPatternSide_ReadResourceKey(pvVar6,&cStack_ac);
            FUN_00afba70(auStack_40);
            auStack_40[0] = *puVar5;
            auStack_40[1] = puVar5[1];
            auStack_40[2] = puVar5[2];
            auStack_40[3] = puVar5[3];
            uStack_c = uStack_70;
            uStack_4 = uStack_68;
            uStack_10 = uVar2;
            uStack_8 = uVar1;
            bVar3 = FUN_00793c90((int)auStack_40);
            if (!bVar3) {
              this = piStack_a4;
              goto LAB_0079625d;
            }
            uStack_54 = uStack_54 & 0xffffff00;
            FUN_007938a0(auStack_9c,&iStack_4c,&uStack_74);
            uStack_78 = uStack_48;
            puVar5 = auStack_40;
            puVar9 = (undefined4 *)(iStack_4c + 0x10);
            for (iVar7 = 0x10; iVar7 != 0; iVar7 = iVar7 + -1) {
              *puVar9 = *puVar5;
              puVar5 = puVar5 + 1;
              puVar9 = puVar9 + 1;
            }
            iStack_7c = iStack_4c;
            this = piStack_a4;
          }
          FUN_00b4d840(pvVar6,(uint *)(iStack_7c + 0x10),&cStack_ac);
        }
LAB_0079625d:
        uStack_a0 = uStack_a0 + 1;
      } while (uStack_a0 < uStack_50);
    }
    iVar7 = this[0x60];
    iVar8 = this[0x5f];
    puStack_64 = (undefined4 *)0x0;
    puStack_60 = (undefined4 *)0x0;
    uStack_5c = 0;
    pcStack_58 = "Scripting/WorldHost";
    for (; iVar8 != iVar7; iVar8 = iVar8 + 1) {
      FUN_00aca200(this,iVar8,&puStack_64,'\x01');
      puVar9 = puStack_60;
      for (puVar5 = puStack_64; puVar5 != puVar9; puVar5 = puVar5 + 1) {
        if (((void *)*puVar5 != (void *)0x0) &&
           (pvVar6 = Object_GetComponentByMask((void *)*puVar5,DAT_011e9fc4), pvVar6 != (void *)0x0)
           ) {
          FUN_0094b280(pvVar6);
        }
      }
      this = piStack_a4;
    }
    FUN_00ab0940(this,'\x01','\x01');
    if (puStack_64 != (undefined4 *)0x0) {
      Memory_FreeIfNonNull(puStack_64);
    }
    FUN_005ca740((int)puStack_98,uStack_94);
    uStack_90 = 0;
    if (1 < uStack_94) {
      Memory_FreeIfNonNull(puStack_98);
    }
  }
  return;
}

