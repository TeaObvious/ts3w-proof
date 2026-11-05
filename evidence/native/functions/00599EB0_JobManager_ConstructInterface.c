/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Installs vtable00fda80c, initializes critical-section
   wrapper at+8 and intrusive lists including free jobs+48, unsubmitted+50, dependency-wait+58,
   ready+60, executing+68, finished+78, retired+80, workers+88 and spare WaitNodes+9c. Returns same
   ECX pointer. No original bytes changed. */

void * __thiscall JobManager_ConstructInterface(void *this)

{
  int iVar1;
  int iVar2;
  
  *(undefined ***)this = &PTR_FUN_00fda80c;
  FUN_004e1cf0((void *)((int)this + 8),(char *)0x0,'\x01');
  iVar1 = (int)this + 0x38;
  *(int *)((int)this + 0x3c) = iVar1;
  *(int *)iVar1 = iVar1;
  iVar1 = (int)this + 0x40;
  *(int *)((int)this + 0x44) = iVar1;
  *(int *)iVar1 = iVar1;
  iVar1 = (int)this + 0x48;
  iVar2 = (int)this + 0x50;
  *(int *)((int)this + 0x54) = iVar2;
  *(int *)iVar2 = iVar2;
  iVar2 = (int)this + 0x58;
  *(int *)((int)this + 0x5c) = iVar2;
  *(int *)iVar2 = iVar2;
  iVar2 = (int)this + 0x60;
  *(int *)((int)this + 100) = iVar2;
  *(int *)iVar2 = iVar2;
  iVar2 = (int)this + 0x68;
  *(int *)((int)this + 0x6c) = iVar2;
  *(int *)iVar2 = iVar2;
  iVar2 = (int)this + 0x70;
  *(int *)((int)this + 0x74) = iVar2;
  *(int *)iVar2 = iVar2;
  *(int *)((int)this + 0x4c) = iVar1;
  *(int *)iVar1 = iVar1;
  iVar1 = (int)this + 0x78;
  *(int *)((int)this + 0x7c) = iVar1;
  *(int *)iVar1 = iVar1;
  iVar1 = (int)this + 0x80;
  *(int *)((int)this + 0x84) = iVar1;
  *(int *)iVar1 = iVar1;
  iVar1 = (int)this + 0x88;
  *(int *)((int)this + 0x8c) = iVar1;
  *(int *)iVar1 = iVar1;
  *(undefined4 *)((int)this + 0x90) = 0;
  iVar1 = (int)this + 0x94;
  *(int *)((int)this + 0x98) = iVar1;
  *(int *)iVar1 = iVar1;
  iVar1 = (int)this + 0x9c;
  *(int *)((int)this + 0xa0) = iVar1;
  *(int *)iVar1 = iVar1;
  *(undefined4 *)((int)this + 0xa8) = 0;
  *(undefined4 *)((int)this + 0xac) = 0;
  return this;
}

