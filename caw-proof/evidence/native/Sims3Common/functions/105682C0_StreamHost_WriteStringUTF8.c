/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_WriteStringUTF8. Export ordinal(s):
   2471. Entry VA: 0x105682c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F35. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl StreamHost_WriteStringUTF8(uint param_1,uint param_2)

{
  byte bVar1;
  uint uVar2;
  char cVar3;
  int *piVar4;
  int *piVar5;
  char *pcVar6;
  LPCWSTR pWVar7;
  byte *pbVar8;
  uint uVar9;
  int unaff_EBP;
  int iStack_18;
  int iStack_14;
  
                    /* 0x5682c0  2471  StreamHost_WriteStringUTF8 */
  if (param_2 == 0) {
    return 0xfffffffa;
  }
  piVar4 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    piVar4 = (int *)FUN_10567270(param_1);
  }
  if (piVar4 == (int *)0x0) {
    return 0xfffffffe;
  }
  piVar5 = (int *)FUN_1055b120();
  pcVar6 = (char *)(**(code **)(*piVar5 + 0x5c))(param_2,0);
  pWVar7 = (LPCWSTR)(**(code **)(*piVar5 + 0x58))();
  FUN_10926f20(&iStack_18,pWVar7,param_2,pcVar6);
  uVar9 = iStack_14 - iStack_18;
  bVar1 = (byte)uVar9;
  pbVar8 = &stack0xffffffe0;
  uVar2 = uVar9;
  while( true ) {
    uVar2 = uVar2 >> 7;
    if (uVar2 == 0) break;
    *pbVar8 = (bVar1 & 0x7f) + 0x80;
    bVar1 = (byte)uVar2;
    pbVar8 = pbVar8 + 1;
  }
  *pbVar8 = bVar1 & 0x7f;
  cVar3 = (**(code **)(*piVar4 + 0x38))(&stack0xffffffe0,pbVar8 + (1 - (int)&stack0xffffffe0));
  if ((cVar3 != '\0') && (cVar3 = (**(code **)(*piVar4 + 0x38))(unaff_EBP,uVar9), cVar3 != '\0')) {
    if ((1 < iStack_18 - unaff_EBP) && (unaff_EBP != 0)) {
      FUN_10918e90(unaff_EBP);
    }
    return 0;
  }
  if ((1 < iStack_18 - unaff_EBP) && (unaff_EBP != 0)) {
    FUN_10918e90(unaff_EBP);
  }
  return 0xfffffffd;
}

