clear
clc
close all

fNames=dir;

%%
for n1=1:size(fNames,1)
    if contains(fNames(n1).name, '.mlx')
        [filepath, name, ext ]=fileparts(fNames(n1).name);
        export(['.\' name ext],Format='markdown',EmbedImages=false)
    end
end