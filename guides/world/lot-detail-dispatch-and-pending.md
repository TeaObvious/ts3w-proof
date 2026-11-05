# Lot-detail dispatch and pending-component queries

Original PC 1.67 reference identity is defined by the central source manifest.
Names below are analyst role names. These are complete static original bodies,
not executed timing results or an inferred portable Task/CTS implementation.

## Request producer and separate execution

AC1250 stores lot+C1 requested byte before submission, only when changed and not
suppressed by+C9. Promotion selects AC01E0; demotion AB3310. It sends message
0421FEFD with the requested byte after dispatch and ignores the dispatch result.
[Request ASM](../../evidence/native/functions/00AC1250_Lot_SetDetailRequested.asm) ([C](../../evidence/native/functions/00AC1250_Lot_SetDetailRequested.c))

ABD400/ABD490 install the actual remote record's object/method/userData/flag fields,
initialize the original interface, then push second stack flag1 and their selected
thread flag into7D9B10. They consume only AL and release their local record reference.
Those flag fields and local-record release do not prove target object lifetime.
[Two-flag wrapper ASM](../../evidence/native/functions/00ABD400_RemoteMethodCall_SubmitTwoFlagMethod.asm) ([C](../../evidence/native/functions/00ABD400_RemoteMethodCall_SubmitTwoFlagMethod.c)),
[one-flag wrapper ASM](../../evidence/native/functions/00ABD490_RemoteMethodCall_SubmitOneFlagMethod.asm) ([C](../../evidence/native/functions/00ABD490_RemoteMethodCall_SubmitOneFlagMethod.c))

The complete dispatch function physically receives ECX record plus **two stack
DWORDs and returns with RET8**. First stack low byte selects registered thread ID:
nonzero7D9C40, zero7D9C20. Compare it with imported GetCurrentThreadId. Same-thread
execution calls record virtual+10 inline and returns record+8 byte; second flag
does not force a job here. 7D9C40 itself is exactly MOV EAX,[011D9A8C], RET. Its
actual global writer reference is7D9C54; full registration lifetime remains beyond
that getter.
[Dispatch ASM](../../evidence/native/functions/007D9B10_RemoteMethodCall_DispatchOrQueueJob.asm) ([C](../../evidence/native/functions/007D9B10_RemoteMethodCall_DispatchOrQueueJob.c)),
[thread getter ASM](../../evidence/native/functions/007D9C40_ThreadIdentity_ReadRemoteDispatchThreadId.asm) ([C](../../evidence/native/functions/007D9C40_ThreadIdentity_ReadRemoteDispatchThreadId.c))

On another thread, dispatch obtains the actual job manager and invokes virtual+10
with address of its local job pointer. Failed acquisition releases a nonnull
partial job and returns AL0. A nonzero **second** stack byte calls00599C20, which
invokes the new retained object's virtual0, releases previous job+10 through
virtual+4 and stores the new object there. Dispatch writes callback007D9A90 at
job+8, record at+C, and worker-affinity mask public+20/internal+28 as firstFlag?4:1 (the actual scheduler priority field is internal+48), then Job_Submit. With
secondFlag1 it releases the local job reference and returns AL1; with secondFlag0
it calls Job_WaitUntilTerminal,00599BE0, reads record+8 and releases the job.
The lot wrappers choose secondFlag1. Exact callback007D9A90 execution/teardown and
all target retention through virtual+10 remain open; no callback function was
created from its address alone.

**Decompiler artifact:** 7D9B10's retained inferred prototype exposes only one
stack parameter. Its actual C consequently uses unaff_EBX for the job and reuses
the first parameter in both async branches. Embedded instruction comments mark
these as wrong expressions: actual job is loaded from [ESP+0C], and branch checks
at7D9B87/7D9BC0 read the second byte at[ESP+18] after the prologue. The physical ABI
and instructions above override those expressions. No prototype, body boundary or
original instruction was changed to conceal that limitation.

## Pending producer and flag consumer

C69E30 scans requested-detail lots; readiness+C2 zero returns low-byte pending,
otherwise it invokes700C20 with actual lot GUID+48/+4C and maskFFFFFFFF.
[Pending-lot ASM](../../evidence/native/functions/00C69E30_WorldManager_HasPendingLotDetail.asm) ([C](../../evidence/native/functions/00C69E30_WorldManager_HasPendingLotDetail.c))

700C20 physically takes ECX manager plus GUID low/high and mask stack DWORDs,
RET0C. Every index repeats lookup of that exact two-word GUID in manager+1074.
Missing/end entry, null entry+8, null collection virtual+8(index,0,0) result or null
result+10 ends false. Otherwise receiver=*(result+10)+1C is passed result and mask
through6EDA40. TEST AL selects true; false advances index and repeats lookup.
Whole EAX is residue and must not be interpreted as a 32-bit Boolean.
[GUID-query ASM](../../evidence/native/functions/00700C20_WorldManager_HasPendingGuidComponents.asm) ([C](../../evidence/native/functions/00700C20_WorldManager_HasPendingGuidComponents.c))

6EDA40 physically takes ECX scene manager plus source/subtree and32-bit mask,
RET8. With manager+29D zero and manager+8 nonnull it calls6E3D50 first. It lazily
initializes global scratch vector11D2B9C/BA0/BA4 and its exit cleanup, resets its
logical end to begin, and fills it through6E4D30 for that source. Each pointer is
admitted by maskFFFFFFFF or intersection with the actual descriptor+44 getter
60FC70. TEST byte[object+40],42 then selects low-byte true; exhausted scan returns
AL0. Meanings/writers of0x02 and0x40, the complete collection algorithm, virtual
component target and full readiness+C2 producer set are not inferred here. Global
scratch has no per-call ownership or explicit lock in this selected function.
[Selected flag-consumer ASM](../../evidence/native/functions/006EDA40_SceneManager_HasPendingSubtreeFlags.asm) ([C](../../evidence/native/functions/006EDA40_SceneManager_HasPendingSubtreeFlags.c)),
[descriptor getter ASM](../../evidence/native/functions/0060FC70_GetNativeDescriptorTypeName_Field44.asm) ([C](../../evidence/native/functions/0060FC70_GetNativeDescriptorTypeName_Field44.c))

This establishes actual requested, selected-thread dispatch/job submission and
pending-component boundaries. It does not identify all original asset staging,
texture/hash prewarm, cancellation, GPU upload or completion mechanisms. The
existing [map/lot-detail guide](map-view-and-lot-detail.md) retains that broader
scope; requested bytes and submitted work are not presentation readiness.
