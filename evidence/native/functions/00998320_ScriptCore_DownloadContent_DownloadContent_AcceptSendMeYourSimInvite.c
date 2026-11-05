/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181620 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_AcceptSendMeYourSimInvite [assembly=ScriptCore
   token=0x06000094; postId: System.UInt32, passportId: System.Int32, slot: System.UInt32, guid:
   System.Int64, careerId: System.Int64, simLevel: System.Int32, simName: System.String, pKeyTable:
   System.Byte[], pIdTable: System.UInt64[], pScriptData: System.Byte[], xmlTags: System.Byte[];
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1
ScriptCore_DownloadContent__DownloadContent_AcceptSendMeYourSimInvite
          (uint param_1,undefined4 param_2,int param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,int param_10,
          void *param_11,int param_12,int param_13)

{
  char cVar1;
  undefined1 uVar2;
  int *piVar3;
  void *pvVar4;
  int *piVar5;
  int iVar6;
  undefined4 uVar7;
  void *unaff_EBP;
  uint uVar8;
  char *pcStack_ac;
  void *pvStack_a8;
  undefined4 auStack_a4 [3];
  void *apvStack_98 [4];
  undefined4 auStack_88 [3];
  int iStack_7c;
  undefined4 auStack_78 [7];
  undefined4 auStack_5c [3];
  int iStack_50;
  undefined1 auStack_4c [24];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [24];
  undefined1 auStack_18 [24];
  
  if (((param_10 == 0) || (param_11 == (void *)0x0)) || (param_12 == 0)) {
    return 0;
  }
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pvVar4 = DownloadContent_GetOwnerFromGlobalLink();
  piVar5 = (int *)FUN_00986920(pvVar4,0x4f88964);
  if (piVar5 != (int *)0x0) {
    uVar8 = 0;
    iVar6 = AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
    pvVar4 = (void *)FUN_009de7f0(iVar6);
    FUN_00a3c1b0(pvVar4,param_1,uVar8,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
    pcStack_ac = "ResourceSystem/DownloadContent/IndexedKeyList";
    FUN_007d9500(&pvStack_a8,&pcStack_ac);
    uVar7 = FUN_00994f40(piVar3,param_10);
    if ((char)uVar7 != '\0') {
      pcStack_ac = "ResourceSystem/DownloadContent/ObjectIdList";
      FUN_007d9500(apvStack_98,&pcStack_ac);
      uVar7 = FUN_009979d0(piVar3,param_11);
      if ((char)uVar7 != '\0') {
        FUN_004df460(auStack_88,0,0,"ResourceSystem/DownloadContent/MemoryStream");
        iStack_7c = iStack_7c + 1;
        FUN_004dee40(auStack_88,1,1.0);
        cVar1 = FUN_00994fb0(piVar3,param_12);
        if (cVar1 != '\0') {
          uVar7 = (**(code **)(*piVar3 + 0x58))(param_9);
          FUN_004df460(auStack_5c,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
          iStack_50 = iStack_50 + 1;
          FUN_004dee40(auStack_5c,1,1.0);
          if (param_13 == 0) {
LAB_0099850a:
            FUN_004df2b0(auStack_88,0,0);
            StreamReader_Construct(auStack_18,auStack_88,1);
            FUN_004df2b0(auStack_5c,0,0);
            StreamReader_Construct(auStack_30,auStack_5c,1);
            pvVar4 = (void *)0xffffffff;
            uVar2 = (**(code **)(*piVar5 + 0x10))
                              (uVar7,&pvStack_a8,apvStack_98,auStack_18,auStack_30,0xffffffff,
                               0xffffffff);
            FUN_004df010(auStack_a4,(void *)0x0,0,'\0',1,(int *)0x0);
            StreamReader_ReleaseAuxiliary(auStack_4c);
            StreamReader_ReleaseAuxiliary(auStack_34);
            FUN_00455b30(auStack_78);
            FUN_00455b30(auStack_a4);
            if (unaff_EBP != (void *)0x0) {
              Memory_FreeIfNonNull(unaff_EBP);
            }
            if (pvVar4 != (void *)0x0) {
              Memory_FreeIfNonNull(pvVar4);
            }
            return uVar2;
          }
          cVar1 = FUN_00994fb0(piVar3,param_13);
          if (cVar1 != '\0') goto LAB_0099850a;
          FUN_00455b30(auStack_5c);
        }
        FUN_00455b30(auStack_88);
      }
      if (apvStack_98[0] != (void *)0x0) {
        Memory_FreeIfNonNull(apvStack_98[0]);
      }
    }
    if (pvStack_a8 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_a8);
    }
  }
  return 0;
}

