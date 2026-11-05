/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: One cdecl object word. Object+0x58 null or byte+0x5D zero calls5F7AB0.
   Otherwise bind selected format and object+0x58/+0x54 buffers; vertex count is UInt32 field+0x18
   of the +0x54 buffer divided by the format stride, and primitive count is UInt32 field+0x18 of the
   +0x58 buffer divided by3. Division is unsigned; no local zero-stride recovery is inferred.
   Temporary virtual+0x08 calls, including final tail jump, retain unresolved child effects;
   preserved decompiler indirect-jump warning is not flow repair. Descriptive analyst role, not a
   recovered symbol. */

void __cdecl TextureBuilder_SubmitGeometryOrGlobalQuad(int *param_1)

{
  uint uVar1;
  uint uVar2;
  void *this;
  int *piVar3;
  int *piVar4;
  
  piVar4 = param_1;
  this = DAT_011cfcc8;
  if ((param_1[0x16] == 0) || (*(char *)((int)param_1 + 0x5d) == '\0')) {
    RenderDevice_SubmitGlobalQuad();
  }
  else {
    piVar3 = FUN_005d43a0(&param_1);
    FUN_0060f5f0(this,*piVar3);
    if (param_1 != (int *)0x0) {
      (**(code **)(*param_1 + 8))();
    }
    FUN_0060f730(this,piVar4[0x16]);
    piVar3 = FUN_005d43a0(&param_1);
    FUN_0060f660(this,0,piVar4[0x15],0,**(uint **)(*piVar3 + 0x20));
    if (param_1 != (int *)0x0) {
      (**(code **)(*param_1 + 8))();
    }
    uVar1 = *(uint *)(piVar4[0x16] + 0x18);
    uVar2 = *(uint *)(piVar4[0x15] + 0x18);
    piVar4 = FUN_005d43a0(&param_1);
    RenderDevice_SubmitIndexedRange(this,3,0,0,uVar2 / **(uint **)(*piVar4 + 0x20),0,uVar1 / 3);
    if (param_1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x005f85c5. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*param_1 + 8))();
      return;
    }
  }
  return;
}

