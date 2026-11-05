/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011630d0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetWorldNameMetadataImpl [assembly=ScriptCore token=0x06000E55;
   worldFile: System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UIManager__UIManager_GetWorldNameMetadataImpl(undefined4 param_1)

{
  int *piVar1;
  short *psVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  void *pvVar6;
  undefined4 uStack_10c;
  undefined4 *puStack_108;
  void *pvStack_104;
  int iStack_100;
  int iStack_fc;
  char *pcStack_f8;
  char *pcStack_f4;
  undefined **appuStack_f0 [2];
  undefined2 uStack_e8;
  undefined2 uStack_e6;
  int aiStack_d0 [4];
  undefined4 auStack_c0 [8];
  undefined4 auStack_a0 [31];
  short *psStack_24;
  
  uStack_10c = 0;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    pvStack_104 = (void *)0x0;
    iStack_100 = 0;
    iStack_fc = 0;
    pcStack_f8 = "UI/SaveGameMetadata";
    FUN_0040b590(&pvStack_104,psVar2);
    if ((((iStack_100 - (int)pvStack_104 >> 1 != 0) && (iVar3 = FUN_00aa9c70(), iVar3 != 0)) &&
        ((void *)(iVar3 + -0x14) != (void *)0x0)) &&
       (uVar4 = FUN_00aab460(&pvStack_104,&puStack_108), (char)uVar4 != '\0')) {
      FUN_005a27e0(auStack_a0);
      uVar5 = FUN_00aabd30((void *)(iVar3 + -0x14),(int)puStack_108);
      if ((char)uVar5 != '\0') {
        pcStack_f4 = "UI/SaveGameMetadata";
        pvVar6 = FUN_0040b880(aiStack_d0,psStack_24,&pcStack_f4);
        pvVar6 = FUN_004f6630(auStack_c0,pvVar6);
        appuStack_f0[0] = &PTR_FUN_00fba6f4;
        uStack_e8 = 0;
        uStack_e6 = 0;
        FUN_004f64b0(appuStack_f0,(int)pvVar6);
        FUN_004f5820(auStack_c0);
        FUN_004ef8f0(aiStack_d0);
        (**(code **)(*piVar1 + 0x50))(appuStack_f0,&uStack_10c);
        FUN_004f5820(appuStack_f0);
      }
      FUN_0050a3b0(puStack_108);
      FUN_005a28a0(auStack_a0);
    }
    if ((2 < (int)(iStack_fc - (int)pvStack_104 & 0xfffffffeU)) && (pvStack_104 != (void *)0x0)) {
      Memory_FreeIfNonNull(pvStack_104);
    }
  }
  return uStack_10c;
}

