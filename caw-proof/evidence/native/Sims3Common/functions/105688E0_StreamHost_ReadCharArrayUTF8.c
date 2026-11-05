/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_ReadCharArrayUTF8. Export ordinal(s):
   2453. Entry VA: 0x105688e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F3E. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl StreamHost_ReadCharArrayUTF8(int *param_1,int param_2)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int *unaff_ESI;
  int *piVar6;
  uint uVar7;
  int unaff_retaddr;
  LPWSTR pWStack_12c;
  int *local_128;
  int iStack_124;
  LPCWSTR local_120 [2];
  undefined4 local_118;
  char *pcStack_114;
  LPCWSTR pWStack_110;
  
                    /* 0x5688e0  2453  StreamHost_ReadCharArrayUTF8 */
  if (param_1 == DAT_10c7b0a4) {
    local_128 = DAT_10c7b0a8;
  }
  else if (((uint)param_1 & 0xff000000) == 0x60000000) {
    piVar1 = (int *)FUN_1055b120();
    local_128 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (local_128 != (int *)0x0) {
      DAT_10c7b0a4 = param_1;
      DAT_10c7b0a8 = local_128;
    }
  }
  else {
    local_128 = (int *)0x0;
  }
  piVar1 = local_128;
  uVar7 = 0;
  if (local_128 == (int *)0x0) {
    return 0xfffffffe;
  }
  if (param_2 == 0) {
    return 0xfffffffa;
  }
  piVar2 = (int *)FUN_1055b120();
  local_118 = 0;
  local_120[0] = (LPCWSTR)0x0;
  (**(code **)(*piVar2 + 0x70))(param_2,local_120,&local_118);
  if ((((unaff_retaddr < 0) || ((int)param_1 < 0)) || (iStack_124 < unaff_retaddr)) ||
     (iStack_124 - unaff_retaddr < (int)param_1)) {
    return 0xfffffff9;
  }
  if (param_1 == (int *)0x0) {
    return 0;
  }
  FUN_10521ba0((int *)local_120);
  pcStack_114 = "Scripting/TempReadCharsBuffer";
  piVar2 = param_1;
  do {
    FUN_1058cda0(local_120,(int)piVar2 + uVar7);
    iVar3 = (**(code **)(*piVar1 + 0x30))((int)local_120[0] + uVar7,piVar2);
    if (iVar3 == -1) {
      if ((local_120[0] != (LPCWSTR)0x0) && (local_120[0] != pWStack_110)) {
        FUN_10918e90((int)local_120[0]);
      }
      return 0xfffffffd;
    }
    uVar7 = uVar7 + iVar3;
    if (iVar3 < (int)piVar2) break;
    piVar6 = (int *)0x0;
    iVar3 = 0;
    if ((int)piVar2 < 1) break;
    do {
      iVar4 = FUN_109272e0(&stack0xfffffecb);
      iVar3 = iVar3 + 1;
      piVar6 = (int *)((int)piVar6 + iVar4);
    } while (iVar3 < (int)piVar2);
    piVar1 = unaff_ESI;
    piVar2 = piVar6;
  } while (piVar6 != (int *)0x0);
  local_128 = param_1;
  uVar5 = FUN_10927300(local_120[0],uVar7,8,pWStack_12c,(uint *)&local_128,0x10);
  piVar1 = local_128;
  if (uVar7 <= uVar5) {
    if ((local_120[0] != (LPCWSTR)0x0) && (local_120[0] != pWStack_110)) {
      FUN_10918e90((int)local_120[0]);
    }
    return (uint)piVar1;
  }
  if ((local_120[0] != (LPCWSTR)0x0) && (local_120[0] != pWStack_110)) {
    FUN_10918e90((int)local_120[0]);
  }
  return 0xfffffffc;
}

