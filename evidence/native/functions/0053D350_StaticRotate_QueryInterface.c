/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0053d350. Physical ECX plus one interface word; accepts037D6855 and returns
   whole receiver, otherwise tailJMP504B80 provider. Do not equate this interface with serialized
   class037D7402 or generic Window EEC58382. */

void * __thiscall StaticRotate_QueryInterface(void *param_1,int param_2)

{
  void *pvVar1;
  
  if (param_2 != 0x37d6855) {
    pvVar1 = FUN_00504b80(param_1,param_2);
    return pvVar1;
  }
  return param_1;
}

