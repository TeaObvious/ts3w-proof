# Frame timer delta and renderer phase

## Original functions and physical ABI

- [FrameTimer_UpdateGameDelta ASM](../../evidence/native/functions/00594D40_FrameTimer_UpdateGameDelta.asm) ([C](../../evidence/native/functions/00594D40_FrameTimer_UpdateGameDelta.c)): ECX receiver, one Float32 stack word, RET4; no defined return value established.
- [FrameTimer_AddPauseFlagsAndClearGameDelta ASM](../../evidence/native/functions/00594E10_FrameTimer_AddPauseFlagsAndClearGameDelta.asm) ([C](../../evidence/native/functions/00594E10_FrameTimer_AddPauseFlagsAndClearGameDelta.c)): ECX receiver, one UInt32 stack word, RET4.
- [Renderer_PublishFrameTimeConstants ASM](../../evidence/native/functions/006EAB00_Renderer_PublishFrameTimeConstants.asm) ([C](../../evidence/native/functions/006EAB00_Renderer_PublishFrameTimeConstants.c)): ECX copied to ESI, plain RET; the fastcall prototype is inferred rather than independent physical proof.

## Selected arithmetic and ordering

00594D40 calls 004E1C00 before testing receiver+40. Only zero flags enter the update: Single+74 multiplies the input, the result is stored at +64, and COMISS/JBE retains it for lower, equal or unordered comparison with Single+78. Ordered greater replaces it with +78. Single+68 then multiplies that value; the function increments +5C, adds the result to Single+60 and stores +64. It reads and clears byte+70 before calling 004E1CC0. A pending notification can subsequently obtain the message dispatcher and indirectly send 2CB180C0 with copied +6C. The two child calls alone do not establish synchronization semantics.

00594E10 calls 004E1C00, ORs the input flags into +40, writes positive binary32 zero to +64 using XORPS/MOVSS, then calls 004E1CC0. This body does not establish exact bit names or the separate unpause operation.

The selected 006EAB00 phase path loads Single011CEDAC and adds receiver+254 with ADDSS. It multiplies by the Single at 00FF9618, converts through CVTTSS2SI and CVTSI2SS, multiplies by Single00FF9614, then subtracts using SUBSS and stores +254. The resulting phase is replicated into outgoing constant lanes before the selector1 call to 006C9880. No pauseflag test occurs in this selected phase path. These are separate binary32 operations, not a double remainder or a fused expression. CVTTSS2SI truncates finite representable inputs toward zero; masked invalid/out-of-range conversion yields the integer indefinite value. Exception-mask state and NaN payload preservation are not established by this body.

[Physical constants](../../evidence/native/data/visual-game-clock-constants.tsv) retain both four-byte operands: period bits47435000 (50000f) and multiplier bits37A7C5AC (the stored binary32 value near 0.00002). Their exact bytes, read sites and distinction from deriving a reciprocal are retained.

## Caller and evidence limits

[Incoming call sites](../../evidence/native/data/visual-game-clock-incoming.tsv) retain eight physically verified E8 sites. Only EC13C7 is assigned to its already canonical EC13C0 caller here; an entry reference does not identify the containing caller function for the other sites. Outgoing direct calls are indexed from encoded E8 instructions; register-indirect dispatch is not given an invented direct target.

These three bodies do not establish receiver construction, cap/gain defaults, the absolute timer producer identity, scale setter admission, or complete renderer scheduler/resource policy. Additional timer caller research is outside these three canonical pairs. No fixed one-sixth cap, unity prescale or complete simulation-clock equivalence follows from the selected bodies.


## Scale, speed and clear/query counterparts

The selected GameUtils wrappers use the actual global receiver011CED48. The
additional complete owned bodies are small, with no code/data gaps:

- [Clear pause flags594E40 ASM](../../evidence/native/functions/00594E40_FUN_00594e40.asm) ([C](../../evidence/native/functions/00594E40_FUN_00594e40.c)):33bytes/11instructions, ECX plus UInt32, RET4; call4E1C00, AND receiver+40 with complement input, call4E1CC0. EC13D0 supplies1; other producers and meanings remain open.
- [Scale store594E70 ASM](../../evidence/native/functions/00594E70_FUN_00594e70.asm) ([C](../../evidence/native/functions/00594E70_FUN_00594e70.c)):35bytes/10instructions; ECX plus binary32, RET4; MOVSS input unchanged to+68 between4E1C00/4E1CC0. No finite/range clamp in this body.
- [Speed store594EA0 ASM](../../evidence/native/functions/00594EA0_FUN_00594ea0.asm) ([C](../../evidence/native/functions/00594EA0_FUN_00594ea0.c)):35bytes/11instructions; raw Int32 to+6C and byte+70=1 on every call, including equal input, between the same child calls; RET4.
- [Pause query594ED0 ASM](../../evidence/native/functions/00594ED0_FUN_00594ed0.asm) ([C](../../evidence/native/functions/00594ED0_FUN_00594ed0.c)):33bytes/13instructions, no stackwords/plainRET; CMP unsigned dword+40,0 and SETA supply low-byte Boolean after4E1CC0. Decompiled critical-section/LockSemaphore labels are inferred and do not establish the timer field layout.

The existing registered entry pairs retain their physical ABI:
[EC13F0 scale setter ASM](../../evidence/native/functions/00EC13F0_ScriptCore_GameUtils_GameUtils_SetGameTimeScaleImpl.asm) ([C](../../evidence/native/functions/00EC13F0_ScriptCore_GameUtils_GameUtils_SetGameTimeScaleImpl.c))
copies its Float32 stackword before594E70. [EC1410 scale getter ASM](../../evidence/native/functions/00EC1410_ScriptCore_GameUtils_GameUtils_GetGameTimeScaleImpl.asm) ([C](../../evidence/native/functions/00EC1410_ScriptCore_GameUtils_GameUtils_GetGameTimeScaleImpl.c))
is FLD011CEDB0/RET, the global+68. [EC10B0 speed setter ASM](../../evidence/native/functions/00EC10B0_ScriptCore_GameUtils_GameUtils_SetGameTimeSpeedLevel.asm) ([C](../../evidence/native/functions/00EC10B0_ScriptCore_GameUtils_GameUtils_SetGameTimeSpeedLevel.c))
passes its raw stackword to594EA0. [EC10C0 getter ASM](../../evidence/native/functions/00EC10C0_ScriptCore_GameUtils_GameUtils_GetGameTimeSpeedLevel.asm) ([C](../../evidence/native/functions/00EC10C0_ScriptCore_GameUtils_GameUtils_GetGameTimeSpeedLevel.c))
loads011CEDB4, the same global+6C. Pause and scale remain distinct fields.
These selected getters do not call the setter's child helpers. Do not replace
the observed calls with an invented native critical-section or CLR lock contract.

594D40's previously verified byte+70 consumption can dispatch2CB180C0 with+6C
after its update, unlike a synchronous managed event directly in a native setter.
[Complete managed Gameflow members](../../evidence/managed/selected/game-time-and-config/members.tsv)
separately show SetGameSpeed0600BE5D/85bytes context/lock/pause-toggle gates,
0600BE5E/233bytes final scale/speed publication then GameSpeedChanged invocation,
and GetTimeRateForGameSpeed0600BE5F/123bytes reading tuned rates and optional
SlowMotion multiplier. Numeric 1/2/3 speed-level values are assigned explicitly
by0600BE5E; rate multipliers must come from actual tuned fields, not enum names.
A host native hook must not invent a second Gameflow event.

Complete initializer/cap/prescale values, every native notification listener and
audio consumer, timer reset/lifetime and original thread coordination remain
open. This adds only five new canonical pairs across timer/config research;
existing pairs were reused, no database mutation or save performed. The existing
Ghidra dirty state/modification number was preserved by the finite read-only
export. Static observations are not runtime pause/FPS/parallel-safety acceptance.
