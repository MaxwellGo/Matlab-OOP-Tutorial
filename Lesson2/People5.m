classdef People5

    properties (Access = public)
        name = "Scout"
        weight = 150
        age = 18
    end

    methods (Access = public)
        function obj = People5(name, weight, age)
            if age < 20
                obj.name = name;
                obj.weight = weight;
                obj.age = age;
            else
                obj = obj.create(name, weight, age);
            end
        end
    end

    methods (Access = private)
        function obj = create(obj, name, weight, age)
            obj.name = name;
            obj.weight = weight + 1;
            obj.age = age + 1;
        end
    end

end