/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_FinishRoutableSurfacePaint. Export
   ordinal(s): 2625. Entry VA: 0x109980c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004EC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void WorldWrap_FinishRoutableSurfacePaint(void)

{
  void *this;
  
  if (((DAT_10c700c4 != 0) && (*(int *)(DAT_10c700c4 + 0x54) != 0)) &&
     (this = (void *)FUN_106b6a50(*(int *)(DAT_10c700c4 + 0x54)), this != (void *)0x0)) {
    FUN_10203260(this);
    FUN_101f38e0(this,'\0');
  }
  return;
}

