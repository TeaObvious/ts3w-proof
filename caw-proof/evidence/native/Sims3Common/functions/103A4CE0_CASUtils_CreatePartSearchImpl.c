/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_CreatePartSearchImpl. Export ordinal(s):
   78. Entry VA: 0x103a4ce0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060003D3. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void CASUtils_CreatePartSearchImpl(void)

{
  int *piVar1;
  void *this;
  int *piVar2;
  
  piVar1 = (int *)FUN_1055b120();
  this = (void *)FUN_10918eb0(0x18,"CAS/CASHost/sCreatePartSearch",0);
  if (this != (void *)0x0) {
    piVar2 = FUN_103a4050(this,0x34aeecb);
    (**(code **)(*piVar1 + 200))(piVar2,0x35);
    return;
  }
  (**(code **)(*piVar1 + 200))(0,0x35);
  return;
}

