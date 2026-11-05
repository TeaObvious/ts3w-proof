/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3PipelineHelper.dll: Installs texture-engine vtable0x103A4C18. Its
   slot+0x3C contains0x10003D60, establishing the CanCompressWithDXT1 interface method identity.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

undefined4 * __fastcall CAW_TextureEngineConstruct(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_103a4c18;
  param_1[1] = 0;
  LOCK();
  param_1[2] = 1;
  UNLOCK();
  FUN_10061e80();
  FUN_10061e60();
  if (DAT_104c0f80 == '\0') {
    DAT_104c0f80 = '\x01';
    FUN_1005edd0((undefined4 *)&DAT_10478044);
  }
  FUN_10061e40();
  FUN_1007ee60();
  return param_1;
}

