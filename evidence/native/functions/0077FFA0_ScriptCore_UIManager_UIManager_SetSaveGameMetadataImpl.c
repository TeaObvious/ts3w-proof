/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011630c0 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_SetSaveGameMetadataImpl [assembly=ScriptCore token=0x06000E53;
   saveFile: System.String, householdName: System.String, householdBio: System.String,
   homeworldName: System.String, householdId: System.UInt64, lotId: System.UInt64, travelSave:
   System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_SetSaveGameMetadataImpl
               (int param_1,int param_2,int param_3,int param_4,int param_5,int param_6,int param_7,
               char param_8)

{
  void *this;
  int *piVar1;
  short *psVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int *this_00;
  ushort *puVar6;
  undefined4 *unaff_EDI;
  int iStack_624;
  int iStack_620;
  int iStack_61c;
  char *pcStack_618;
  short asStack_614 [256];
  undefined1 auStack_414 [1044];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    iStack_624 = 0;
    iStack_620 = 0;
    iStack_61c = 0;
    pcStack_618 = "UI/SaveGameMetadata";
    FUN_0040b590(&iStack_624,psVar2);
    if ((((iStack_620 - iStack_624 >> 1 != 0) && (iVar3 = FUN_00aa9c70(), iVar3 != 0)) &&
        (this = (void *)(iVar3 + -0x14), this != (void *)0x0)) &&
       (uVar4 = FUN_00aab460(&iStack_624,(undefined4 *)&stack0xfffff9d8), (char)uVar4 != '\0')) {
      puVar5 = (undefined4 *)FUN_004e4500(0xd0,"UI/SaveGameMetdata",0);
      if (puVar5 == (undefined4 *)0x0) {
        this_00 = (int *)0x0;
      }
      else {
        this_00 = (int *)FUN_0059de90(puVar5);
        if (this_00 != (int *)0x0) {
          (**(code **)*this_00)();
          if (param_1 == 0) {
            psVar2 = &DAT_00fba6c4;
          }
          else {
            psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
          }
          FUN_0059e100(this_00,psVar2);
          if (param_2 == 0) {
            psVar2 = &DAT_00fba6c4;
          }
          else {
            psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_2);
          }
          FUN_0059e130(this_00,psVar2);
          if (param_3 == 0) {
            psVar2 = &DAT_00fba6c4;
          }
          else {
            psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_3);
          }
          FUN_0059e0d0(this_00,psVar2);
          this_00[0xc] = param_4;
          this_00[0xd] = param_5;
          this_00[0xe] = param_6;
          this_00[0xf] = param_7;
          if (DAT_011edbc4 != 0) {
            puVar6 = (ushort *)FUN_00a19140(DAT_011edbc4);
            FUN_004ee170(auStack_414,puVar6);
            FUN_004eddc0(auStack_414,asStack_614,0x100);
            FUN_0059e0a0(this_00,asStack_614);
          }
          uVar4 = FUN_00aad7f0(this,(int)unaff_EDI,(int)this_00,param_8);
          if ((char)uVar4 != '\0') {
            FUN_00aaa010((int)this);
          }
        }
      }
      FUN_0050a3b0(unaff_EDI);
      if (this_00 != (int *)0x0) {
        (**(code **)(*this_00 + 4))();
      }
    }
    if ((2 < (int)(iStack_61c - iStack_624 & 0xfffffffeU)) && (iStack_624 != 0)) {
      FUN_004e44e0(iStack_624);
    }
  }
  return;
}

