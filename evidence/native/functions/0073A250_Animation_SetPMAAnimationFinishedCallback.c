/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eb90.
   ScriptCore.Animation::Animation_SetPMAAnimationFinishedCallback [assembly=ScriptCore
   token=0x06000DC5; pPMAAnimationFinishedCallback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original cdecl callback setter: reads
   global011d4e34 and stores argument at adapter+8. No null guard or retain/release in this
   four-instruction body.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original cdecl callback setter: reads
   global011d4e34 and stores argument at adapter+8. No null guard or retain/release in this
   four-instruction body.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original cdecl callback setter: reads
   global011d4e34 and stores argument at adapter+8. No null guard or retain/release in this
   four-instruction body. */

void __cdecl Animation_SetPMAAnimationFinishedCallback(undefined4 param_1)

{
  *(undefined4 *)(DAT_011d4e34 + 8) = param_1;
  return;
}

