/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e50 (original PC 1.67 TS3W.exe).
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
  undefined4 *puVar5;
  int *this;
  int iVar6;
  undefined4 *puVar7;
  uint uVar8;
  void *pvVar9;
  int *piVar10;
  undefined4 unaff_EBP;
  int iVar11;
  undefined4 unaff_EDI;
  undefined8 uVar12;
  int *piVar13;
  int *local_20;
  char *pcStack_18;
  void *local_14;
  uint uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  pvVar9 = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar13 = (int *)0x0;
    uVar12 = FUN_00c5f560((int)DAT_011edbc4);
    piVar13 = FUN_00c62810(pvVar9,(int)uVar12,(int)((ulonglong)uVar12 >> 0x20),piVar13);
    if (piVar13 != (int *)0x0) {
      local_14 = DAT_011ee034;
      uVar12 = CONCAT44(unaff_EBP,unaff_EDI);
      piVar13 = (int *)FUN_00c6dc50((int)piVar13);
      puVar5 = (undefined4 *)FUN_004e4500(0x50,"UserToolHost/DeleteBlueprints/Undoable",0);
      if (puVar5 == (undefined4 *)0x0) {
        local_20 = (int *)0x0;
      }
      else {
        local_20 = FUN_00d1af00(puVar5);
        if (local_20 != (int *)0x0) {
          local_20[1] = local_20[1] + 1;
        }
      }
      (**(code **)(*local_20 + 4))(uVar12);
      piVar1 = (int *)piVar13[1];
      piVar10 = (int *)*piVar13;
      this = (int *)FUN_004e4500(0x10,"UserToolHost/DeleteBlueprints/DeleteObjects",0);
      if (this == (int *)0x0) {
        this = (int *)0x0;
      }
      else {
        iVar11 = piVar13[1] - *piVar13 >> 2;
        pcStack_18 = "UserToolHost/DeleteBlueprints/DeleteObjects";
        FUN_00d4c330(this,iVar11,&pcStack_18);
        puVar5 = (undefined4 *)*this;
        iVar6 = iVar11;
        if (iVar11 != 0) {
          for (; iVar6 != 0; iVar6 = iVar6 + -1) {
            *puVar5 = 0;
            puVar5 = puVar5 + 1;
          }
        }
        this[1] = *this + iVar11 * 4;
      }
      for (; piVar10 != piVar1; piVar10 = piVar10 + 1) {
        pcVar2 = (char *)*piVar10;
        pcStack_18 = pcVar2;
        if (pcVar2 != (char *)0x0) {
          uStack_10 = *(uint *)(pcVar2 + 0x18);
          uStack_c = *(undefined4 *)(pcVar2 + 0x1c);
          uStack_8 = *(undefined4 *)(pcVar2 + 0x20);
          uStack_4 = *(undefined4 *)(pcVar2 + 0x24);
          iVar6 = FUN_00c8ebb0(local_14,&uStack_10);
          if ((iVar6 != 0) && ((*(uint *)(iVar6 + 0xd0) >> 0x1c & 1) != 0)) {
            piVar13 = (int *)this[1];
            if (piVar13 < (int *)this[2]) {
              this[1] = (int)(piVar13 + 1);
              if (piVar13 != (int *)0x0) {
                *piVar13 = (int)pcVar2;
              }
            }
            else {
              FUN_00982420(this,piVar13,&pcStack_18);
            }
          }
        }
      }
      puVar3 = (undefined4 *)this[1];
      for (puVar5 = (undefined4 *)*this; puVar5 != puVar3; puVar5 = puVar5 + 1) {
        puVar4 = (undefined4 *)*puVar5;
        puVar7 = (undefined4 *)FUN_004e4500(0xf0,"UserToolHost/DeleteBlueprints/UndoableObject",0);
        if (puVar7 == (undefined4 *)0x0) {
          piVar13 = (int *)0x0;
        }
        else {
          piVar13 = FUN_00d28090(puVar7);
          if (piVar13 != (int *)0x0) {
            piVar13[1] = piVar13[1] + 1;
          }
        }
        (**(code **)(*piVar13 + 4))();
        uVar8 = FUN_00ccd820(puVar4,piVar13,'\0',0,'\0',(void *)0x0);
        if ((char)uVar8 == '\0') {
          (**(code **)(*piVar13 + 0x20))();
          (**(code **)(*piVar13 + 8))();
        }
        else {
          FUN_00d1b190(local_20,piVar13);
        }
        iVar6 = piVar13[1];
        piVar13[1] = iVar6 + -1;
        if (iVar6 + -1 == 0) {
          piVar13[1] = 1;
          (**(code **)*piVar13)(1);
        }
      }
      if (local_20[7] - local_20[6] >> 2 == 0) {
        (**(code **)(*local_20 + 8))();
      }
      else {
        iVar6 = FUN_00cef500();
        if (iVar6 == 0) {
          pvVar9 = (void *)0x0;
        }
        else {
          pvVar9 = *(void **)(iVar6 + 0x28);
        }
        if (pvVar9 != (void *)0x0) {
          FUN_00d39980(pvVar9,local_20);
        }
      }
      iVar6 = local_20[1];
      local_20[1] = iVar6 + -1;
      if (iVar6 + -1 == 0) {
        local_20[1] = 1;
        (**(code **)*local_20)(1);
      }
    }
  }
  return;
}

