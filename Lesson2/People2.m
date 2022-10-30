classdef People2

    properties (Access = public)
        name    string    = "default"
    end

    properties (Access = public)
        weight(1,1)    double    = 100.0
    end

    properties (Access = public)
        age(1,1)    int16    {mustBeGreaterThan(age, 18)}    = 20
    end

end