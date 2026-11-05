/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. ECX resource, one stack stream, RET4, AL.
   Retains stream via virtual4, helper739330 can replace/prepare it, counts its virtual1C size,
   allocatesE4 template/7BB980, destroys/frees previous template+34. Calls7B8AD0(1), passes stream
   backing+4/+8 and size to7BCBE0, releases stream on selected failure/success exits, only after
   parser AL true invokes7154F0. Allocation/header/helper failure semantics not fully expanded; not
   proof all malformed data is safely contained or every asset is staged before simulation. */

bool __thiscall TreeTemplate_LoadSptStream(void *this,void *stream)

{
  int *piVar1;
  void *this_00;
  bool bVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  int *piVar6;
  uint sourceWord1;
  uint sourceWord0;
  
  if (stream != (void *)0x0) {
    (**(code **)(*(int *)stream + 4))();
  }
  uVar3 = FUN_00739330(&stream);
  if ((char)uVar3 != '\0') {
    iVar4 = (**(code **)(*(int *)stream + 0x1c))();
    FUN_00731be0(this,iVar4);
    puVar5 = (undefined4 *)FUN_007b9030(0xe4);
    if (puVar5 == (undefined4 *)0x0) {
      piVar6 = (int *)0x0;
    }
    else {
      piVar6 = FUN_007bb980(puVar5);
    }
    piVar1 = *(int **)((int)this + 0x34);
    if (piVar6 != piVar1) {
      if (piVar1 != (int *)0x0) {
        FUN_007bc470(piVar1);
        FUN_007b9060((int)piVar1);
      }
      *(int **)((int)this + 0x34) = piVar6;
    }
    FUN_007b8ad0(1);
    if (*(int *)((int)stream + 4) == 0) {
      sourceWord0 = 0;
    }
    else {
      sourceWord0 = *(uint *)(*(int *)((int)stream + 4) + 8);
    }
    this_00 = *(void **)((int)this + 0x34);
    sourceWord1 = (**(code **)(*(int *)stream + 0x1c))();
    bVar2 = SptTree_LoadAndDispatchSections(this_00,sourceWord0,sourceWord1);
    if (bVar2) {
      if (stream != (void *)0x0) {
        (**(code **)(*(int *)stream + 8))();
      }
      bVar2 = TreeTemplate_PrepareTextureProxies(this);
      return bVar2;
    }
  }
  if (stream != (void *)0x0) {
    (**(code **)(*(int *)stream + 8))();
  }
  return false;
}

