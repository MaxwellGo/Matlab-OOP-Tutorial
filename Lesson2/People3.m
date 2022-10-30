classdef People3

    properties (Access = public)
        weight(1,1)    double ...
                       {mustBeHealthy(weight)} ...
                       = 100.0
    end

end

function mustBeHealthy(p)
    if p > 200 || p < 80
        eidType = 'weight:notHealthy';
        msgType = 'Values assigned to weight property must be within the range of 80 to 200.';
        throwAsCaller(MException(eidType,msgType))
    end
end