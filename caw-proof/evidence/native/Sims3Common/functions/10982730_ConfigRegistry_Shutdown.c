/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ConfigRegistry_Shutdown. Export ordinal(s): 1772.
   Entry VA: 0x10982730. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060005C9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void ConfigRegistry_Shutdown(void)

{
  int iVar1;
  
  iVar1 = DAT_10cb7f30;
                    /* 0x982730  1772  ConfigRegistry_Shutdown */
  if (DAT_10cb7f34 != '\0') {
    DAT_10cb7f34 = '\0';
    if (DAT_10cb7f30 != 0) {
      FUN_1038b920(DAT_10cb7f30);
      FUN_10918e90(iVar1);
    }
    DAT_10cb7f30 = 0;
    FUN_10389510(0);
  }
  return;
}

