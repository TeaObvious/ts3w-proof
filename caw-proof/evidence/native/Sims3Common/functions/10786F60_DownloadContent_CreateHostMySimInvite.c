/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_CreateHostMySimInvite. Export
   ordinal(s): 356. Entry VA: 0x10786f60. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001174. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl
DownloadContent_CreateHostMySimInvite
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
  
                    /* 0x786f60  356  DownloadContent_CreateHostMySimInvite */
  if ((((in_stack_0000002c == (void *)0x0) || (in_stack_00000030 == 0)) || (in_stack_00000034 == 0))
     || (((in_stack_00000038 == 0 || (in_stack_0000003c == 0)) || (in_stack_00000040 == 0)))) {
    return 0;
  }
  piVar3 = (int *)FUN_1055b120();
  pvVar4 = (void *)FUN_107744c0();
  aiStack_f4[1] = 0x10786fd6;
  piVar5 = (int *)FUN_10778070(pvVar4,0x4f88964);
  if (piVar5 == (int *)0x0) {
    return 0;
  }
  aiStack_f4[0] = 0x10786ffa;
  uVar6 = (**(code **)(*piVar3 + 0x58))();
  pWVar7 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))();
  FUN_10926f20(auStack_c0,pWVar7,0xffffffff,(char *)0x0);
  pWVar7 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))(in_stack_00000028);
  FUN_10926f20(aiStack_d4,pWVar7,0xffffffff,(char *)0x0);
  pWVar7 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))(in_stack_00000028);
  FUN_10926f20(apcStack_a8,pWVar7,0xffffffff,(char *)0x0);
  iVar8 = FUN_1036f400(DAT_10c8f590);
  pvVar4 = (void *)FUN_107decd0(iVar8);
  FUN_108274c0(pvVar4,uStack_c,uStack_8,uStack_4,unaff_retaddr,param_1,param_2,param_3,param_4,
               param_5,pcStack_c8,pcStack_d8,apcStack_a8[0]);
  FUN_10727810(&stack0xffffff18,(undefined4 *)&stack0xffffff14);
  uVar9 = FUN_10784010(piVar3,in_stack_00000038);
  if ((char)uVar9 != '\0') {
    FUN_10727810(&iStack_b8,(undefined4 *)&stack0xffffff14);
    uVar9 = FUN_107869e0(piVar3,in_stack_0000002c);
    if ((char)uVar9 != '\0') {
      FUN_10914090(aiStack_98,0,0,"ResourceSystem/DownloadContent/MemoryStream");
      iStack_8c = iStack_8c + 1;
      FUN_10913a70(aiStack_98,1,1.0);
      cVar1 = FUN_10784080(piVar3,in_stack_00000030);
      if (cVar1 != '\0') {
        FUN_10914090(aiStack_6c,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
        iStack_60 = iStack_60 + 1;
        FUN_10913a70(aiStack_6c,1,1.0);
        if (in_stack_00000034 == 0) {
LAB_1078722a:
          FUN_10913ee0(aiStack_98,0,0);
          FUN_105cc2a0(auStack_28,aiStack_98,1);
          FUN_10913ee0(aiStack_6c,0,0);
          FUN_105cc2a0(auStack_40,aiStack_6c,1);
          iVar8 = -1;
          uVar2 = (**(code **)(*piVar5 + 0x10))
                            (uVar6,&stack0xffffff18,&iStack_b8,auStack_28,auStack_40,0xffffffff,
                             0xffffffff);
          FUN_10913c40(auStack_b4,(void *)0x0,0,'\0',1,(int *)0x0);
          FUN_105ca900((int)auStack_5c);
          FUN_105ca900((int)auStack_44);
          FUN_1001e1d0(auStack_88);
          FUN_1001e1d0(auStack_b4);
          if (aiStack_d4[0] != 0) {
            FUN_10918e90(aiStack_d4[0]);
          }
          if (iVar8 != 0) {
            FUN_10918e90(iVar8);
          }
          FUN_1050ec20(&iStack_c4);
          FUN_1050ec20(aiStack_f4);
          FUN_1050ec20((int *)&stack0xffffff1c);
          return uVar2;
        }
        cVar1 = FUN_10784080(piVar3,in_stack_00000034);
        if (cVar1 != '\0') goto LAB_1078722a;
        FUN_1001e1d0(aiStack_6c);
      }
      FUN_1001e1d0(aiStack_98);
    }
    if (iStack_b8 != 0) {
      FUN_10918e90(iStack_b8);
    }
  }
  if (unaff_ESI != 0) {
    FUN_10918e90(unaff_ESI);
  }
  FUN_1050ec20((int *)apcStack_a8);
  FUN_1050ec20((int *)&pcStack_d8);
  FUN_1050ec20((int *)&pcStack_c8);
  return 0;
}

