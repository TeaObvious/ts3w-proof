/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_Create. Export ordinal(s): 2447. Entry
   VA: 0x10567c60. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F3F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int StreamHost_Create(void)

{
  void *this;
  int *this_00;
  int *piVar1;
  int iVar2;
  
                    /* 0x567c60  2447  StreamHost_Create */
  this = (void *)FUN_10918eb0(0x2c,"Scripting/MemoryStream",0);
  if (this != (void *)0x0) {
    this_00 = FUN_10914090(this,0,0,0);
    if (this_00 != (int *)0x0) {
      (**(code **)(*this_00 + 4))();
      FUN_10913a70(this_00,1,1.0);
      piVar1 = (int *)FUN_1055b120();
      iVar2 = (**(code **)(*piVar1 + 200))(this_00,0x60);
      if (iVar2 != 0) {
        (**(code **)(*this_00 + 4))();
      }
      (**(code **)(*this_00 + 8))();
      return iVar2;
    }
  }
  return 0;
}

