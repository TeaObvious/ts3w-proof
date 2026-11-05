/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_ExportMaskLayerMap. Export ordinal(s):
   2621. Entry VA: 0x10998f70. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004DD. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

byte __cdecl WorldWrap_ExportMaskLayerMap(int param_1,wchar_t *param_2)

{
  byte bVar1;
  void *this;
  
                    /* 0x998f70  2621  WorldWrap_ExportMaskLayerMap */
  if (*(int *)(param_1 + 0x54) != 0) {
    this = (void *)FUN_106b6a50(*(int *)(param_1 + 0x54));
    if (this != (void *)0x0) {
      bVar1 = FUN_101f25d0(this,1,param_2,'\x01');
      return bVar1;
    }
  }
  return 0;
}

