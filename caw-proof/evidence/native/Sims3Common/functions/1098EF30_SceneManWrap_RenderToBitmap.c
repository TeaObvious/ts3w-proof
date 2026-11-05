/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_RenderToBitmap. Export ordinal(s):
   2271. Entry VA: 0x1098ef30. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600015B. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
SceneManWrap_RenderToBitmap(void *param_1,void *param_2,undefined4 param_3,int param_4,int param_5)

{
  char cVar1;
  void *this;
  void *this_00;
  void *this_01;
  undefined4 *puVar2;
  undefined4 uVar3;
  int *piVar4;
  int *this_02;
  int iVar5;
  int *this_03;
  int *piStack_58;
  undefined1 auStack_50 [4];
  void *pvStack_4c;
  int local_48 [3];
  int local_3c;
  int local_38 [4];
  undefined4 auStack_28 [9];
  int *piStack_4;
  
                    /* 0x98ef30  2271  SceneManWrap_RenderToBitmap */
  this = (void *)FUN_109a5b50((int)param_1);
  this_00 = (void *)FUN_104103a0();
  this_01 = (void *)FUN_104094c0();
  this_03 = (int *)0x0;
  local_3c = param_4;
  local_48[0] = 0;
  local_48[1] = 0;
  local_48[2] = param_3;
  FUN_1040b140(this_01,local_38);
  FUN_1040b170(this_01,local_48,0,0x3f800000);
  puVar2 = (undefined4 *)FUN_10918eb0(0x34,"RenderToBitmap",0);
  if (puVar2 != (undefined4 *)0x0) {
    this_03 = FUN_10412e00(puVar2);
  }
  (**(code **)(*this_03 + 4))();
  FUN_10411220(auStack_28);
  uVar3 = FUN_10412ec0(this_03,param_3,param_4,1,0x3d,0x100);
  if ((char)uVar3 == '\0') goto LAB_1098f1f8;
  FUN_104126f0(this_03,0);
  if (piStack_4 != (int *)0x0) {
    piVar4 = (int *)FUN_10410860(this_00);
    piStack_58 = (int *)FUN_10410860(this_00);
    if (piVar4 == (int *)0x0) {
      puVar2 = (undefined4 *)FUN_10918eb0(0x28,"RenderToBitmap",0);
      if (puVar2 == (undefined4 *)0x0) {
        piVar4 = (int *)0x0;
      }
      else {
        piVar4 = FUN_104112a0(puVar2);
      }
      (**(code **)(*piVar4 + 4))();
      cVar1 = FUN_10410ee0(piVar4,param_3,param_4,0x3d,1);
      if (cVar1 == '\0') {
        (**(code **)(*piVar4 + 8))();
        goto LAB_1098f1ee;
      }
      FUN_104108e0(this_00,0x1f1bddb,piVar4);
      (**(code **)(*piVar4 + 8))();
      piVar4 = (int *)FUN_10410860(this_00);
    }
    if (piStack_58 == (int *)0x0) {
      puVar2 = (undefined4 *)FUN_10918eb0(0x28,"RenderToBitmap",0);
      if (puVar2 == (undefined4 *)0x0) {
        this_02 = (int *)0x0;
      }
      else {
        this_02 = FUN_104112a0(puVar2);
      }
      (**(code **)(*this_02 + 4))();
      cVar1 = FUN_10410ee0(this_02,param_3,param_4,0x8d,0x11);
      if (cVar1 == '\0') {
        (**(code **)(*this_02 + 8))();
        goto LAB_1098f1ee;
      }
      FUN_104108e0(this_00,0x1f1bddc,this_02);
      (**(code **)(*this_02 + 8))();
      piStack_58 = (int *)FUN_10410860(this_00);
    }
    FUN_1040a0d0(this_01,0,*piVar4);
    FUN_1040a120(this_01,*piStack_58);
    uVar3 = FUN_1040c850(this_01);
    if ((char)uVar3 != '\0') {
      FUN_10753c10(this,'\0');
      FUN_104e1390((int)param_1);
      FUN_104e15c0((int)param_1);
      FUN_104e77e0(param_1);
      Animation_SetMissingAnimationCallback();
      FUN_1040c990(this_01);
    }
    iVar5 = D3DXLoadSurfaceFromSurface
                      (piStack_4,0,0,*(undefined4 *)(*piVar4 + 0x24),0,0,0xffffffff,0);
    if ((-1 < iVar5) &&
       (iVar5 = (**(code **)(*piStack_4 + 0x34))(piStack_4,auStack_50,0,0x10), -1 < iVar5)) {
      memcpy(param_2,pvStack_4c,param_4 * param_5);
      (**(code **)(*piStack_4 + 0x38))(piStack_4);
    }
  }
LAB_1098f1ee:
  (**(code **)(*this_03 + 8))();
LAB_1098f1f8:
  iVar5 = FUN_10252380((int)this_01);
  FUN_1040a0d0(this_01,0,iVar5);
  iVar5 = FUN_1060ee50((int)this_01);
  FUN_1040a120(this_01,iVar5);
  FUN_1040b170(this_01,local_38,0,0x3f800000);
  FUN_10410fe0(auStack_28);
  return;
}

