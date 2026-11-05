/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_CreateNameFromKey. Export ordinal(s):
   2018. Entry VA: 0x1098a3d0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000899. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl
ResourceMgr_CreateNameFromKey
          (undefined2 *param_1,undefined2 *param_2,undefined2 *param_3,char *param_4)

{
  undefined4 uVar1;
  int unaff_retaddr;
  undefined2 *local_10;
  char *local_c;
  undefined2 *local_8;
  undefined2 *local_4;
  
                    /* 0x98a3d0  2018  ResourceMgr_CreateNameFromKey */
  local_8 = param_1;
  local_4 = param_2;
  local_10 = param_3;
  local_c = param_4;
  param_4 = "ResourceSystem/ResourceManagerWrap";
  param_1 = (undefined2 *)&_Dst_10ca8244;
  param_2 = (undefined2 *)&_Dst_10ca8244;
  param_3 = &DAT_10ca8246;
  FUN_108e4b30((int)&local_10,&param_1,(int *)0x0,(int *)0x0,(short *)0x0);
  uVar1 = Ordinal_2(param_1);
  if ((2 < (int)((int)param_2 - unaff_retaddr & 0xfffffffeU)) && (unaff_retaddr != 0)) {
    FUN_10918e90(unaff_retaddr);
  }
  return uVar1;
}

