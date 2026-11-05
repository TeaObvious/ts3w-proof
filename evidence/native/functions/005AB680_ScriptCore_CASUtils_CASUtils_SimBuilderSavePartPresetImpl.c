/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011563b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_SimBuilderSavePartPresetImpl [assembly=ScriptCore token=0x0600031D;
   handle: System.UInt32, partKey: Sims3.SimIFace.ResourceKey, presetName: System.String, preset:
   System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_SimBuilderSavePartPresetImpl
          (uint param_1,int param_2,undefined4 param_3,int param_4,char *param_5,undefined4 param_6)

{
  int *piVar1;
  undefined4 *puVar2;
  short *psVar3;
  int iVar4;
  void *pvStack_50;
  undefined4 uStack_4c;
  int iStack_48;
  char *pcStack_44;
  void *pvStack_40;
  undefined4 uStack_3c;
  char *pcStack_38;
  void *local_30;
  int local_2c;
  int local_28;
  int local_20;
  char *local_1c;
  int local_18;
  undefined4 local_14;
  void *apvStack_10 [2];
  int iStack_8;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_1c = param_5;
  local_18 = param_2;
  local_20 = param_4;
  local_14 = param_3;
  puVar2 = FUN_007d9770(&param_2);
  FUN_004f3c90(&local_30,puVar2);
  if ((1 < param_4 - param_2) && (param_2 != 0)) {
    Memory_FreeIfNonNull((void *)param_2);
  }
  if ((piVar1 != (int *)0x0) && (local_2c - (int)local_30 >> 1 != 0)) {
    psVar3 = (short *)(**(code **)(*piVar1 + 0x58))(param_6);
    pcStack_44 = (char *)0x0;
    pvStack_40 = (void *)0x0;
    uStack_3c = 0;
    pcStack_38 = "CAS/SimBuilder::SavePartPreset";
    FUN_0040b590(&pcStack_44,psVar3);
    psVar3 = (short *)(**(code **)(*piVar1 + 0x58))(param_6);
    pvStack_50 = (void *)0x0;
    uStack_4c = 0;
    iStack_48 = 0;
    pcStack_44 = "CAS/SimBuilder::SavePartPreset";
    FUN_0040b590(&pvStack_50,psVar3);
    puVar2 = FUN_004f3df0(apvStack_10,&pvStack_50);
    param_2 = 0;
    param_3 = 0;
    param_4 = 0;
    param_5 = "CAS/SimBuilder::SavePartPreset";
    FUN_00405ad0(&param_2,(char *)*puVar2);
    if ((1 < iStack_8 - (int)apvStack_10[0]) && (apvStack_10[0] != (void *)0x0)) {
      Memory_FreeIfNonNull(apvStack_10[0]);
    }
    if (((param_1 & 0xff000000) == 0x35000000) &&
       (iVar4 = (**(code **)(*piVar1 + 0xcc))(param_1), iVar4 != 0)) {
      FUN_00b9af30();
    }
    if ((1 < param_4 - param_2) && (param_2 != 0)) {
      Memory_FreeIfNonNull((void *)param_2);
    }
    if ((2 < (int)(iStack_48 - (int)pvStack_50 & 0xfffffffeU)) && (pvStack_50 != (void *)0x0)) {
      Memory_FreeIfNonNull(pvStack_50);
    }
    if ((2 < (int)((int)pcStack_38 - (int)pvStack_40 & 0xfffffffeU)) && (pvStack_40 != (void *)0x0))
    {
      Memory_FreeIfNonNull(pvStack_40);
    }
  }
  if ((2 < (int)(local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (void *)0x0)) {
    Memory_FreeIfNonNull(local_30);
  }
  return;
}

