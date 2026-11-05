/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_ExportResourceImpl. Export
   ordinal(s): 368. Entry VA: 0x107863c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600118D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

char DownloadContent_ExportResourceImpl(void)

{
  byte bVar1;
  char cVar2;
  int *piVar3;
  undefined3 extraout_var;
  int iVar4;
  int iVar5;
  undefined4 *unaff_ESI;
  undefined4 in_stack_00000014;
  undefined4 auStack_160 [2];
  undefined4 local_158 [2];
  undefined1 auStack_150 [24];
  int aiStack_138 [18];
  uint auStack_f0 [4];
  undefined4 auStack_e0 [4];
  undefined4 auStack_d0 [4];
  undefined1 *puStack_c0;
  
                    /* 0x7863c0  368  DownloadContent_ExportResourceImpl */
  piVar3 = (int *)FUN_1055b120();
  FUN_1055dbb0(&stack0x00000004,local_158);
  bVar1 = FUN_10782290(local_158);
  if (CONCAT31(extraout_var,bVar1) != 3) {
    return '\0';
  }
  iVar4 = (**(code **)(*piVar3 + 0x58))(in_stack_00000014);
  iVar5 = (**(code **)(*piVar3 + 0x58))(in_stack_00000014);
  if (iVar4 == 0) {
    return '\0';
  }
  FUN_100fdca0(auStack_f0,auStack_160);
  FUN_1000f080(auStack_e0,&DAT_10b58ef4);
  if (iVar5 != 0) {
    FUN_1000f080(auStack_d0,&DAT_10b58ef4);
  }
  FUN_10914090(&stack0xfffffe74,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
  FUN_10913a70(&stack0xfffffe74,1,1.0);
  FUN_10913ee0(&stack0xfffffe74,0,0);
  FUN_105cc2a0(auStack_150,(int *)&stack0xfffffe74,1);
  puStack_c0 = auStack_150;
  FUN_100f9a60(aiStack_138,0,1);
  cVar2 = FUN_1079d210(auStack_f0,aiStack_138,(undefined2 **)0x0);
  FUN_100f9c80((int)aiStack_138);
  FUN_105ca900((int)auStack_150);
  if (unaff_ESI != (undefined4 *)0x0) {
    FUN_10913a30(unaff_ESI);
  }
  FUN_100ff7e0((int)auStack_f0);
  return cVar2;
}

