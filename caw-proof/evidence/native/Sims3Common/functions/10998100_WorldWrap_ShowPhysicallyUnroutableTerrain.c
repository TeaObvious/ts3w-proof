/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_ShowPhysicallyUnroutableTerrain. Export
   ordinal(s): 2716. Entry VA: 0x10998100. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004F1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldWrap_ShowPhysicallyUnroutableTerrain(int param_1,byte param_2)

{
  void *this;
  
                    /* 0x998100  2716  WorldWrap_ShowPhysicallyUnroutableTerrain */
  this = (void *)FUN_10409fe0(param_1);
  if (this != (void *)0x0) {
    FUN_10255b10(this,param_2);
  }
  return;
}

