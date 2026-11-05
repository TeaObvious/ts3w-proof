/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_READER_00ec76f0. One caller-clean physical window pointer on stack, plain RET/full
   EAX pointer-or-zero. Enumerate window winprocs through virtual+110 starting at0 and then previous
   pointer; query each through virtual+C for interface03EC1BC1, return first nonnull result. Return0
   when enumeration ends. This is the startup Grow-interface selection context; no
   interpolation-kind, finite-value or duration validation occurs in this body. Interface
   implementation remains external. */

int __cdecl Window_FindStartupGrowInterface(int *param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)(**(code **)(*param_1 + 0x110))(0);
  while( true ) {
    if (piVar1 == (int *)0x0) {
      return 0;
    }
    iVar2 = (**(code **)(*piVar1 + 0xc))(0x3ec1bc1);
    if (iVar2 != 0) break;
    piVar1 = (int *)(**(code **)(*param_1 + 0x110))(piVar1);
  }
  return iVar2;
}

