/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 packed decoder boundary: ECX provider, five DWORD words
   codec/raw/storedSize/memorySize/output, RET14, result AL. LowushortFFFF creates built-in4EC520
   wrapper; all other codecs use provider+390 virtual+6C registry and fail on absent decoder.
   Decoder+C validates input; decoder+8 null-output query must equal memorySize; nonzero stored and
   queried sizes require decode+8 nonzero result. Built-in wrapper alone is locally destroyed/freed.
   No hardcoded5A42 registry mapping proved.
   Bounded role PackedFile_DecodeResourceBuffer: low ushort codec selects owned built-inFFFF wrapper
   or borrowed dynamic registry decoder; validation/query/decode/cleanup ordering remains the actual
   body. Full physical ECX+five stack DWORDs/RET14; stored signature unchanged. */

uint __thiscall
PackedFile_DecodeResourceBuffer
          (void *this,int param_1,undefined4 param_2,int param_3,int param_4,undefined4 param_5)

{
  int *piVar1;
  short sVar2;
  void *this_00;
  int *piVar3;
  undefined1 local_1;
  
  piVar3 = (int *)0x0;
  sVar2 = (short)param_1;
  local_1 = 0;
  if (sVar2 == -1) {
    this_00 = (void *)(**(code **)(**(int **)((int)this + 0x10) + 4))(8,&DAT_00fb35b8,0,4,0);
    if (this_00 != (void *)0x0) {
      piVar3 = (int *)RefPackCodec_Initialize(this_00,*(undefined4 *)((int)this + 0x10));
LAB_004a7787:
      param_1 = 0;
      if ((((piVar3 != (int *)0x0) &&
           (param_1 = (**(code **)(*piVar3 + 0xc))(param_2,param_3), (char)param_1 != '\0')) &&
          (param_1 = (**(code **)(*piVar3 + 8))(param_2,param_3,0,0,1), param_1 == param_4)) &&
         (((param_3 == 0 || (param_1 == 0)) ||
          (param_1 = (**(code **)(*piVar3 + 8))(param_2,param_3,param_5,param_4,1), param_1 != 0))))
      {
        local_1 = 1;
      }
      goto LAB_004a77e3;
    }
    piVar3 = (int *)0x0;
    param_1 = 0;
  }
  else {
    if (*(int *)((int)this + 0x390) != 0) {
      piVar3 = (int *)(**(code **)(**(int **)((int)this + 0x390) + 0x6c))(param_1);
      goto LAB_004a7787;
    }
LAB_004a77e3:
    if (sVar2 != -1) goto LAB_004a7809;
  }
  piVar1 = *(int **)((int)this + 0x10);
  if (piVar3 != (int *)0x0) {
    (**(code **)*piVar3)(0);
    param_1 = (**(code **)(*piVar1 + 0xc))(piVar3,0);
  }
LAB_004a7809:
  return CONCAT31((int3)((uint)param_1 >> 8),local_1);
}

