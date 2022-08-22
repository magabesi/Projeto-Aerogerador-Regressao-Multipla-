/// Programa que determina modelo de regressão polinomial usando AEROGERADOR ///

///// Maria Gabriele bezerra da Silva /////

clear; //// Limpa o console antes da execução // 
clc;

disp('Aerogerador');

dados = fscanfMat ('aerogerador.dat'); /// Faz leitura do arquivo do Aerogerador ///

x = dados(:,1); ///  variável x vai receber todos os valores da primeira coluna, ou seja, os valores da Velocidade do Vento. ///
y = dados(:,2); /// variável y vai receber todos os valores da segunda coluna, ou seja, os valores da potência gerada. ///
n = length(x); /// variável n recebe o valor do tamanho do vetor x, ou seja, n irá representar o número de amostras.///

/// Para evitar eventuais erros foi feito a normalização dos valores ///
x = x./max(x);
y = y./max(y);

lambda = 0.001;
plot(x,y,'*');

/// Foi feito um FOR para percorrer todos os graus de 2 a 7, como solicitado na questão ///
for grau = 2:7
    
    /// Grau 2 mostrado na cor CIANO ///
    if (grau == 2) then 
        X=[ones(n,1) x, x.^2];
        [sx sy] = size(X');
        beta= (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2;
        plot(x,y_chap,'-c'); 
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        mprintf("O valor de R2 do grau 2 é: %f\n", R2);
        mprintf("O Valor de R2aj do grau 2 é: %f\n", R2aj);
        mprintf("\n");   
    end
    
     /// Grau 3 mostrado na cor VERDE ///
    if (grau == 3) then
        X=[ones(n,1) x, x.^2, x.^3];
        [sx sy] = size(X');
        beta= (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2+beta(4)*x.^3;
        plot(x,y_chap,'-g');
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        mprintf("O valor de R2 do grau 3 é: %f\n", R2);
        mprintf("O Valor de R2aj do grau 3 é: %f\n", R2aj);  
        mprintf("\n");  
    end
    
     /// Grau 4 mostrado na cor VERMELHA ///
    if (grau == 4) then
        X=[ones(n,1) x, x.^2, x.^3, x.^4];
        [sx sy] = size(X');
        beta= (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2+beta(4)*x.^3+beta(5)*x.^4;
        plot(x,y_chap,'-r');
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        mprintf("O valor de R2 do grau 4 é: %f\n", R2);
        mprintf("O Valor de R2aj do grau 4 é: %f\n", R2aj); 
        mprintf("\n");   
    end
    
     /// Grau 5 mostrado na cor AMARELA ///
    if (grau == 5) then
        X=[ones(n,1) x, x.^2, x.^3, x.^4, x.^5];
        [sx sy] = size(X');
        beta= (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2+beta(4)*x.^3+beta(5)*x.^4+beta(6)*x.^5;
        plot(x,y_chap,'-y');
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        mprintf("O valor de R2 do grau 5 é: %f\n", R2);
        mprintf("O Valor de R2aj do grau 5 é: %f\n", R2aj); 
        mprintf("\n");   
    end
    
     /// Grau 2 mostrado na cor MAGNETA ///
    if (grau == 6) then
        X=[ones(n,1) x, x.^2, x.^3, x.^4, x.^5, x.^6];
        [sx sy] = size(X');
        beta= (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2+beta(4)*x.^3+beta(5)*x.^4+beta(6)*x.^5+beta(7)*x.^6;
        plot(x,y_chap,'-m');
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        mprintf("O valor de R2 do grau 6 é: %f\n", R2);
        mprintf("O Valor de R2aj do grau 6 é: %f\n", R2aj); 
        mprintf("\n");   
    end
    
     /// Grau 2 mostrado na cor PRETA ///
    if (grau == 7) then
        X=[ones(n,1) x, x.^2, x.^3, x.^4, x.^5, x.^6, x.^7];
        [sx sy] = size(X');
        beta= (X'*X+lambda*eye(sx,sx))^(-1)*X'*y;
        y_chap = beta(1)+beta(2)*x+beta(3)*x.^2+beta(4)*x.^3+beta(5)*x.^4+beta(6)*x.^5+beta(7)*x.^6+beta(8)*x.^7;
        plot(x,y_chap,'-k');
        R2 = 1-sum((y-y_chap).^2)/sum((y-mean(y)).^2);
        R2aj = 1-sum(((y-y_chap).^2)/(n-(sx+1)))/sum(((y-mean(y)).^2)/(n-1));
        mprintf("O valor de R2 do grau 7 é: %f\n", R2);
        mprintf("O Valor de R2aj do grau 7 é: %f\n", R2aj); 
        mprintf("\n");   
    end
    
end
