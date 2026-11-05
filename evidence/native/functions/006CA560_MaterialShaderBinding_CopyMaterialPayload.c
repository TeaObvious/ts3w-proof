/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX binding; payload,byteCount,flag,context stack words; RET0x10.
   Reset/retire previous binding data, allocate and memcpy actual material payload, build typed
   entries then begin texture requests; allocation failure returns ALfalse. Optional caller flag and
   later hash scan are preserved. No decoded color conversion. Role name is descriptive, not a
   recovered original symbol. */

undefined4 __thiscall
MaterialShaderBinding_CopyMaterialPayload
          (void *this,void *param_1,uint param_2,char param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  uint *_Dst;
  
  FUN_006c9ce0((int)this);
  piVar2 = (int *)FUN_004e5e70(DAT_011cc864,*(int *)((int)this + 0x38));
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x3c) = 0;
  if ((param_1 != (void *)0x0) && (param_2 != 0)) {
    _Dst = FUN_004e6f70(DAT_011cc864,param_2,0x10,0,0);
    *(uint **)((int)this + 0x38) = _Dst;
    *(uint *)((int)this + 0x3c) = param_2;
    if (_Dst == (uint *)0x0) {
      return 0;
    }
    memcpy(_Dst,param_1,param_2);
    MaterialShaderBinding_BuildTypedEntries(this,*(uint **)((int)this + 0x38));
    piVar2 = (int *)MaterialShaderBinding_BeginTextureEntries(this,param_4);
    if (param_3 != '\0') {
      piVar2 = (int *)FUN_006c9cb0((int)this);
    }
  }
  if (*(int *)((int)this + 0x38) != 0) {
    for (piVar2 = *(int **)((int)this + 100); piVar2 != *(int **)((int)this + 0x68);
        piVar2 = piVar2 + 8) {
      if (*piVar2 == 0x637daa05) {
        iVar1 = piVar2[5];
        *(int *)((int)this + 0x58) = iVar1;
        return CONCAT31((int3)((uint)iVar1 >> 8),1);
      }
    }
  }
  *(undefined4 *)((int)this + 0x58) = 0;
  return CONCAT31((int3)((uint)piVar2 >> 8),1);
}

