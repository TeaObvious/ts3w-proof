/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 complete existing body [[004f3cc0, 004f3dee]]: 303 original owned bytes/105 actual
   Listing instructions. Four physical inputs: output storage, UTF-16 span, source-unit count,
   optional allocation label; plain RET. FFFFFFFF count calls004FE2C0. First call004F40F0(16-to8)
   uses512-byte stack capacity. If not all input consumed, allocate sourceCount*4 bytes, convert
   again, construct storage from produced interval via004058B0, then free temporary bytes. Second
   conversion consumed count is not tested. Null label uses Services/UTFFoundation/EAString.
   Concrete storage/allocator failure/unwind effects remain external; no replacement CLR Unicode or
   allocation guarantee inferred. */

void * __cdecl
Utf_ConvertWideSpanToByteStorage(void *param_1,LPCWSTR param_2,uint param_3,char *param_4)

{
  uint uVar1;
  LPWSTR allocation;
  char *local_208;
  uint local_204;
  WCHAR local_200 [256];
  
  if (param_3 == 0xffffffff) {
    param_3 = FUN_004fe2c0(param_2);
  }
  local_204 = 0x200;
  uVar1 = Utf_ConvertEncodingUnits(param_2,param_3,0x10,local_200,&local_204,8);
  if (param_3 <= uVar1) {
    if (param_4 != (char *)0x0) {
      local_208 = param_4;
      FUN_004058b0(param_1,local_200,(int)local_200 + local_204,&local_208);
      return param_1;
    }
    local_208 = "Services/UTFFoundation/EAString";
    FUN_004058b0(param_1,local_200,(int)local_200 + local_204,&local_208);
    return param_1;
  }
  local_204 = param_3 * 4;
  allocation = (LPWSTR)FUN_004e4500(local_204,param_4,0);
  Utf_ConvertEncodingUnits(param_2,param_3,0x10,allocation,&local_204,8);
  local_208 = param_4;
  if (param_4 == (char *)0x0) {
    local_208 = "Services/UTFFoundation/EAString";
  }
  FUN_004058b0(param_1,allocation,(int)allocation + local_204,&local_208);
  Memory_FreeIfNonNull(allocation);
  return param_1;
}

