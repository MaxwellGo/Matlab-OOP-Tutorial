classdef Student

    properties
        name
        age
        grade
    end

    methods
        function show(obj)
            disp("This is Student " + obj.name)
        end
    end
end