            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %                  Structures                    %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
  
                        %% What is a structure?
%New type of data structure that can hold heterogenous data types.
%struct is a new class


                        %% Creating structures 
                        
% struct function
% st = struct(fieldname,value,fieldname2,value2,...)

st = struct('name','Eric','age',18,'goodTaste',true)


%dot operator 
%nameOfStructure.nameFieldName = value
st.name= 'Eric'
st.age = 18
st.goodTaste = true
st.favoriteColor = 'blue'



%using a variable that contains fieldname
var = 'games';


st.var = 'LoL' %creates a fieldname 'var' with the value 'LoL'
st.(var) = 'LoL'








                        %% indexing structures
                        
 %Syntax for indexing
%var = nameOfStructure.fieldName                       
% using fieldname 
myName = st.name



%using variable of a field name
variable = 'name'
myName = st.variable%tries to look for fieldname called "variable" and get value BUT ITS NOT THERE AND IT ERRORS
myName = st.(variable)%looks for value at fieldname "name"





                        %% functions 

%rmfield(structure,fieldname)

%trying to delete without using rmfield
st.var = [] %just makes the value at fieldname 'var' empty brackets

%trying to use rmfield
%incorrect usage
rmfield(st,'var')

%correct usage
st = rmfield(st,'var')

                        
%fieldnames 
st3 = struct('name','Kantwon','age',26);
fns = fieldnames(st3); %vertical cell array with fieldnames

%isstruct 
log = isstruct('a') %log would be false because 'a' is not class struct

%% Mini-Example
%produce back the value at the third fieldname in structure 'st'
fns = fieldnames(st)
thirdFn = fns{3}
thirdVal = st.(thirdFn)

%OR (in two lines)
fns = fieldnames(st)
thirdVal = st.(fns{3})



%% Example
%triple every value in a 1x1 structure (st)
%that is a number. There might be values
%that aren't class double. Hint: isnumeric

fns = fieldnames(st);
for x = 1:length(fns)
    if isnumeric(st.(fns{x}))
        st.(fns{x}) = st.(fns{x}) * 3;
    end
end








%% size of structure 
%FIELD NAMES HAVE NOTHING TO DO WITH THE SIZE OR DIMENSIONS OF A STRUCTURE
st = struct('name','Kantwon','age',26,'favoriteColor','orange');
[r c] = size(st) %r = 1, c = 1




                        %% structure arrays 


%% Creating structure arrays 
% st = struct(fieldname,values,fieldname2,values2,...)

%---Struct function---
creeper = struct('name',{'Ana','Aarnav','Yvonne'},'age',{19 19 18},'goodTaste',{true true true})


%I DONT HAVE TO HAVE THE SAME CLASSES IN A FIELDNAME
creeper = struct('name',{'Ana','Aarnav','Yvonne'},'age',{19 19 'DNE'},'goodTaste',{true true true})



%I DONT HAVE TO HAVE JUST ONE THING IN A VALUE SPOT, YOU CAN HAVE VECTORS
%AND CELLS AND EVEN OTHER STRUCTURES!!!!!!!!

creeper = struct('name',{{'Ana','S'},{'Aarnav' 'S'},{'Yvonne','W'}},'age',{19 19 'DNE'},'goodTaste',{true true true})



%DIMENSIONS OF VALUES AND FIELDNAMES MUST MATCH UNLESS ALL STRUCTURES HAVE
%THE SAME VALUE AT A GIVEN FIELDNAME
creeper = struct('name',{'Ana','Aarnav','Yvonne'},'age',{19 19 18},'goodTaste',{true true})





%I can put one thing in multiple spots!
creeper = struct('name',{'Ana','Aarnav','Yvonne'},'age',{19 19 18},'goodTaste',{true})



%vector in spots
creeper = struct('name',{'Ana','Aarnav','Yvonne'},'age',[19 19 18],'goodTaste',{true true true})





%---Dot Operator--- 
%nameOfStruct(index).fieldName = value
creeper2(1).name = 'Ana'
creeper2(1).age = 18
creeper2(1).goodTaste = true
creeper2(2).name = 'Aarnav'

%at this point in time all of the other values will be fill with [] (class double)



%% Indexing structure arrays 
%syntax --> var = nameOfStruct(index).fieldname
creeper = struct('name',{'Ana','Aarnav','Yvonne'},'age',{19 19 18},'goodTaste',{true true true})



    %single value 
    thirdAge = creeper(3).age
    %this is WRONG
    thirdAge = creeper.age(3) %DONT DO THIS
    
    
    %variable called fn that contains a fieldname. Want to get out last person's info
    fn = 'goodTaste'
    lastInfo = creeper(end).fn %this is wrong
    lastInfo = creeper(end).(fn) %this is right
    
    %what if I wanted the last entire structure 
    lastStruct = creeper(end)

    
    

    %accessing multiple values multiple values

    names = creeper.name %only is the first name
    names = creeper(:).name %%only is the first name
    
    %if I want all of the names and put them in a cell array or vector 

    
    %what if i wanted the first 2 names in a cell
    twoNames = {creeper(1:2).name}
    twoNamesWrong = {creeper.name(1:2)} %WRONG
    twoNamesWrong2 = {creeper.name}(1:2)%WRONG
    
%deleting in structure arrays 
creeper(2) = []; %the entire 2nd structure is deleted
creeper(2).name = []; %this would have only replaced the 2nd name with []


%logical indexing with structure arrays
% You can't directly create a mask from a structure with logical operators
%(similar to cell arrays). However, you can get the values out of a
%structure and then create a mask with those and then use that mask on the
%entire structure array

%Given a structure array with fieldnames 'name' and 'age', remove
%structures of people that have an age below 18.

allAges = [st(:).age]
mask = allAges < 18
st(mask) = []





            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                    EXAMPLES                      %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Example 
%Given a 1xN structure array (st), sort the entire structure array based on the
%second fieldname. It is guaranteed that for each structure in the
%structure array there will be the same class of values. Also, classes will
%only be char and double

%get second fieldname
fns = fieldnames(st)
secondFn = fns{2}


%figure out value at second field name
testVal = st(1).(secondFn)



%get out all values at that field in appropriate data structure
if ischar(testVal)
    allVals = {st.(secondFn)}
else
    allVals = [st.(secondFn)]
end


%sort values

[~,inds] = sort(allVals)



%sort structure array
st = st(inds)


            
            
%% Example 
% given a structure array (st), sort the structure based on the 
% shortest fieldname.All of the values at a certain field 
% will be the same class (either char or double) 


%figure out the shortest fieldname
field = fieldnames(st);
value = length(field{1});
shortestFn = field{1};
for x = 2:length(field)
    if length(field{x}) < value
        value = length(field{x});
        shortestFn = field{x};
    end
end


%determine if all chars or doubles and place in appropriate 
%cell or vector

someVar = st(1).(shortestFn);
if ischar(someVar) 
    allValues = {st.(shortestFn)};
else 
    allValues = [st.(shortestFn)];
end

%sort structure based off shortest field
[~,inds] = sort(allValues);
sortedST = st(inds);





%% Example 
% The structure "company" has the fieldnames "name" and "boss" and
% represents the hierarchy of a company where the boss field contains the
% name of a person's boss. 
% Ex: Kantwon (boss) --> Alex --> Sarah --> John --> Chris
% company = struct('name',{'Kantwon','John','Sarah','Alex','Chris'}, ...
%                  'boss' ,{[],'Sarah','Alex','Kantwon','John'});
% The boss of the company does not have a boss and will have [] in their
% boss field
% Given a variable "employee", figure out the number of steps they are away 
% from the boss. 
% Ex: employee = 'Kantwon' stepsFromBoss = 0
% Ex: employee = 'Sarah' stepsFromBoss = 2

employee = 'Sarah';

%index all of the names 
names = {company(:).name};


%find the person in the structure
nameMask = strcmp(employee,names);


%initialize steps from boss to be 0
stepsFromBoss = 0;


%as long as the person doesn't have a boss
while ~isempty(company(nameMask).boss)

    %the current employee's boss becomes the new current employee
    employee = company(nameMask).boss;

    
    %find where this person is in the structure
    nameMask = strcmp(employee,names);
    
    
    %increment step count
    stepsFromBoss = stepsFromBoss + 1;
end

    






%% More Examples 
% look at the course notebook for more coding/tracing examples








 
                   

