/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Manifest_Create. Export ordinal(s): 1933. Entry
   VA: 0x10986990. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060007EC. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * Manifest_Create(void)

{
  undefined4 *puVar1;
  
                    /* 0x986990  1933  Manifest_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x360,"DownloadContent/Manifest",0);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1 = FUN_107a2310(puVar1);
    return puVar1;
  }
  return (undefined4 *)0x0;
}

