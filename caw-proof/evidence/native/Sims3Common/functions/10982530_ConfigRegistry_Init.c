/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ConfigRegistry_Init. Export ordinal(s): 1767.
   Entry VA: 0x10982530. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060005C8. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void ConfigRegistry_Init(void)

{
  int iVar1;
  void *this;
  
                    /* 0x982530  1767  ConfigRegistry_Init */
  if (DAT_10cb7f35 == '\0') {
    iVar1 = FUN_10389500();
    if (iVar1 != 0) {
      DAT_10cb7f34 = 0;
      DAT_10cb7f30 = (int *)iVar1;
      DAT_10cb7f35 = 1;
      return;
    }
    DAT_10cb7f34 = 1;
    this = (void *)FUN_10918eb0(0x3c,"ConfigRegistryWrap",0);
    if (this == (void *)0x0) {
      DAT_10cb7f30 = (int *)0x0;
    }
    else {
      DAT_10cb7f30 = FUN_1038b9b0(this,0);
    }
    FUN_10389510(DAT_10cb7f30);
    DAT_10cb7f35 = '\x01';
  }
  return;
}

