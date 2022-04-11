function [journey, new_case] = revise(retrieved_cases, new_case, new_price)
    
    retrieved_codes = retrieved_cases{:,1};
    code = str2double('-');
        
    while isnan(code) || fix(code) ~= code || ismember(code, retrieved_codes) == 0
        fprintf('From the retrieved cases, which is the one that better matches your journey?\n');
        code = str2double(input('Journey Code: ','s'));
    end
    
    journey = fix(code);
    
    % Revise holiday type com validação de campos
    lista = {'Active', 'Bathing', 'City', 'Education', 'Language', 'Recreation', 'Skiing', 'Wandering'};
    fprintf("\nUpdate your journey holiday type? (y/n)\n");
    option = input('Option: ', 's');
    if option == 'y' || option == 'Y'
        y = input('Holiday type?', 's');
        while(~ismember(lista, y))
            y = input('Holiday type?', 's');
        end
        new_case.holiday_type = y;
    end

    % Revise price
    if new_case.price == -1
        if option == 'y' || option == 'Y'
            while isnan(p)
                p = str2double(input('Price: ', 's'));
            end
            new_case.price = p;
        end
    else
        fprintf('\nUpdate your journey price with the new estimated value? (y/n)\n');
        option = input('Option: ', 's');
        if option == 'y' || option == 'Y'
            new_case.price = new_price;
        end
    end
       

    % Revise number of persons com validacao de campos
    npersons = str2double('-');

    fprintf('\nUpdate number of persons? (y/n)\n');
    option = input('Number of persons: ', 's');

    if option == 'y' || option == 'Y'
        while isnan(npersons)
            npersons = str2double(input('Number of persons: ', 's'));
        end
        new_case.number_persons = npersons;
    end

    % TODO os revises dos restantes atributos -> 8 no total
end

