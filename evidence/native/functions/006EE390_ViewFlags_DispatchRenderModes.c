/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67, full209B/62 instructions checked against pristine PE. ECX receiver; +300 null skips all
   dispatch. +534 nonzero dispatches mode2; otherwise the below-height predicate and further
   flag/provider gates control modes0/1/4. +271 can append mode3. Provider meaning and mutual
   exclusivity of all modes are not established. Plain RET; no ABI/type change. */

void __fastcall ViewFlags_DispatchRenderModes(void *param_1)

{
  bool bVar1;
  char cVar2;
  undefined4 uVar3;
  char cVar4;
  bool bVar5;
  
  if (*(int *)((int)param_1 + 0x300) == 0) {
    return;
  }
  if (*(int *)((int)param_1 + 0x534) == 0) {
    uVar3 = CameraFlags_TestBelowHeightThreshold((int)param_1);
    cVar4 = (char)uVar3;
    bVar5 = cVar4 == '\0';
    bVar1 = false;
    if ((((DAT_010f4ccc < *(float *)((int)param_1 + 0x2ac)) &&
         (uVar3 = FUN_006ac760(*(int *)((int)param_1 + 0x1c0)), bVar1 = false, (char)uVar3 == '\0'))
        && (cVar4 == '\0')) && (bVar1 = true, *(char *)((int)param_1 + 0x266) == '\0')) {
      bVar1 = true;
      bVar5 = false;
    }
    cVar2 = FUN_0095fe30(*(int *)((int)param_1 + 0x24));
    if ((cVar2 != '\0') ||
       ((*(char *)((int)param_1 + 0x515) != '\0' && (*(char *)((int)param_1 + 0x270) == '\0')))) {
      bVar1 = false;
      cVar4 = '\0';
    }
    if (bVar5) {
      RenderMode_BindControlsAndDraw(param_1,0);
    }
    if (bVar1) {
      RenderMode_BindControlsAndDraw(param_1,1);
    }
    if (cVar4 == '\0') goto LAB_006ee44c;
    uVar3 = 4;
  }
  else {
    uVar3 = 2;
  }
  RenderMode_BindControlsAndDraw(param_1,uVar3);
LAB_006ee44c:
  if (*(char *)((int)param_1 + 0x271) != '\0') {
    RenderMode_BindControlsAndDraw(param_1,3);
  }
  return;
}

