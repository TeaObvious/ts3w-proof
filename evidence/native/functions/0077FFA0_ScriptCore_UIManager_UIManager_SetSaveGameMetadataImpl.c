/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011630c0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  undefined4 uStack_624;
  int iStack_620;
  int iStack_61c;
  char *pcStack_618;
  short asStack_614 [256];
  undefined1 auStack_414 [1044];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    uStack_624 = (void *)0x0;
    iStack_620 = 0;
    iStack_61c = 0;
    pcStack_618 = "UI/SaveGameMetadata";
    FUN_0040b590(&uStack_624,psVar2);
    if ((((iStack_620 - (int)uStack_624 >> 1 != 0) && (iVar3 = FUN_00aa9c70(), iVar3 != 0)) &&
        (this = (void *)(iVar3 + -0x14), this != (void *)0x0)) &&
       (uVar4 = FUN_00aab460(&uStack_624,(undefined4 *)(asStack_614 + -10)), (char)uVar4 != '\0')) {
      puVar5 = (undefined4 *)FUN_004e4500(0xd0,"UI/SaveGameMetdata",0);
      if (puVar5 == (undefined4 *)0x0) {
        this_00 = (int *)0x0;
      }
      else {
        this_00 = (int *)SaveGameMetadata_Construct(puVar5);
        if (this_00 != (int *)0x0) {
          (**(code **)*this_00)();
          if (param_1 == 0) {
            psVar2 = &DAT_00fba6c4;
          }
          else {
            psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
          }
          SaveGameMetadata_SetHouseholdName(this_00,psVar2);
          if (param_2 == 0) {
            psVar2 = &DAT_00fba6c4;
          }
          else {
            psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_2);
          }
          SaveGameMetadata_SetHouseholdBiography(this_00,psVar2);
          if (param_3 == 0) {
            psVar2 = &DAT_00fba6c4;
          }
          else {
            psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_3);
          }
          SaveGameMetadata_SetHomeWorld(this_00,psVar2);
          this_00[0xc] = param_4;
          this_00[0xd] = param_5;
          this_00[0xe] = param_6;
          this_00[0xf] = param_7;
          if (DAT_011edbc4 != 0) {
            puVar6 = (ushort *)World_ReadFilenameInputWord(DAT_011edbc4);
            FUN_004ee170(auStack_414,puVar6);
            FUN_004eddc0(auStack_414,asStack_614,0x100);
            FUN_0059e0a0(this_00,asStack_614);
          }
          uVar4 = LoadSaveMetadata_WriteDatabase(this,(int)unaff_EDI,(int)this_00,param_8);
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
    if ((2 < (int)(iStack_61c - (int)uStack_624 & 0xfffffffeU)) && (uStack_624 != (void *)0x0)) {
      Memory_FreeIfNonNull(uStack_624);
    }
  }
  return;
}

