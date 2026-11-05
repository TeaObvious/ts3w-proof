/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181620 (original PC 1.67 TS3W.exe).
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
  int unaff_EBP;
  uint uVar8;
  char *pcStack_ac;
  int iStack_a8;
  undefined4 auStack_a4 [3];
  int aiStack_98 [4];
  int aiStack_88 [3];
  int iStack_7c;
  undefined4 auStack_78 [7];
  int aiStack_5c [3];
  int iStack_50;
  undefined1 auStack_4c [24];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [24];
  undefined1 auStack_18 [24];
  
  if (((param_10 == 0) || (param_11 == (void *)0x0)) || (param_12 == 0)) {
    return 0;
  }
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pvVar4 = (void *)FUN_00982e60();
  piVar5 = (int *)FUN_00986920(pvVar4,0x4f88964);
  if (piVar5 != (int *)0x0) {
    uVar8 = 0;
    iVar6 = FUN_0056c070(DAT_011ebda0);
    pvVar4 = (void *)FUN_009de7f0(iVar6);
    FUN_00a3c1b0(pvVar4,param_1,uVar8,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
    pcStack_ac = "ResourceSystem/DownloadContent/IndexedKeyList";
    FUN_007d9500(&iStack_a8,&pcStack_ac);
    uVar7 = FUN_00994f40(piVar3,param_10);
    if ((char)uVar7 != '\0') {
      pcStack_ac = "ResourceSystem/DownloadContent/ObjectIdList";
      FUN_007d9500(aiStack_98,&pcStack_ac);
      uVar7 = FUN_009979d0(piVar3,param_11);
      if ((char)uVar7 != '\0') {
        FUN_004df460(aiStack_88,0,0,"ResourceSystem/DownloadContent/MemoryStream");
        iStack_7c = iStack_7c + 1;
        FUN_004dee40(aiStack_88,1,1.0);
        cVar1 = FUN_00994fb0(piVar3,param_12);
        if (cVar1 != '\0') {
          uVar7 = (**(code **)(*piVar3 + 0x58))(param_9);
          FUN_004df460(aiStack_5c,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
          iStack_50 = iStack_50 + 1;
          FUN_004dee40(aiStack_5c,1,1.0);
          if (param_13 == 0) {
LAB_0099850a:
            FUN_004df2b0(aiStack_88,0,0);
            FUN_007d93e0(auStack_18,aiStack_88,1);
            FUN_004df2b0(aiStack_5c,0,0);
            FUN_007d93e0(auStack_30,aiStack_5c,1);
            iVar6 = -1;
            uVar2 = (**(code **)(*piVar5 + 0x10))
                              (uVar7,&iStack_a8,aiStack_98,auStack_18,auStack_30,0xffffffff,
                               0xffffffff);
            FUN_004df010(auStack_a4,(void *)0x0,0,'\0',1,(int *)0x0);
            FUN_007d7990((int)auStack_4c);
            FUN_007d7990((int)auStack_34);
            FUN_00455b30(auStack_78);
            FUN_00455b30(auStack_a4);
            if (unaff_EBP != 0) {
              FUN_004e44e0(unaff_EBP);
            }
            if (iVar6 != 0) {
              FUN_004e44e0(iVar6);
            }
            return uVar2;
          }
          cVar1 = FUN_00994fb0(piVar3,param_13);
          if (cVar1 != '\0') goto LAB_0099850a;
          FUN_00455b30(aiStack_5c);
        }
        FUN_00455b30(aiStack_88);
      }
      if (aiStack_98[0] != 0) {
        FUN_004e44e0(aiStack_98[0]);
      }
    }
    if (iStack_a8 != 0) {
      FUN_004e44e0(iStack_a8);
    }
  }
  return 0;
}

