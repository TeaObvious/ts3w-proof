/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CameraWrap_Create. Export ordinal(s): 1743. Entry
   VA: 0x1098f530. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000850. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void CameraWrap_Create(void)

{
  undefined4 *puVar1;
  
                    /* 0x98f530  1743  CameraWrap_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x730,"CameraWrap_Create",0);
  if (puVar1 == (undefined4 *)0x0) {
    puVar1 = (undefined4 *)0x0;
  }
  else {
    puVar1 = FUN_10754250(puVar1);
  }
  LOCK();
  puVar1[1] = puVar1[1] + 1;
  UNLOCK();
  return;
}

