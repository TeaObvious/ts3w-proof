/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_AddRef. Export ordinal(s): 2105. Entry
   VA: 0x1098c980. Original managed P/Invoke MethodDef(s): none located in the shipped managed
   assemblies. This is an export/declaration annotation only; ABI, behavior and runtime execution
   require the original instructions and caller evidence. */

void __cdecl SacsWrap_AddRef(undefined4 *param_1)

{
                    /* 0x98c980  2105  SacsWrap_AddRef */
  if ((DAT_10c7d5a0 != 0) && (param_1 != (undefined4 *)0x0)) {
                    /* WARNING: Could not recover jumptable at 0x1098c995. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)*param_1)();
    return;
  }
  return;
}

