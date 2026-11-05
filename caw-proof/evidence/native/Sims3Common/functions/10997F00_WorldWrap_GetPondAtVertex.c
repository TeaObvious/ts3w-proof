/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified CAW 1.22.10 Sims3Common.dll export WorldWrap_GetPondAtVertex (PE ordinal 2645). Original
   CSHostWrap MethodDef 0x060004CA declares IntPtr return and arguments world handle, float vertX,
   float vertZ. Raw x86 loads the world pointer into ECX, passes the two floats and literal 1, calls
   0x10234CE0 at 0x10997F18, then immediately RET at 0x10997F1D without overwriting EAX. WARNING:
   Ghidra currently infers void; the managed declaration plus CALL/RET show the helper's EAX is
   forwarded as the native return. Pond lookup semantics, null behavior, and returned-object
   ownership require the callee and runtime evidence. */

void __cdecl WorldWrap_GetPondAtVertex(void *param_1,float param_2,float param_3)

{
                    /* 0x997f00  2645  WorldWrap_GetPondAtVertex */
  FUN_10234ce0(param_1,param_2,param_3,'\x01');
  return;
}

