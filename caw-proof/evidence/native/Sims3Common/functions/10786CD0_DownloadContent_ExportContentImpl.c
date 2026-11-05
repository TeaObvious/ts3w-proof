/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_ExportContentImpl. Export
   ordinal(s): 363. Entry VA: 0x10786cd0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001173. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl
DownloadContent_ExportContentImpl
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
  int unaff_ESI;
  int iStack_ac;
  undefined4 auStack_a8 [3];
  int aiStack_9c [4];
  int aiStack_8c [3];
  int iStack_80;
  undefined4 auStack_7c [7];
  int aiStack_60 [3];
  int iStack_54;
  undefined1 auStack_50 [24];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [24];
  undefined1 auStack_1c [28];
  
                    /* 0x786cd0  363  DownloadContent_ExportContentImpl */
  if ((((param_4 == 0) || (param_5 == (void *)0x0)) || (param_6 == 0)) || (param_7 == 0)) {
    return 0;
  }
  piVar3 = (int *)FUN_1055b120();
  this = (void *)FUN_107744c0();
  piVar4 = (int *)FUN_10778070(this,param_1);
  if (piVar4 != (int *)0x0) {
    uVar5 = (**(code **)(*piVar3 + 0x58))(param_4);
    FUN_10727810(&iStack_ac,(undefined4 *)&stack0xffffff50);
    uVar6 = FUN_10784010(piVar3,param_4);
    if ((char)uVar6 != '\0') {
      FUN_10727810(aiStack_9c,(undefined4 *)&stack0xffffff50);
      uVar6 = FUN_107869e0(piVar3,param_5);
      if ((char)uVar6 != '\0') {
        FUN_10914090(aiStack_8c,0,0,"ResourceSystem/DownloadContent/MemoryStream");
        iStack_80 = iStack_80 + 1;
        FUN_10913a70(aiStack_8c,1,1.0);
        cVar1 = FUN_10784080(piVar3,param_7);
        if (cVar1 != '\0') {
          FUN_10914090(aiStack_60,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
          iStack_54 = iStack_54 + 1;
          FUN_10913a70(aiStack_60,1,1.0);
          if (param_7 == 0) {
LAB_10786e6f:
            FUN_10913ee0(aiStack_8c,0,0);
            FUN_105cc2a0(auStack_1c,aiStack_8c,1);
            FUN_10913ee0(aiStack_60,0,0);
            FUN_105cc2a0(auStack_34,aiStack_60,1);
            uVar2 = (**(code **)(*piVar4 + 0x10))
                              (uVar5,&iStack_ac,aiStack_9c,auStack_1c,auStack_34,param_8,param_9);
            FUN_10913c40(auStack_a8,(void *)0x0,0,'\0',1,(int *)0x0);
            FUN_105ca900((int)auStack_50);
            FUN_105ca900((int)auStack_38);
            FUN_1001e1d0(auStack_7c);
            FUN_1001e1d0(auStack_a8);
            if (unaff_ESI != 0) {
              FUN_10918e90(unaff_ESI);
            }
            if (param_8 != 0) {
              FUN_10918e90(param_8);
            }
            return uVar2;
          }
          cVar1 = FUN_10784080(piVar3,param_7);
          if (cVar1 != '\0') goto LAB_10786e6f;
          FUN_1001e1d0(aiStack_60);
        }
        FUN_1001e1d0(aiStack_8c);
      }
      if (aiStack_9c[0] != 0) {
        FUN_10918e90(aiStack_9c[0]);
      }
    }
    if (iStack_ac != 0) {
      FUN_10918e90(iStack_ac);
    }
  }
  return 0;
}

