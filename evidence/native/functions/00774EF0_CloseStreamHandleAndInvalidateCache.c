/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.StreamHost::StreamHost_Close at
   0x007759d0, bytes e91bf5ffff. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3.
   
   PC 1.67 metadata limit: the existing Ghidra body owns only address0x00774EF0, one byte. The
   original canonical [0x00774EF0,0x00774F50)96-byte window is bounded evidence, NOT a complete
   defined body; no body/instruction/prototype repair is made. Pristine bounded instructions compare
   handle with cached key011D7838, clear that key and pointer011D783C on equality, then admit
   high-byte0x60 to interface virtual+0xD8. A nonnull returned stream tail-dispatches virtual+0x8
   at00774F3D. This is visible cache/dispatch order, not proof of concrete reference-count, removal,
   exception or synchronization effects. Registered007759D0's pristine E9 targets this entry.
   
   Analyst-assigned close-handle operation, original PC1.67 static. Qualified original
   path774EF0..774F40 is81bytes/25instructions; current DB ownership remains the singleton with zero
   Listing. Compare the UInt32 input with cache key11D7838 and clear matching key then
   pointer11D783C BEFORE high-byte60 admission. A valid-kind path dereferences the769390 interface
   and calls its+D8 registration release; a nonnull returned object is tail-dispatched through
   virtual+8 with the caller frame intact. Existing concrete host registry tables link+D8 to76A7A0,
   whose valid releases return the saved pointer even if a registration row survives; registration
   count and object reference count are distinct. For constructor4DF460/vtableFB6C00-created
   streams, virtual+8 is455B60: signed count+C>1 decrements, otherwise virtual0 destroys with flag1.
   No new all-object lifetime or synchronization guarantee follows. Registered7759D0 is the verified
   physical5byte forwarding caller. Plain RET/indirect tail contradict stored stdcall inference; no
   ABI/body repair is included. */

void CloseStreamHandleAndInvalidateCache(uint param_1)

{
  int *piVar1;
  
  if (param_1 == DAT_011d7838) {
    DAT_011d7838 = 0;
    DAT_011d783c = 0;
  }
  if ((param_1 & 0xff000000) == 0x60000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x00774f3d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 8))();
      return;
    }
  }
  return;
}

