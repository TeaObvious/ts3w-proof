/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: vertex shader GPU-object creation. Via the D3D device vtable at +0x16c, passes stored
   token bytes (or an explicit replacement pointer) and receives an interface pointer at object
   +0x10. The code checks HRESULT==0 and a non-null result, frees retained token bytes, and returns
   a bool in AL. The device method identity is inferred from its vtable slot and shader-object
   consumer. */

undefined1 __thiscall ShaderBytecode_CreateVertexObject(void *this,int param_1)

{
  int *piVar1;
  int iVar2;
  undefined1 uVar3;
  
  uVar3 = 1;
  if (param_1 == 0) {
    param_1 = *(int *)((int)this + 8);
  }
  piVar1 = (int *)FUN_0060fd90();
  iVar2 = (**(code **)(*piVar1 + 0x16c))(piVar1,param_1,(int *)((int)this + 0x10));
  if ((iVar2 != 0) || (*(int *)((int)this + 0x10) == 0)) {
    uVar3 = 0;
  }
  if (*(int *)((int)this + 8) != 0) {
    FUN_004e5e70(DAT_011cc864,*(int *)((int)this + 8));
    *(undefined4 *)((int)this + 8) = 0;
    *(undefined4 *)((int)this + 0xc) = 0;
  }
  return uVar3;
}

