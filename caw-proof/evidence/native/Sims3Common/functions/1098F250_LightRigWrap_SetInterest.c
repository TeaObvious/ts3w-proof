/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LightRigWrap_SetInterest. Export ordinal(s):
   1876. Entry VA: 0x1098f250. Original managed P/Invoke MethodDef(s): none located in the shipped
   managed assemblies. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl LightRigWrap_SetInterest(void *param_1,void *param_2,undefined4 *param_3)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 local_70 [8];
  undefined4 local_50 [19];
  
                    /* 0x98f250  1876  LightRigWrap_SetInterest */
  FUN_10980160(local_50,param_3);
  puVar2 = local_50;
  puVar1 = (undefined4 *)FUN_10986b60(param_2,local_70);
  FUN_104b0d10(param_1,puVar1,puVar2);
  return;
}

