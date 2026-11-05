/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Calls10927300 with source width8 and destination16, retries
   with a larger buffer when required, and builds the owned UTF-16 string. This is the 1098A7C0
   exported filename BSTR conversion path, not ASCII decoding. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void * __cdecl
CAW_FilenameConvertUtf8ToUtf16(void *param_1,LPCWSTR param_2,uint param_3,char *param_4)

{
  uint uVar1;
  void *output;
  char *local_408;
  uint local_404;
  undefined1 local_400 [1024];
  
  if (param_3 == 0xffffffff) {
    param_3 = FUN_10930b90((char *)param_2);
  }
  local_404 = 0x200;
  uVar1 = CAW_OriginalStringEncodingConvert(param_2,param_3,8,local_400,&local_404,0x10);
  if (param_3 <= uVar1) {
    if (param_4 != (char *)0x0) {
      local_408 = param_4;
      FUN_1006f7e0(param_1,local_400,(int)(local_400 + local_404 * 2),&local_408);
      return param_1;
    }
    local_408 = "Services/UTFFoundation/EAString";
    FUN_1006f7e0(param_1,local_400,(int)(local_400 + local_404 * 2),&local_408);
    return param_1;
  }
  local_404 = param_3;
  output = (void *)FUN_10918eb0(-(uint)((int)((ulonglong)param_3 * 2 >> 0x20) != 0) |
                                (uint)((ulonglong)param_3 * 2),param_4,0);
  CAW_OriginalStringEncodingConvert(param_2,param_3,8,output,&local_404,0x10);
  local_408 = param_4;
  if (param_4 == (char *)0x0) {
    local_408 = "Services/UTFFoundation/EAString";
  }
  FUN_1006f7e0(param_1,output,(int)((int)output + local_404 * 2),&local_408);
  FUN_10918e90((int)output);
  return param_1;
}

