// COA Matrix Operation Simulator
// Software-based implementation for Matrix Arithmetic

clear;
clc;

function [mat] = input_matrix(rows, cols, name)
    printf("Enter elements for Matrix %s (%d x %d):\n", name, rows, cols);
    mat = zeros(rows, cols);
    for i = 1:rows
        for j = 1:cols
            mat(i, j) = input(msprintf("Element [%d,%d]: ", i, j));
        end
    end
endfunction

while %t
    printf("\n--- COA Matrix Operation Simulator ---\n");
    printf("1. Addition (A + B)\n");
    printf("2. Subtraction (A - B)\n");
    printf("3. Multiplication (A * B)\n");
    printf("4. Transpose (A'')\n");
    printf("5. Exit\n");
    
    choice = input("Select an option (1-5): ");
    
    if choice == 5 then
        printf("Exiting simulator...\n");
        break;
    end
    
    r1 = input("Enter rows for Matrix A: ");
    c1 = input("Enter columns for Matrix A: ");
    A = input_matrix(r1, c1, "A");
    
    select choice
    case 1 then
        B = input_matrix(r1, c1, "B");
        result = A + B;
        printf("\nResult of Addition:\n");
        disp(result);
        
    case 2 then
        B = input_matrix(r1, c1, "B");
        result = A - B;
        printf("\nResult of Subtraction:\n");
        disp(result);
        
    case 3 then
        r2 = c1; // Rows of B must equal columns of A
        c2 = input(msprintf("Enter columns for Matrix B (Rows fixed at %d): ", r2));
        B = input_matrix(r2, c2, "B");
        result = A * B;
        printf("\nResult of Multiplication:\n");
        disp(result);
        
    case 4 then
        result = A';
        printf("\nResult of Transpose:\n");
        disp(result);
        
    else
        printf("Invalid selection!\n");
    end
end
