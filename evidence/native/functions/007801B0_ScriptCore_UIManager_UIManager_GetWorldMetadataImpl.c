/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011630c8 (original PC1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_GetWorldMetadataImpl [assembly=ScriptCore token=0x06000E54;
   worldFile: System.String, lotCount: System.UInt32&, worldThumbnail: System.UInt32&, worldNameKey:
   System.UInt64&, worldType: System.UInt32&, worldName: System.UInt32&; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 catalog/template instruction contract): Existing managed registration
   identity preserved. Physicalcdecl six stack arguments plainRET: world string handle and output
   pointers lotcount,thumbnail,namekey64,worldtype,worldname. Convert/open package path, construct
   metadata, native package readAABD30; on success copy lotcount/namehash, transfer optional image
   throughhost, and call5A2B90/5A2A00 for effective per-word identity. Close package and destroy
   metadata. Actual C indirect host calls may mis-track local struct fields; instruction
   offsets/output writes are authoritative. */

undefined4 __cdecl
ScriptCore_UIManager__UIManager_GetWorldMetadataImpl
          (undefined4 param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4,
          int *param_5,uint *param_6)

{
  int *piVar1;
  short *psVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 *puVar6;
  int *piVar7;
  void *pvVar8;
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
  undefined4 auStack_c0 [2];
  undefined4 uStack_b8;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 *puStack_58;
  short *psStack_54;
  undefined4 auStack_20 [8];
  
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
      FUN_005a27e0(auStack_c0);
      uVar5 = FUN_00aabd30((void *)(iVar3 + -0x14),(int)puStack_108);
      if ((char)uVar5 != '\0') {
        *param_4 = uStack_a0;
        param_4[1] = uStack_9c;
        if (puStack_58 != (undefined4 *)0x0) {
          puVar6 = FUN_007e85b0(puStack_58);
          if (puVar6 == (undefined4 *)0x0) {
            *param_3 = 0;
          }
          else {
            puStack_58 = (undefined4 *)0x0;
            (**(code **)*puVar6)();
            piVar7 = (int *)GetGlobalInterfacePointer_11D5BBC();
            uVar4 = (**(code **)(*piVar7 + 200))(puVar6,0x30);
            *param_3 = uVar4;
          }
        }
        *param_2 = uStack_b8;
        uVar5 = WorldTemplate_GetEffectiveWorldType(auStack_c0);
        *param_5 = uVar5;
        uVar5 = WorldTemplate_GetEffectiveWorldName(auStack_c0);
        *param_6 = uVar5;
        pcStack_f4 = "UI/SaveGameMetadata";
        pvVar8 = FUN_0040b880(aiStack_d0,psStack_54,&pcStack_f4);
        pvVar8 = FUN_004f6630(auStack_20,pvVar8);
        appuStack_f0[0] = &PTR_FUN_00fba6f4;
        uStack_e8 = 0;
        uStack_e6 = 0;
        FUN_004f64b0(appuStack_f0,(int)pvVar8);
        FUN_004f5820(auStack_20);
        FUN_004ef8f0(aiStack_d0);
        (**(code **)(*piVar1 + 0x50))(appuStack_f0,&uStack_10c);
        FUN_004f5820(appuStack_f0);
      }
      FUN_0050a3b0(puStack_108);
      FUN_005a28a0(auStack_c0);
    }
    if ((2 < (int)(iStack_fc - (int)pvStack_104 & 0xfffffffeU)) && (pvStack_104 != (void *)0x0)) {
      Memory_FreeIfNonNull(pvStack_104);
    }
  }
  return uStack_10c;
}

