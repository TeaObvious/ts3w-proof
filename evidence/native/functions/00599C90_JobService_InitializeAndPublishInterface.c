/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: The enclosing service has JobManager interface at+18.
   Virtual+4 initialization must return nonzero AL before publication; then virtual+14 is called
   with masks80000001/80000005,0,FFFFFFFF and its result stored+ C8. Publishes owner+18 at011cf2cc
   and owner+10 at011cf2c8. Original UTF16 JobManager/Timeslicing registrations corroborate the
   service identity. Indirect initialization/worker-creation semantics beyond these arguments are
   not fully recovered. */

bool __thiscall JobService_InitializeAndPublishInterface(void *this)

{
  char cVar1;
  undefined4 uVar2;
  int *piVar3;
  
  cVar1 = (**(code **)(*(int *)((int)this + 0x18) + 4))(1);
  if (cVar1 == '\0') {
    return false;
  }
  uVar2 = 0x80000001;
  if (*(char *)((int)this + 0xd0) != '\0') {
    uVar2 = 0x80000005;
  }
  uVar2 = (**(code **)(*(int *)((int)this + 0x18) + 0x14))(uVar2,0,0xffffffff);
  *(undefined4 *)((int)this + 200) = uVar2;
  DAT_011cf2cc = (int *)((int)this + 0x18);
  piVar3 = (int *)FUN_005a08d0();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x18))(L"Timeslicing",10000);
  }
  piVar3 = (int *)FUN_005a08d0();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x38))((int)this + 0xcc,L"JobManager",1,100,1);
  }
  piVar3 = (int *)FUN_005a08d0();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x18))(0,0x7fffffff);
  }
  DAT_011cf2c8 = (int)this + 0x10;
  return true;
}

