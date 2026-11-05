/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156820 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_GetSkinColorDominantImpl [assembly=ScriptCore token=0x06000391;
   key: Sims3.SimIFace.ResourceKey; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 __cdecl
ScriptCore.CASUtils::CASUtils_GetSkinColorDominantImpl
          (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  char cVar2;
  int *piVar3;
  int *piVar4;
  undefined1 local_14 [4];
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  piVar3 = (int *)FUN_004afe80();
  local_10 = param_3;
  local_8 = param_1;
  local_c = param_4;
  local_4 = param_2;
  piVar4 = &local_10;
  cVar2 = (**(code **)(*piVar3 + 0xc))(piVar4,local_14,0,0,0,0);
  if (cVar2 != '\0') {
    if ((piVar4 != (int *)0x0) &&
       (piVar3 = (int *)(**(code **)(*piVar4 + 0xc))(0x3584920), piVar3 != (int *)0x0)) {
      iVar1 = piVar3[0x12];
      (**(code **)(*piVar3 + 4))();
      return (char)iVar1;
    }
    (**(code **)(*piVar4 + 4))();
  }
  return 0;
}

