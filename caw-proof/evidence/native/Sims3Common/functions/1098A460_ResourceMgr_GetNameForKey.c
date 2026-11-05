/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_GetNameForKey. Export ordinal(s):
   2028. Entry VA: 0x1098a460. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060008A2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: Selects the key winning database through manager
   virtual+44, calls108E4AC0, and allocates a BSTR from an initially non-null empty UTF-16 string.
   For the supported DBPF/no-directory path the managed result is empty string, so its retained
   GetFilenameForKey wrapper continues to associated filename lookup. Analyst-assigned helper names
   are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

undefined4 __cdecl ResourceMgr_GetNameForKey(undefined4 *param_1)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 unaff_ESI;
  char *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98a460  2028  ResourceMgr_GetNameForKey */
  local_8 = *param_1;
  local_4 = param_1[1];
  local_10 = param_1[2];
  local_c = param_1[3];
  local_14 = "ResourceSystem/ResourceManagerWrap";
  piVar1 = (int *)FUN_108e50d0();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x44))();
  CAW_ResourceDirectoryNameForKey(&local_14,&stack0xffffffdc,piVar1);
  uVar2 = Ordinal_2(unaff_ESI);
  if ((2 < (int)&_Dst_10ca8244 - (int)&local_10) && (&local_10 != (undefined4 *)0x0)) {
    FUN_10918e90((int)&local_10);
  }
  return uVar2;
}

