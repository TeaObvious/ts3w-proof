/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_CreateKeyFromName. Export ordinal(s):
   2017. Entry VA: 0x1098a040. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000898. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: ResourceMgr_CreateKeyFromName forwards to original
   parser0x108E4830. Group syntax, extension stripping, numeric recognition and type0 inference are
   defined by that parser, not by a whole-string hash. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __cdecl
ResourceMgr_CreateKeyFromName
          (undefined4 *param_1,wchar_t *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98a040  2017  ResourceMgr_CreateKeyFromName */
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  CAW_ResourceKeyParseName((longlong *)&local_10,param_2,param_3,param_4,(int *)0x0,0);
  *param_1 = local_8;
  param_1[1] = local_4;
  param_1[2] = local_10;
  param_1[3] = local_c;
  return;
}

