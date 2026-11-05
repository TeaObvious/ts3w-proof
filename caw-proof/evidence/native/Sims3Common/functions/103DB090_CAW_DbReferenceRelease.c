/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: DBPF refcount-interface vtable10B877F4 slot+04 points here.
   Atomically decrements count at interface+4; when it reacheszero, resets the sentinel and invokes
   parent object deleting destructor with flag1 through parent vtable+0 (interface pointer minus4).
   Returns decremented count. Recovered full original extent103DB090..103DB0B7,40bytes, without byte
   modification. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

int __fastcall CAW_DbReferenceRelease(int param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)(param_1 + 4);
  LOCK();
  iVar2 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  if (iVar2 + -1 == 0) {
    LOCK();
    *piVar1 = 1;
    UNLOCK();
    if ((undefined4 *)(param_1 + -4) != (undefined4 *)0x0) {
      (*(code *)**(undefined4 **)(param_1 + -4))(1);
    }
  }
  return iVar2 + -1;
}

