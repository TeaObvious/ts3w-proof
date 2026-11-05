/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX owner, UInt32 option hash, RET4. Find and remove one
   present vector element by moving following UInt32s; end pointer+23C decreases4 and revision+248
   increments only when present. Does not erase unrelated options. */

void __thiscall RenderSystem_RemoveGlobalShaderOption(void *this,int param_1)

{
  int *_Src;
  int *piVar1;
  int *_Dst;
  
  piVar1 = *(int **)((int)this + 0x23c);
  _Dst = *(int **)((int)this + 0x238);
  if (_Dst != piVar1) {
    do {
      if (*_Dst == param_1) break;
      _Dst = _Dst + 1;
    } while (_Dst != piVar1);
    if (_Dst != piVar1) {
      _Src = _Dst + 1;
      if (_Src < piVar1) {
        memmove(_Dst,_Src,(int)piVar1 - (int)_Src);
      }
      *(int *)((int)this + 0x23c) = *(int *)((int)this + 0x23c) + -4;
      *(int *)((int)this + 0x248) = *(int *)((int)this + 0x248) + 1;
    }
  }
  return;
}

