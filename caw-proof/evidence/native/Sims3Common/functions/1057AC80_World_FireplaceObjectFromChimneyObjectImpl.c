/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_FireplaceObjectFromChimneyObjectImpl.
   Export ordinal(s): 1313. Entry VA: 0x1057ac80. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000BCE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl
World_FireplaceObjectFromChimneyObjectImpl(int param_1,int param_2,int param_3,int param_4)

{
  int *piVar1;
  
                    /* 0x57ac80  1313  World_FireplaceObjectFromChimneyObjectImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if ((piVar1 != (int *)0x0) && ((void *)piVar1[0xb3] != (void *)0x0)) {
      FUN_10036440((void *)piVar1[0xb3],param_3,param_4);
    }
  }
  return 0;
}

