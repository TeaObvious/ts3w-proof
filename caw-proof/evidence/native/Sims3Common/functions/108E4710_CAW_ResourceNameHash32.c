/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Original case-folded FNV1-32 name/extension hash used when
   the key parser has no explicit or registered extension type. Registered extension lookup precedes
   this fallback. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

uint __cdecl CAW_ResourceNameHash32(wint_t *param_1,int param_2)

{
  wint_t wVar1;
  uint uVar2;
  
  uVar2 = 0x811c9dc5;
  for (; param_2 != 0; param_2 = param_2 + -1) {
    wVar1 = towlower(*param_1);
    uVar2 = uVar2 * 0x1000193 ^ (uint)wVar1;
    param_1 = param_1 + 1;
  }
  return uVar2;
}

