/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* PC 1.67 dialog mouse-down handler; analyst name inferred from vtable/component/capture flow, not
   recovered symbol. ECX=this; RET 0x10 consumes four stack DWORDs; first two are loaded as binary32
   coordinates and forwarded to primary-vtable +0xa4. Exact remaining event types are not
   established. Store returned component to DWORD +0x25c before flag validation. Local two-stage
   switch tables at0051f938/0051f940 require flag1 for components0/1 and flag2 for2..9; failure
   stores -1. For admitted component read current pointer via service[this+0x30]+0x48 and convert
   using parent[this+0x2c]+4 virtual+0xc8; record component-dependent binary32 offsets
   +0x260/+0x264. Capture query +0x60(1); if not already this+4 call +0x64(1,this+4,0). Always call
   IWindow+0x90 and return AL=1. Indirect calls may have further effects. Switch tables remain data
   outside this function body. */

undefined4 __thiscall WinDialog_OnMouseDown(void *this,undefined4 param_1,undefined4 param_2)

{
  byte bVar1;
  int iVar2;
  float fVar3;
  undefined4 uVar4;
  float fStack_20;
  float fStack_1c;
  undefined4 local_14;
  undefined4 local_10;
  
  local_10 = param_2;
  local_14 = param_1;
  iVar2 = (**(code **)(*(int *)this + 0xa4))();
  *(int *)((int)this + 0x25c) = iVar2;
  if (iVar2 == -1) goto LAB_0051f91e;
  switch(iVar2) {
  case 0:
  case 1:
    bVar1 = *(byte *)((int)this + 600) & 1;
    break;
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
  case 7:
  case 8:
  case 9:
    bVar1 = *(byte *)((int)this + 600) & 2;
    break;
  default:
    goto switchD_0051f82f_default;
  }
  if (bVar1 == 0) {
    *(undefined4 *)((int)this + 0x25c) = 0xffffffff;
  }
switchD_0051f82f_default:
  if (*(int *)((int)this + 0x25c) == -1) goto LAB_0051f91e;
  iVar2 = *(int *)(*(int *)((int)this + 0x2c) + 4);
  (**(code **)(**(int **)((int)this + 0x30) + 0x48))(&fStack_20);
  (**(code **)(iVar2 + 200))(&local_14);
  switch(*(undefined4 *)((int)this + 0x25c)) {
  case 0:
  case 1:
  case 2:
  case 4:
  case 6:
    fVar3 = fStack_20 - *(float *)((int)this + 0x40);
    break;
  case 3:
  case 5:
  case 9:
    fVar3 = *(float *)((int)this + 0x48) - fStack_20;
    goto LAB_0051f8a6;
  case 7:
    fVar3 = *(float *)((int)this + 0x48) - fStack_20;
    break;
  case 8:
    fVar3 = fStack_20 - *(float *)((int)this + 0x40);
LAB_0051f8a6:
    *(float *)((int)this + 0x260) = fVar3;
    fVar3 = *(float *)((int)this + 0x4c) - fStack_1c;
    goto LAB_0051f8f3;
  default:
    goto switchD_0051f894_default;
  }
  *(float *)((int)this + 0x260) = fVar3;
  fVar3 = fStack_1c - *(float *)((int)this + 0x44);
LAB_0051f8f3:
  *(float *)((int)this + 0x264) = fVar3;
switchD_0051f894_default:
  fVar3 = (float)(**(code **)(**(int **)((int)this + 0x30) + 0x60))(1);
  if (fVar3 != (float)((int)this + 4)) {
    fStack_1c = 0.0;
    fStack_20 = (float)((int)this + 4);
    (**(code **)(**(int **)((int)this + 0x30) + 100))(1);
  }
LAB_0051f91e:
  uVar4 = (**(code **)(*(int *)((int)this + 4) + 0x90))();
  return CONCAT31((int3)((uint)uVar4 >> 8),1);
}

