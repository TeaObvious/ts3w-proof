/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189e50 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_DeleteBlueprintsOnLotImpl [assembly=ScriptCore
   token=0x06000BFF; ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.UserToolUtils::UserToolUtils_DeleteBlueprintsOnLotImpl(void)

{
  int *piVar1;
  char *pcVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int *piVar5;
  void *pvVar6;
  int *this;
  undefined4 *puVar7;
  uint uVar8;
  int iVar9;
  int *piVar10;
  undefined4 unaff_EBP;
  int iVar11;
  undefined4 unaff_EDI;
  undefined4 *puVar12;
  undefined8 uVar13;
  uint *visitCounter;
  int *local_20;
  char *pcStack_18;
  void *local_14;
  uint uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  pvVar6 = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    visitCounter = (uint *)0x0;
    uVar13 = FUN_00c5f560((int)DAT_011edbc4);
    piVar5 = WorldObjects_FindLotByGuid
                       (pvVar6,(uint)uVar13,(uint)((ulonglong)uVar13 >> 0x20),visitCounter);
    if (piVar5 != (int *)0x0) {
      local_14 = DAT_011ee034;
      uVar13 = CONCAT44(unaff_EBP,unaff_EDI);
      piVar5 = (int *)FUN_00c6dc50((int)piVar5);
      pvVar6 = (void *)FUN_004e4500(0x50,"UserToolHost/DeleteBlueprints/Undoable",0);
      if (pvVar6 == (void *)0x0) {
        local_20 = (int *)0x0;
      }
      else {
        local_20 = (int *)ToolUndoable_Initialize(pvVar6);
        if (local_20 != (int *)0x0) {
          local_20[1] = local_20[1] + 1;
        }
      }
      (**(code **)(*local_20 + 4))(uVar13);
      piVar1 = (int *)piVar5[1];
      piVar10 = (int *)*piVar5;
      this = (int *)FUN_004e4500(0x10,"UserToolHost/DeleteBlueprints/DeleteObjects",0);
      if (this == (int *)0x0) {
        this = (int *)0x0;
      }
      else {
        iVar11 = piVar5[1] - *piVar5 >> 2;
        pcStack_18 = "UserToolHost/DeleteBlueprints/DeleteObjects";
        FUN_00d4c330(this,iVar11,&pcStack_18);
        if (iVar11 != 0) {
          puVar12 = (undefined4 *)*this;
          for (iVar9 = iVar11; iVar9 != 0; iVar9 = iVar9 + -1) {
            *puVar12 = 0;
            puVar12 = puVar12 + 1;
          }
        }
        this[1] = *this + iVar11 * 4;
      }
      if (piVar10 != piVar1) {
        do {
          pcVar2 = (char *)*piVar10;
          pcStack_18 = pcVar2;
          if (pcVar2 != (char *)0x0) {
            uStack_10 = *(uint *)(pcVar2 + 0x18);
            uStack_c = *(undefined4 *)(pcVar2 + 0x1c);
            uStack_8 = *(undefined4 *)(pcVar2 + 0x20);
            uStack_4 = *(undefined4 *)(pcVar2 + 0x24);
            iVar11 = ObjectCatalog_FindByTypedKey(local_14,&uStack_10);
            if ((iVar11 != 0) && ((*(uint *)(iVar11 + 0xd0) >> 0x1c & 1) != 0)) {
              piVar5 = (int *)this[1];
              if (piVar5 < (int *)this[2]) {
                this[1] = (int)(piVar5 + 1);
                if (piVar5 != (int *)0x0) {
                  *piVar5 = (int)pcVar2;
                }
              }
              else {
                FUN_00982420(this,piVar5,&pcStack_18);
              }
            }
          }
          piVar10 = piVar10 + 1;
        } while (piVar10 != piVar1);
      }
      puVar3 = (undefined4 *)this[1];
      for (puVar12 = (undefined4 *)*this; puVar12 != puVar3; puVar12 = puVar12 + 1) {
        puVar4 = (undefined4 *)*puVar12;
        puVar7 = (undefined4 *)FUN_004e4500(0xf0,"UserToolHost/DeleteBlueprints/UndoableObject",0);
        if (puVar7 == (undefined4 *)0x0) {
          piVar5 = (int *)0x0;
        }
        else {
          piVar5 = ObjectUndoable_Construct(puVar7);
          if (piVar5 != (int *)0x0) {
            piVar5[1] = piVar5[1] + 1;
          }
        }
        (**(code **)(*piVar5 + 4))();
        uVar8 = FUN_00ccd820(puVar4,piVar5,'\0',0,'\0',(void *)0x0);
        if ((char)uVar8 == '\0') {
          (**(code **)(*piVar5 + 0x20))();
          (**(code **)(*piVar5 + 8))();
        }
        else {
          FUN_00d1b190(local_20,piVar5);
        }
        iVar11 = piVar5[1];
        piVar5[1] = iVar11 + -1;
        if (iVar11 + -1 == 0) {
          piVar5[1] = 1;
          (**(code **)*piVar5)(1);
        }
      }
      if (local_20[7] - local_20[6] >> 2 == 0) {
        (**(code **)(*local_20 + 8))();
      }
      else {
        iVar11 = FUN_00cef500();
        if (iVar11 == 0) {
          pvVar6 = (void *)0x0;
        }
        else {
          pvVar6 = *(void **)(iVar11 + 0x28);
        }
        if (pvVar6 != (void *)0x0) {
          FUN_00d39980(pvVar6,local_20);
        }
      }
      iVar11 = local_20[1];
      local_20[1] = iVar11 + -1;
      if (iVar11 + -1 == 0) {
        local_20[1] = 1;
        (**(code **)*local_20)(1);
      }
    }
  }
  return;
}

