/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete18-instruction constructor helper: null supplied storage returnsnull; otherwise
   store supplied owner pointer at+4, install component vtable01044EDC, zero driver vector+8/+C/+10,
   place mDrivers label+14, and call7FCF30(global manager11D9D40,this) before returning this. The
   helper is cdecl/two explicit supplied words and plain RET. No retained owner-object reference or
   script proxy publication is demonstrated by this constructor alone; manager registration helper
   internals remain separately scoped. */

undefined4 * __cdecl SACS_ComponentConstruct_94D4F0(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)0x0;
  if (param_1 != (undefined4 *)0x0) {
    param_1[1] = param_2;
    *param_1 = &PTR_FUN_01044edc;
    param_1[2] = 0;
    param_1[3] = 0;
    param_1[4] = 0;
    param_1[5] = "Objects/SacsComponent/mDrivers";
    FUN_007fcf30(DAT_011d9d40,param_1);
    puVar1 = param_1;
  }
  return puVar1;
}

