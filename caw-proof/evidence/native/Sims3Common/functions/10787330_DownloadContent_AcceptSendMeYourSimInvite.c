/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_AcceptSendMeYourSimInvite. Export
   ordinal(s): 355. Entry VA: 0x10787330. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001175. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl
DownloadContent_AcceptSendMeYourSimInvite
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
  char *local_ac;
  int local_a8;
  undefined4 auStack_a4 [3];
  int local_98 [4];
  int local_88 [3];
  int local_7c;
  undefined4 auStack_78 [7];
  int aiStack_5c [3];
  int iStack_50;
  undefined1 auStack_4c [24];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [24];
  undefined1 auStack_18 [24];
  
                    /* 0x787330  355  DownloadContent_AcceptSendMeYourSimInvite */
  if (((param_10 == 0) || (param_11 == (void *)0x0)) || (param_12 == 0)) {
    return 0;
  }
  piVar3 = (int *)FUN_1055b120();
  pvVar4 = (void *)FUN_107744c0();
  piVar5 = (int *)FUN_10778070(pvVar4,0x4f88964);
  if (piVar5 != (int *)0x0) {
    uVar8 = 0;
    iVar6 = FUN_1036f400(DAT_10c8f590);
    pvVar4 = (void *)FUN_107decd0(iVar6);
    FUN_108277f0(pvVar4,param_1,uVar8,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
    local_ac = "ResourceSystem/DownloadContent/IndexedKeyList";
    FUN_10727810(&local_a8,&local_ac);
    uVar7 = FUN_10784010(piVar3,param_10);
    if ((char)uVar7 != '\0') {
      local_ac = "ResourceSystem/DownloadContent/ObjectIdList";
      FUN_10727810(local_98,&local_ac);
      uVar7 = FUN_107869e0(piVar3,param_11);
      if ((char)uVar7 != '\0') {
        FUN_10914090(local_88,0,0,"ResourceSystem/DownloadContent/MemoryStream");
        local_7c = local_7c + 1;
        FUN_10913a70(local_88,1,1.0);
        cVar1 = FUN_10784080(piVar3,param_12);
        if (cVar1 != '\0') {
          uVar7 = (**(code **)(*piVar3 + 0x58))(param_9);
          FUN_10914090(aiStack_5c,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
          iStack_50 = iStack_50 + 1;
          FUN_10913a70(aiStack_5c,1,1.0);
          if (param_13 == 0) {
LAB_1078751a:
            FUN_10913ee0(local_88,0,0);
            FUN_105cc2a0(auStack_18,local_88,1);
            FUN_10913ee0(aiStack_5c,0,0);
            FUN_105cc2a0(auStack_30,aiStack_5c,1);
            iVar6 = -1;
            uVar2 = (**(code **)(*piVar5 + 0x10))
                              (uVar7,&local_a8,local_98,auStack_18,auStack_30,0xffffffff,0xffffffff)
            ;
            FUN_10913c40(auStack_a4,(void *)0x0,0,'\0',1,(int *)0x0);
            FUN_105ca900((int)auStack_4c);
            FUN_105ca900((int)auStack_34);
            FUN_1001e1d0(auStack_78);
            FUN_1001e1d0(auStack_a4);
            if (unaff_EBP != 0) {
              FUN_10918e90(unaff_EBP);
            }
            if (iVar6 != 0) {
              FUN_10918e90(iVar6);
            }
            return uVar2;
          }
          cVar1 = FUN_10784080(piVar3,param_13);
          if (cVar1 != '\0') goto LAB_1078751a;
          FUN_1001e1d0(aiStack_5c);
        }
        FUN_1001e1d0(local_88);
      }
      if (local_98[0] != 0) {
        FUN_10918e90(local_98[0]);
      }
    }
    if (local_a8 != 0) {
      FUN_10918e90(local_a8);
    }
  }
  return 0;
}

