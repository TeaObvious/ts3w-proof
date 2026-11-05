/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_DeleteBlueprintsOnLotImpl. Export
   ordinal(s): 1177. Entry VA: 0x102c3480. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A96. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void UserToolUtils_DeleteBlueprintsOnLotImpl(void)

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
  int *piStack_20;
  char *pcStack_18;
  void *pvStack_14;
  uint uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  pvVar9 = DAT_10c700c4;
  if (DAT_10c700c4 != (void *)0x0) {
    piVar13 = (int *)0x0;
    uVar12 = FUN_10233750((int)DAT_10c700c4);
    piVar13 = FUN_10237010(pvVar9,(int)uVar12,(int)((ulonglong)uVar12 >> 0x20),piVar13);
    if (piVar13 != (int *)0x0) {
      pvStack_14 = DAT_10c70534;
      uVar12 = CONCAT44(unaff_EBP,unaff_EDI);
      piVar13 = (int *)FUN_10242c40((int)piVar13);
      puVar5 = (undefined4 *)FUN_10918eb0(0x50,"UserToolHost/DeleteBlueprints/Undoable",0);
      if (puVar5 == (undefined4 *)0x0) {
        piStack_20 = (int *)0x0;
      }
      else {
        piStack_20 = FUN_102f2930(puVar5);
        if (piStack_20 != (int *)0x0) {
          piStack_20[1] = piStack_20[1] + 1;
        }
      }
      (**(code **)(*piStack_20 + 4))(uVar12);
      piVar1 = (int *)piVar13[1];
      piVar10 = (int *)*piVar13;
      this = (int *)FUN_10918eb0(0x10,"UserToolHost/DeleteBlueprints/DeleteObjects",0);
      if (this == (int *)0x0) {
        this = (int *)0x0;
      }
      else {
        iVar11 = piVar13[1] - *piVar13 >> 2;
        pcStack_18 = "UserToolHost/DeleteBlueprints/DeleteObjects";
        FUN_1061b8d0(this,iVar11,(int *)&pcStack_18);
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
          iVar6 = FUN_102656d0(pvStack_14,&uStack_10);
          if ((iVar6 != 0) && ((*(uint *)(iVar6 + 0xd0) >> 0x1c & 1) != 0)) {
            piVar13 = (int *)this[1];
            if (piVar13 < (int *)this[2]) {
              this[1] = (int)(piVar13 + 1);
              if (piVar13 != (int *)0x0) {
                *piVar13 = (int)pcVar2;
              }
            }
            else {
              FUN_105ee480(this,piVar13,&pcStack_18);
            }
          }
        }
      }
      puVar3 = (undefined4 *)this[1];
      for (puVar5 = (undefined4 *)*this; puVar5 != puVar3; puVar5 = puVar5 + 1) {
        puVar4 = (undefined4 *)*puVar5;
        puVar7 = (undefined4 *)FUN_10918eb0(0xf0,"UserToolHost/DeleteBlueprints/UndoableObject",0);
        if (puVar7 == (undefined4 *)0x0) {
          piVar13 = (int *)0x0;
        }
        else {
          piVar13 = FUN_102ffc40(puVar7);
          if (piVar13 != (int *)0x0) {
            piVar13[1] = piVar13[1] + 1;
          }
        }
        (**(code **)(*piVar13 + 4))();
        uVar8 = FUN_102a4cc0(puVar4,piVar13,'\0',0,'\0',(void *)0x0);
        if ((char)uVar8 == '\0') {
          (**(code **)(*piVar13 + 0x20))();
          (**(code **)(*piVar13 + 8))();
        }
        else {
          FUN_102f2bc0(piStack_20,piVar13);
        }
        iVar6 = piVar13[1];
        piVar13[1] = iVar6 + -1;
        if (iVar6 + -1 == 0) {
          piVar13[1] = 1;
          (**(code **)*piVar13)(1);
        }
      }
      if (piStack_20[7] - piStack_20[6] >> 2 == 0) {
        (**(code **)(*piStack_20 + 8))();
      }
      else {
        iVar6 = FUN_102c72b0();
        if (iVar6 == 0) {
          pvVar9 = (void *)0x0;
        }
        else {
          pvVar9 = *(void **)(iVar6 + 0x28);
        }
        if (pvVar9 != (void *)0x0) {
          FUN_10311490(pvVar9,piStack_20);
        }
      }
      iVar6 = piStack_20[1];
      piStack_20[1] = iVar6 + -1;
      if (iVar6 + -1 == 0) {
        piStack_20[1] = 1;
        (**(code **)*piStack_20)(1);
      }
    }
  }
  return;
}

