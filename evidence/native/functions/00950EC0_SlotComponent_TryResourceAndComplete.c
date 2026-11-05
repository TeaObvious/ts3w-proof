/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. ECX component, no stackargs RET; AL ALWAYS1, corrected false
   fullDWORD result/fastcall artifacts. Acquires globalmanager4AFE80 then if componentDWORD38!=0
   invokes manager virtual0C with ECXmanager and SIX stackwords:
   keyaddress(component30),&wrapperOut,0,0,0,0; resultAL. Request occurs BEFORE oldpayload44
   release. Oldpayload44 is cleared then released regardlessrequestAL; category arrays/counts are
   not cleared here. If requestALnonzero, wrapperOut virtual0C(magic00ADAD1D) supplies payload
   passed950970(resetBYTE0). No guard for successfulrequest withnullwrapper/payload. Finally release
   nonnullwrapper. Missingkey/requestfailure stillAL1 and can leave prior arrays while payload44
   cleared; lifetime validity of stale data needs widercaller investigation. This is attempt
   completion, NOT resource presence/readiness or successful parse. */

bool __thiscall SlotComponent_TryResourceAndComplete(void *this)

{
  bool bVar1;
  int *piVar2;
  byte *resourcePayload;
  int *local_4;
  
  local_4 = this;
  piVar2 = (int *)FUN_004afe80();
  local_4 = (int *)0x0;
  if (*(int *)((int)this + 0x38) == 0) {
    bVar1 = false;
  }
  else {
    bVar1 = (**(code **)(*piVar2 + 0xc))(piVar2,(byte *)((int)this + 0x30),&local_4,0,0,0,0);
  }
  piVar2 = *(int **)((int)this + 0x44);
  if (piVar2 != (int *)0x0) {
    *(undefined4 *)((int)this + 0x44) = 0;
    (**(code **)(*piVar2 + 4))(piVar2);
  }
  if (bVar1 != false) {
    resourcePayload = (**(code **)(*local_4 + 0xc))(local_4,0xadad1d);
    SlotComponent_ProjectResource(this,resourcePayload,0);
  }
  if (local_4 != (int *)0x0) {
    (**(code **)(*local_4 + 4))(local_4);
  }
                    /* Only AL is set, always1 even skipped/failed resource request; upperEAX bits
                       are not defined result. */
  return true;
}

