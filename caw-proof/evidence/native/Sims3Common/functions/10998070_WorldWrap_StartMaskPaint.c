/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_StartMaskPaint. Export ordinal(s):
   2720. Entry VA: 0x10998070. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004E7. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void WorldWrap_StartMaskPaint(void)

{
  void *this;
  
  if (((DAT_10c700c4 != 0) && (*(int *)(DAT_10c700c4 + 0x54) != 0)) &&
     (this = (void *)FUN_106b6a50(*(int *)(DAT_10c700c4 + 0x54)), this != (void *)0x0)) {
    FUN_10203260(this);
    FUN_101f38b0(this,'\x01');
  }
  return;
}

