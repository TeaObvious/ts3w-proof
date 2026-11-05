/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TextureBuilderWrap_IsLoaded. Export ordinal(s):
   2486. Entry VA: 0x10993840. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000BA2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl TextureBuilderWrap_IsLoaded(void *param_1)

{
  char cVar1;
  
                    /* 0x993840  2486  TextureBuilderWrap_IsLoaded */
  cVar1 = FUN_103f1d80((int)param_1);
  if (cVar1 != '\0') {
    return 1;
  }
  FUN_103f2660(param_1,0);
  return 0;
}

