/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181618 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_CreateHostMySimInvite [assembly=ScriptCore
   token=0x06000093; nucleusId: System.Int64, passportId: System.Int32, slot: System.UInt32, guid:
   System.Int64, careerId: System.Int64, simLevel: System.Int32, simName: System.String, career:
   System.String, level: System.String, venue: System.String, pKeyTable: System.Byte[], pIdTable:
   System.UInt64[], pScriptData: System.Byte[], xmlTags: System.Byte[]; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1
ScriptCore_DownloadContent__DownloadContent_CreateHostMySimInvite
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  char cVar1;
  undefined1 uVar2;
  int *piVar3;
  void *pvVar4;
  int *piVar5;
  undefined4 uVar6;
  LPCWSTR pWVar7;
  int iVar8;
  undefined4 uVar9;
  int unaff_ESI;
  int unaff_retaddr;
  undefined4 in_stack_00000028;
  void *in_stack_0000002c;
  int in_stack_00000030;
  int in_stack_00000034;
  int in_stack_00000038;
  int in_stack_0000003c;
  int in_stack_00000040;
  int aiStack_f4 [2];
  char *pcStack_d8;
  int aiStack_d4 [3];
  char *pcStack_c8;
  int iStack_c4;
  undefined1 auStack_c0 [8];
  int iStack_b8;
  undefined4 auStack_b4 [3];
  char *apcStack_a8 [4];
  int aiStack_98 [3];
  int iStack_8c;
  undefined4 auStack_88 [7];
  int aiStack_6c [3];
  int iStack_60;
  undefined1 auStack_5c [24];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [24];
  undefined1 auStack_28 [28];
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  if ((((in_stack_0000002c == (void *)0x0) || (in_stack_00000030 == 0)) || (in_stack_00000034 == 0))
     || (((in_stack_00000038 == 0 || (in_stack_0000003c == 0)) || (in_stack_00000040 == 0)))) {
    return 0;
  }
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pvVar4 = (void *)FUN_00982e60();
  aiStack_f4[1] = 0x997fc6;
  piVar5 = (int *)FUN_00986920(pvVar4,0x4f88964);
  if (piVar5 == (int *)0x0) {
    return 0;
  }
  aiStack_f4[0] = 0x997fea;
  uVar6 = (**(code **)(*piVar3 + 0x58))();
  pWVar7 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))();
  FUN_004f3cc0(auStack_c0,pWVar7,0xffffffff,(char *)0x0);
  pWVar7 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))(in_stack_00000028);
  FUN_004f3cc0(aiStack_d4,pWVar7,0xffffffff,(char *)0x0);
  pWVar7 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))(in_stack_00000028);
  FUN_004f3cc0(apcStack_a8,pWVar7,0xffffffff,(char *)0x0);
  iVar8 = FUN_0056c070(DAT_011ebda0);
  pvVar4 = (void *)FUN_009de7f0(iVar8);
  FUN_00a3be80(pvVar4,uStack_c,uStack_8,uStack_4,unaff_retaddr,param_1,param_2,param_3,param_4,
               param_5,pcStack_c8,pcStack_d8,apcStack_a8[0]);
  FUN_007d9500(&stack0xffffff18,(undefined4 *)&stack0xffffff14);
  uVar9 = FUN_00994f40(piVar3,in_stack_00000038);
  if ((char)uVar9 != '\0') {
    FUN_007d9500(&iStack_b8,(undefined4 *)&stack0xffffff14);
    uVar9 = FUN_009979d0(piVar3,in_stack_0000002c);
    if ((char)uVar9 != '\0') {
      FUN_004df460(aiStack_98,0,0,"ResourceSystem/DownloadContent/MemoryStream");
      iStack_8c = iStack_8c + 1;
      FUN_004dee40(aiStack_98,1,1.0);
      cVar1 = FUN_00994fb0(piVar3,in_stack_00000030);
      if (cVar1 != '\0') {
        FUN_004df460(aiStack_6c,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
        iStack_60 = iStack_60 + 1;
        FUN_004dee40(aiStack_6c,1,1.0);
        if (in_stack_00000034 == 0) {
LAB_0099821a:
          FUN_004df2b0(aiStack_98,0,0);
          FUN_007d93e0(auStack_28,aiStack_98,1);
          FUN_004df2b0(aiStack_6c,0,0);
          FUN_007d93e0(auStack_40,aiStack_6c,1);
          iVar8 = -1;
          uVar2 = (**(code **)(*piVar5 + 0x10))
                            (uVar6,&stack0xffffff18,&iStack_b8,auStack_28,auStack_40,0xffffffff,
                             0xffffffff);
          FUN_004df010(auStack_b4,(void *)0x0,0,'\0',1,(int *)0x0);
          FUN_007d7990((int)auStack_5c);
          FUN_007d7990((int)auStack_44);
          FUN_00455b30(auStack_88);
          FUN_00455b30(auStack_b4);
          if (aiStack_d4[0] != 0) {
            FUN_004e44e0(aiStack_d4[0]);
          }
          if (iVar8 != 0) {
            FUN_004e44e0(iVar8);
          }
          FUN_0071c6c0(&iStack_c4);
          FUN_0071c6c0(aiStack_f4);
          FUN_0071c6c0((int *)&stack0xffffff1c);
          return uVar2;
        }
        cVar1 = FUN_00994fb0(piVar3,in_stack_00000034);
        if (cVar1 != '\0') goto LAB_0099821a;
        FUN_00455b30(aiStack_6c);
      }
      FUN_00455b30(aiStack_98);
    }
    if (iStack_b8 != 0) {
      FUN_004e44e0(iStack_b8);
    }
  }
  if (unaff_ESI != 0) {
    FUN_004e44e0(unaff_ESI);
  }
  FUN_0071c6c0((int *)apcStack_a8);
  FUN_0071c6c0((int *)&pcStack_d8);
  FUN_0071c6c0((int *)&pcStack_c8);
  return 0;
}

