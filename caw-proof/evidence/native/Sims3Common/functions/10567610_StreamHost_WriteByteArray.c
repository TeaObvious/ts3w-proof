/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_WriteByteArray. Export ordinal(s):
   2463. Entry VA: 0x10567610. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F32. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl StreamHost_WriteByteArray(uint param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  int *piVar5;
  int *piVar6;
  int unaff_EDI;
  int local_4;
  
  iVar3 = param_4;
  iVar2 = param_3;
                    /* 0x567610  2463  StreamHost_WriteByteArray */
  iVar1 = param_2;
  if (param_2 == 0) {
    return -6;
  }
  if ((param_3 < 0) || (param_4 < 1)) {
    return -7;
  }
  piVar5 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    piVar5 = (int *)FUN_10567270(param_1);
  }
  if (piVar5 == (int *)0x0) {
    return -2;
  }
  piVar6 = (int *)FUN_1055b120();
  (**(code **)(*piVar6 + 0x70))(iVar1,&param_2,&local_4);
  if (local_4 == 0) {
    return -6;
  }
  if ((iVar2 < unaff_EDI) && (iVar3 <= unaff_EDI - iVar2)) {
    cVar4 = (**(code **)(*piVar5 + 0x38))(local_4 + iVar2,iVar3);
    return (-(uint)(cVar4 != '\0') & 3) - 3;
  }
  return -7;
}

