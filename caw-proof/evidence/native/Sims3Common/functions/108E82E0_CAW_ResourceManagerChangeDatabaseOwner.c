/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Removal finds the database in the owned ordered vector,
   calls database vtable+48 with(remove0, manager, internal1), captures its AL result, checks
   database vtable+10 reference count, calls database+08 Shutdown only when count==1, then erases
   the owned vector entry and releases its reference. Original MOV [ESP+13],AL at108E842D is
   essential: current decompiler C omits that remove-callback return assignment and wrongly appears
   to retain local_d=0. Original instructions show successful removal can returntrue. Other live
   database references avoid the last-owner shutdown. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined1 __thiscall
CAW_ResourceManagerChangeDatabaseOwner(void *this,char param_1,int *param_2,int param_3)

{
  LPCRITICAL_SECTION this_00;
  int *piVar1;
  char cVar2;
  int *piVar3;
  int iVar4;
  undefined1 local_d;
  int *piStack_8;
  int iStack_4;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x48);
  FUN_109166c0(this_00,(uint *)&DAT_10b87e8c);
  local_d = 0;
  if (param_1 == '\0') {
    for (piVar3 = *(int **)((int)this + 0x30); piVar3 != *(int **)((int)this + 0x34);
        piVar3 = piVar3 + 2) {
      piVar1 = (int *)*piVar3;
      if (piVar1 == param_2) {
        FUN_10916780(this_00);
        (**(code **)(*param_2 + 0x48))(0,this,1);
        iVar4 = (**(code **)(*piVar1 + 0x10))();
        if (iVar4 == 1) {
          (**(code **)(*piVar1 + 8))();
        }
        FUN_109166c0(this_00,(uint *)&DAT_10b87e8c);
        if (piVar3 + 2 < *(int **)((int)this + 0x34)) {
          FUN_108e6070(piVar3 + 2,*(int **)((int)this + 0x34),piVar3);
        }
        *(int *)((int)this + 0x34) = *(int *)((int)this + 0x34) + -8;
        piVar3 = (int *)**(int **)((int)this + 0x34);
        goto joined_r0x108e8478;
      }
    }
  }
  else {
    cVar2 = (**(code **)(*(int *)this + 0x38))(param_2);
    if (cVar2 == '\0') {
      if (param_2 != (int *)0x0) {
        (**(code **)param_2[1])();
      }
      piStack_8 = param_2;
      if (param_2 != (int *)0x0) {
        (**(code **)param_2[1])();
      }
      iStack_4 = param_3;
      if (param_2 != (int *)0x0) {
        (**(code **)(param_2[1] + 4))();
      }
      for (piVar3 = *(int **)((int)this + 0x30); piVar3 != *(int **)((int)this + 0x34);
          piVar3 = piVar3 + 2) {
        if (piVar3[1] < param_3) {
          FUN_108e7b90((void *)((int)this + 0x30),piVar3,(int *)&piStack_8);
          goto LAB_108e83af;
        }
      }
      piVar3 = *(int **)((int)this + 0x34);
      if (piVar3 < *(int **)((int)this + 0x38)) {
        *(int **)((int)this + 0x34) = piVar3 + 2;
        if (piVar3 != (int *)0x0) {
          *piVar3 = (int)param_2;
          if (param_2 != (int *)0x0) {
            (**(code **)param_2[1])();
          }
          piVar3[1] = param_3;
        }
      }
      else {
        FUN_108e7530((void *)((int)this + 0x30),piVar3,(int *)&piStack_8);
      }
LAB_108e83af:
      FUN_10916780(this_00);
      (**(code **)(*param_2 + 4))();
      local_d = (**(code **)(*param_2 + 0x48))(1,this,1);
      FUN_109166c0(this_00,(uint *)&DAT_10b87e8c);
      piVar3 = piStack_8;
joined_r0x108e8478:
      if (piVar3 != (int *)0x0) {
        (**(code **)(piVar3[1] + 4))();
      }
    }
  }
  FUN_10916780(this_00);
  return local_d;
}

