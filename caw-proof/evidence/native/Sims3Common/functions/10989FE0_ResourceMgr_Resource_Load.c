/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_Resource_Load. Export ordinal(s):
   2040. Entry VA: 0x10989fe0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600089F. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl
ResourceMgr_Resource_Load
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int *piVar2;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x989fe0  2040  ResourceMgr_Resource_Load */
  local_4 = param_2;
  local_8 = param_1;
  local_10 = param_3;
  local_c = param_4;
  param_1 = 0;
  piVar2 = (int *)FUN_108e50d0();
  if (piVar2 != (int *)0x0) {
    cVar1 = (**(code **)(*piVar2 + 0xc))(&local_10,&param_1,0,0,0);
    if (cVar1 != '\0') {
      return 0;
    }
  }
  return 0;
}

