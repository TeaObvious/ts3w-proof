/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Verified CAW 1.22.10 Sims3PipelineHelper export CreateSpeedTreeConverter (ordinal 3).
   Sims3Pipeline.SpeedTreeUtils::RawCreateSpeedTreeConverter P/Invoke token 0x060000b3 returns an
   IUnknown pointer; the managed wrapper casts it to INativeSpeedTreeConverter and releases its
   local COM reference. This entry allocates an 8-byte object, installs a vtable, and initializes a
   reference count; later interface methods are outside this export. */

undefined4 * CreateSpeedTreeConverter(void)

{
  undefined4 *puVar1;
  
                    /* 0x1da0  3  CreateSpeedTreeConverter */
  puVar1 = (undefined4 *)FUN_1005c800(8,"SpeedTree/SpeedTreeConverter",0);
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = &PTR_FUN_103a4ad8;
    LOCK();
    puVar1[1] = 1;
    UNLOCK();
    return puVar1;
  }
  return (undefined4 *)0x0;
}
