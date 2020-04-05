clear
clc

% ASCII
% uint8('A')
% uint8('a')
% uint8('0')
% 
% double('A')
% 
% char(65)
% char(97)
% 
% uint8('G')
% letter = 'G' + 1
% char(letter)
% h = 'Homer'
% uint8(h+1)
% 
% d = [66 97 114 116]
% char(d)
% char(d+1)
% 

% name = 'George P. Burdell'
% name(1:2:end)
% name(end:-1:1)
% 
% first = 'Georgia '
% space = char(32)
% second = 'Tech'
% str = [first, space,  second]

% 
% ischar('a')
% ischar(2)
% ischar('2')


% a = char(65)
% a + 1
% b = int2str(65)
% b = '65'
% b + 1
% c = 65
% c + 1
% d = int2str(65.78934)
% d + 1
% e = num2str(65.78934)
% e + 0
% 
% 
% [1 2 3 4 5] > 3
% [1 2 3 4 5] == 3
% [1 2 3 4] >= [1 6 3 7]
% [1 2 3 4] >= [1 6 3 7 9]

% 'Marge' > 'g'
% 'marge' > 'g'
% 'Connectcuqt' == 'c'
% 
% 'abcd' == 'abcd'
% 'aBcd' == 'abcd'
% 'abcd' <= 'azcy'
% 'Mississippi' == 's'
% find('Mississippi' == 's')
% 
% 'abcd' == 'abcde'
% strcmp('abcd', 'abcde')

% password = 'foo';
% valid = false;
% user_password = input('Please enter your password: ', 's');
% if user_password == password
%     valid = true;
% end
% valid

% password = 'foo';
% valid = false;
% user_password = input('Please enter your password: ', 's');
% if strcmp(user_password, password)
%     valid = true;
% end
% valid

% G = [ 1 2 3 ];
% G
% disp( G )

% START ON FRIDAY-------------------------

% fprintf('The answer is 42.')
foo = sprintf('The answer is 42 and 42.\n');
foo

% data1 = 345.9999;

% data2 = 56.83838;
% data3 = 1.34;
% data4 = 7;
% data5 = 'Fourty Two';

% fprintf('The answer is %f\n', 786.4572);

% fprintf('The answers are %f, %f, %f\n', data1, data2, data3);
% fprintf('The answers are %f, %f, %f, %d, %s\n', data1, data2, data3, data4, data5);
% fprintf('The answers are %d, %d, %d, %f, %s\n', data1, data2, data3, data4, data5);
%  fprintf('The answers are %f, %f, %f, %d, %s\n', data1, data2, data3, data4, data5);
%  fprintf('The answers are \t%f \t%f \t%f \t%d \t%s\n', data1, data2, data3, data4, data5);
%  fprintf('The answers are \t%.0f \t%.3f \t%.2f \t%d \t%s\n', data1, data2, data3, data4, data5);
% 
% fprintf('The answer is %f\n',data1 );
% fprintf('The answer is % 8.3f\n',data1 );
% fprintf('The answer is % 8.3f\n',data2 );
% fprintf('The answer is % 8.3f\n',data3 );

% fprintf('The FP answers are \t%.2f \t%.2f \t%.2f \t%d \t%s\n', data1, data2, data3, data4, data5)  %<---look mom semicolons
% sprintf('The SP answers are \t%.2f \t%.2f \t%.2f \t%d \t%s\n', data1, data2, data3, data4, data5)

% fp = fprintf('The FP answers are \t%.2f \t%.2f \t%.2f \t%d \t%s\n', data1, data2, data3, data4, data5);
% sp = sprintf('The SP answers are \t%.2f \t%.2f \t%.2f \t%d \t%s\n', data1, data2, data3, data4, data5);
% fp
% sp

% 

%% Use to motivate Cell Array Lecture
% namelist =['Sam', 'Joe', 'Bob', 'Amy', 'Sue']
% namefound = false;
% username = input('Please enter your name: ', 's');
% for index = 1:length(namelist)
%     if username == namelist(index)
%         namefound = true;
%     end
% end
% namefound   
