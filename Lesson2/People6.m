classdef People6 < handle

    properties (Access = public)
        name = "Scout"
        weight = 150
        age = 18
    end

    methods (Access = public)
        function obj = People6(name, weight, age, num)
            if num <= 1
                obj.name = name;
                obj.weight = weight;
                obj.age = age;
            else
                obj = obj.create(name, weight, age, num);
            end
        end
    end

    methods (Access = private)
        function obj = create(obj, name, weight, age, num)
            obj(num, 1) = obj;
            for i = 1:num
                obj(i).name = name;
                obj(i).weight = weight;
                obj(i).age = age;
            end
        end
    end

end