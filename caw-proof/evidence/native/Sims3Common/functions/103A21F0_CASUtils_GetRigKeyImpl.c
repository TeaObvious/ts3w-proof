/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_GetRigKeyImpl. Export ordinal(s): 105.
   Entry VA: 0x103a21f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000474. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_GetRigKeyImpl(undefined4 *param_1,uint param_2)

{
  void *this;
  undefined4 *puVar1;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x3a21f0  105  CASUtils_GetRigKeyImpl */
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  puVar1 = &local_10;
  this = (void *)FUN_103e5fe0();
  FUN_103e7300(this,param_2,puVar1);
  *param_1 = local_8;
  param_1[1] = local_4;
  param_1[2] = local_10;
  param_1[3] = local_c;
  return;
}

