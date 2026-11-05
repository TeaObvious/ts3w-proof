/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Original case-folded FNV1-64 helper for the instance stem;
   case mapping retains original runtime/locale assumptions. This does not hash the entire
   group!name.extension string. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

undefined8 __cdecl CAW_ResourceNameHash64(wint_t *param_1,int param_2)

{
  wint_t wVar1;
  uint uVar2;
  int iVar3;
  longlong lVar4;
  
  uVar2 = 0x84222325;
  iVar3 = -0x340d631c;
  for (; param_2 != 0; param_2 = param_2 + -1) {
    wVar1 = towlower(*param_1);
    lVar4 = __allmul(uVar2,iVar3,0x1b3,0x100);
    iVar3 = (int)((ulonglong)lVar4 >> 0x20);
    uVar2 = (uint)wVar1 ^ (uint)lVar4;
    param_1 = param_1 + 1;
  }
  return CONCAT44(iVar3,uVar2);
}

