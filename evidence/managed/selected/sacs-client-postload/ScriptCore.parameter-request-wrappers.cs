// Actual ILSpy selected method renderings, not a compilable source reconstruction.
public void SetParam(uint driverHandle, uint paramHash, uint valueHash)
{
	SACS_SetParamImpl(driverHandle, paramHash, valueHash);
}

public void SetParam(uint driverHandle, uint paramHash, string value)
{
	SACS_SetParamStringImpl(driverHandle, paramHash, value);
}

public void SetParam(uint driverHandle, string paramPrefix, string paramName, string value)
{
	SACS_SetParamCompositeStringValImpl(driverHandle, paramPrefix, paramName, value);
}

public void SetParam(uint driverHandle, string paramPrefix, string paramName, uint valueHash)
{
	SACS_SetParamCompositeImpl(driverHandle, paramPrefix, paramName, valueHash);
}

public uint GetParam(uint driverHandle, uint paramHash)
{
	return SACS_GetParamImpl(driverHandle, paramHash);
}

using Sims3.SimIFace.SACS;

public ResultCodes RequestState(bool yield, uint driverHandle, uint actorHash, uint stateHash, DriverRequestFlags flags, float wakeupTimeOffset, uint simTickTimeout, uint bridgeDriverHandle, uint bridgeActorHash)
{
	ResultCodes result = SACS_RequestStateImpl(driverHandle, actorHash, stateHash, flags, simTickTimeout, bridgeDriverHandle, bridgeActorHash);
	if (yield)
	{
		object callbackResult = GetCallbackResult();
		if (callbackResult == null)
		{
			return ResultCodes.kGenericFailure;
		}
		return (ResultCodes)callbackResult;
	}
	return result;
}

