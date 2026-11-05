/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181610 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_ExportContentImpl [assembly=ScriptCore
   token=0x06000092; type: Sims3.SimIFace.CustomContent.ExportContentType, id: System.UInt64,
   contentName: System.String, pKeyTable: System.Byte[], pIdTable: System.UInt64[], pScriptData:
   System.Byte[], xmlTags: System.Byte[], shaderIndex: System.Int64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1
ScriptCore_DownloadContent__DownloadContent_ExportContentImpl
          (uint param_1,undefined4 param_2,undefined4 param_3,int param_4,void *param_5,int param_6,
          int param_7,int param_8,undefined4 param_9)

{
  char cVar1;
  undefined1 uVar2;
  int *piVar3;
  void *this;
  int *piVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  void *unaff_ESI;
  void *pvStack_ac;
  undefined4 auStack_a8 [3];
  void *apvStack_9c [4];
  undefined4 auStack_8c [3];
  int iStack_80;
  undefined4 auStack_7c [7];
  undefined4 auStack_60 [3];
  int iStack_54;
  undefined1 auStack_50 [24];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [24];
  undefined1 auStack_1c [28];
  
  if ((((param_4 == 0) || (param_5 == (void *)0x0)) || (param_6 == 0)) || (param_7 == 0)) {
    return 0;
  }
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = DownloadContent_GetOwnerFromGlobalLink();
  piVar4 = (int *)FUN_00986920(this,param_1);
  if (piVar4 != (int *)0x0) {
    uVar5 = (**(code **)(*piVar3 + 0x58))(param_4);
    FUN_007d9500(&pvStack_ac,auStack_a8 + -2);
    uVar6 = FUN_00994f40(piVar3,param_4);
    if ((char)uVar6 != '\0') {
      FUN_007d9500(apvStack_9c,auStack_a8 + -2);
      uVar6 = FUN_009979d0(piVar3,param_5);
      if ((char)uVar6 != '\0') {
        FUN_004df460(auStack_8c,0,0,"ResourceSystem/DownloadContent/MemoryStream");
        iStack_80 = iStack_80 + 1;
        FUN_004dee40(auStack_8c,1,1.0);
        cVar1 = FUN_00994fb0(piVar3,param_7);
        if (cVar1 != '\0') {
          FUN_004df460(auStack_60,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
          iStack_54 = iStack_54 + 1;
          FUN_004dee40(auStack_60,1,1.0);
          if (param_7 == 0) {
LAB_00997e5f:
            FUN_004df2b0(auStack_8c,0,0);
            StreamReader_Construct(auStack_1c,auStack_8c,1);
            FUN_004df2b0(auStack_60,0,0);
            StreamReader_Construct(auStack_34,auStack_60,1);
            uVar2 = (**(code **)(*piVar4 + 0x10))
                              (uVar5,&pvStack_ac,apvStack_9c,auStack_1c,auStack_34,param_8,param_9);
            FUN_004df010(auStack_a8,(void *)0x0,0,'\0',1,(int *)0x0);
            StreamReader_ReleaseAuxiliary(auStack_50);
            StreamReader_ReleaseAuxiliary(auStack_38);
            FUN_00455b30(auStack_7c);
            FUN_00455b30(auStack_a8);
            if (unaff_ESI != (void *)0x0) {
              Memory_FreeIfNonNull(unaff_ESI);
            }
            if ((void *)param_8 != (void *)0x0) {
              Memory_FreeIfNonNull((void *)param_8);
            }
            return uVar2;
          }
          cVar1 = FUN_00994fb0(piVar3,param_7);
          if (cVar1 != '\0') goto LAB_00997e5f;
          FUN_00455b30(auStack_60);
        }
        FUN_00455b30(auStack_8c);
      }
      if (apvStack_9c[0] != (void *)0x0) {
        Memory_FreeIfNonNull(apvStack_9c[0]);
      }
    }
    if (pvStack_ac != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_ac);
    }
  }
  return 0;
}

