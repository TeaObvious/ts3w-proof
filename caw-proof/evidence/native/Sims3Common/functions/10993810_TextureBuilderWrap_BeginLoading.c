/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TextureBuilderWrap_BeginLoading. Export
   ordinal(s): 2476. Entry VA: 0x10993810. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000BA1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl TextureBuilderWrap_BeginLoading(void *param_1)

{
  char cVar1;
  
                    /* 0x993810  2476  TextureBuilderWrap_BeginLoading */
  cVar1 = FUN_103f1d80((int)param_1);
  if (cVar1 == '\0') {
    cVar1 = FUN_103f1d90((int)param_1);
    if (cVar1 == '\0') {
      FUN_103f62f0(param_1,'\x01',1,1);
    }
  }
  return;
}

