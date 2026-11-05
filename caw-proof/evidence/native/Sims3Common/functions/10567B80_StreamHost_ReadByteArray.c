/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_ReadByteArray. Export ordinal(s):
   2452. Entry VA: 0x10567b80. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F3D. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl StreamHost_ReadByteArray(uint param_1,int param_2)

{
  uint uVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int unaff_ESI;
  int unaff_retaddr;
  uint *puVar5;
  undefined4 local_4;
  
                    /* 0x567b80  2452  StreamHost_ReadByteArray */
  uVar1 = param_1;
  piVar2 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar2 = (int *)FUN_1055b120();
      piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(uVar1);
      if (piVar2 != (int *)0x0) {
        DAT_10c7b0a4 = uVar1;
        DAT_10c7b0a8 = piVar2;
      }
    }
    else {
      piVar2 = (int *)0x0;
    }
  }
  iVar4 = param_2;
  if (piVar2 == (int *)0x0) {
    return -2;
  }
  if (param_2 == 0) {
    return -6;
  }
  piVar3 = (int *)FUN_1055b120();
  puVar5 = &param_1;
  param_1 = 0;
  local_4 = 0;
  (**(code **)(*piVar3 + 0x70))(iVar4,&local_4,puVar5);
  if ((((unaff_retaddr < 0) || ((int)param_1 < 0)) || (unaff_ESI < unaff_retaddr)) ||
     (unaff_ESI - unaff_retaddr < (int)param_1)) {
    iVar4 = -7;
  }
  else {
    if (param_1 == 0) {
      return 0;
    }
    iVar4 = (**(code **)(*piVar2 + 0x30))((int)puVar5 + unaff_retaddr,param_1);
    if (iVar4 == -1) {
      return -3;
    }
  }
  return iVar4;
}

