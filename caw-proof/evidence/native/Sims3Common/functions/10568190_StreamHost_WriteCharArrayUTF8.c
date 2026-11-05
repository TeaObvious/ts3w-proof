/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_WriteCharArrayUTF8. Export ordinal(s):
   2464. Entry VA: 0x10568190. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F34. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl StreamHost_WriteCharArrayUTF8(uint param_1,int param_2,int param_3,uint param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  char cVar4;
  int *piVar5;
  int *piVar6;
  int unaff_EBX;
  int unaff_EBP;
  int unaff_EDI;
  undefined1 local_2c [8];
  undefined1 auStack_24 [32];
  LPCWSTR pWStack_4;
  
  uVar3 = param_4;
  iVar2 = param_3;
                    /* 0x568190  2464  StreamHost_WriteCharArrayUTF8 */
  iVar1 = param_2;
  if (param_2 == 0) {
    return 0xfffffffa;
  }
  if ((param_3 < 0) || ((int)param_4 < 1)) {
    return 0xfffffff9;
  }
  piVar5 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    piVar5 = (int *)FUN_10567270(param_1);
  }
  if (piVar5 == (int *)0x0) {
    return 0xfffffffe;
  }
  param_2 = 0;
  piVar6 = (int *)FUN_1055b120();
  (**(code **)(*piVar6 + 0x7c))(iVar1,&param_2,local_2c);
  if (pWStack_4 == (LPCWSTR)0x0) {
    return 0xfffffffa;
  }
  if ((iVar2 < unaff_EDI) && ((int)uVar3 <= unaff_EDI - iVar2)) {
    FUN_105cc2a0(auStack_24,piVar5,1);
    FUN_10926f20(&stack0xffffffcc,pWStack_4,uVar3,"Scripting/WriteCharArrayUTF8");
    cVar4 = (**(code **)(*piVar5 + 0x38))(unaff_EBX,unaff_EBP - unaff_EBX);
    if (cVar4 != '\0') {
      FUN_1050ec20((int *)&stack0xffffffc4);
      FUN_105ca900((int)local_2c);
      return 0;
    }
    FUN_1050ec20((int *)&stack0xffffffc4);
    FUN_105ca900((int)local_2c);
    return 0xfffffffd;
  }
  return 0xfffffff9;
}

