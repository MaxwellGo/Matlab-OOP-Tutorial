classdef People4

    properties (Access = public)
        name = "Scout"
        weight = 150
        age = 18
    end

    methods (Access = public)
        function [name, weight, age] = getInfo(obj)
            name = obj.name;
            weight = obj.weight;
            age = obj.age;
        end
    end

    methods (Access = public)
        function obj = grow(obj)
            if obj.checkAge(obj.age)
                obj.age = obj.age + 1;
            end
            if checkWeight(obj.weight)
                obj.weight = obj.weight + 1;
            end
        end
    end

    methods (Static = true)
        function b = checkAge(a)
            b = false;
            if a < 80
                b = true;
            end
        end
    end

end

function b = checkWeight(w)
    b = false;
    if w < 200
        b = true;
    end
end