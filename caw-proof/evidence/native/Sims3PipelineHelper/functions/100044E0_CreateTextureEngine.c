/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified CAW 1.22.10 Sims3PipelineHelper export CreateTextureEngine (ordinal 4).
   Sims3Pipeline.TextureUtils::RawCreateNativeTextureEngine P/Invoke token 0x060003ac returns an
   IUnknown pointer; the managed wrapper casts it to INativeTextureEngine and releases its local COM
   reference. This entry gates creation on FUN_10138bd0 and delegates object creation to
   FUN_10004120. The underlying texture operations are outside this entry.
   
   Original CAW 1.22.10 Sims3PipelineHelper.dll: CreateTextureEngine invokes constructor0x10004120,
   whose vtable0x103A4C18 identifies the original CanCompressWithDXT1 method at+0x3C.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

undefined4 * CreateTextureEngine(void)

{
  undefined4 *puVar1;
  
                    /* 0x44e0  4  CreateTextureEngine */
  puVar1 = (undefined4 *)FUN_10138bd0(0xc);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1 = CAW_TextureEngineConstruct(puVar1);
    return puVar1;
  }
  return (undefined4 *)0x0;
}

