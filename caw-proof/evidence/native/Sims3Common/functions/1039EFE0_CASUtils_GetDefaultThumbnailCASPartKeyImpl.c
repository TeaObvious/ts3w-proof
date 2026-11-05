/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_GetDefaultThumbnailCASPartKeyImpl.
   Export ordinal(s): 102. Entry VA: 0x1039efe0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600049B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl
CASUtils_GetDefaultThumbnailCASPartKeyImpl
          (undefined4 *param_1,uint param_2,uint param_3,uint param_4)

{
  void *this;
  uint uVar1;
  uint *puVar2;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x39efe0  102  CASUtils_GetDefaultThumbnailCASPartKeyImpl */
  puVar2 = &local_10;
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  this = (void *)FUN_103d9f50();
  uVar1 = FUN_103da640(this,param_2,param_3,param_4,puVar2);
  if ((char)uVar1 != '\0') {
    *param_1 = local_8;
    param_1[2] = local_10;
    param_1[3] = local_c;
    param_1[1] = local_4;
  }
  return param_1;
}

