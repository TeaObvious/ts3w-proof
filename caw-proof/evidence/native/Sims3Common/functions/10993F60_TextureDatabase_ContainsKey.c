/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TextureDatabase_ContainsKey. Export ordinal(s):
   2498. Entry VA: 0x10993f60. Original managed P/Invoke MethodDef(s): WorldBuilderCS:0x06000334.
   This is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl TextureDatabase_ContainsKey(int param_1)

{
  int iVar1;
  
                    /* 0x993f60  2498  TextureDatabase_ContainsKey */
  iVar1 = FUN_10521c90((void *)(param_1 + 0x20),(uint *)&stack0x00000008);
  return iVar1 != 0;
}

