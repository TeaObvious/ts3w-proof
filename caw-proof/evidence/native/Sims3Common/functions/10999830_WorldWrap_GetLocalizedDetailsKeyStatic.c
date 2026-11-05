/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetLocalizedDetailsKeyStatic. Export
   ordinal(s): 2636. Entry VA: 0x10999830. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000518. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_GetLocalizedDetailsKeyStatic(LPCWSTR param_1)

{
  undefined4 uVar1;
  undefined4 local_a0 [10];
  uint local_78;
  uint local_74;
  
                    /* 0x999830  2636  WorldWrap_GetLocalizedDetailsKeyStatic */
  FUN_1039c030(local_a0);
  uVar1 = FUN_10998290(param_1,local_a0,0);
  if ((char)uVar1 == '\0') {
    FUN_1039c0f0(local_a0);
    return 0;
  }
  uVar1 = Ordinal_2(-(uint)(local_78 != local_74) & local_78);
  FUN_1039c0f0((undefined4 *)&stack0xffffff5c);
  return uVar1;
}

