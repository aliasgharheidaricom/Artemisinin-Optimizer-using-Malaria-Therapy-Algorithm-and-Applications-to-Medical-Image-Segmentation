
%--------------------------------------------------------------------------
% 🌿🦟 Artemisinin Optimization (AO) 🦟🌿
% Artemisinin Optimization based on Malaria Therapy: Algorithm and Applications to Medical Image Segmentation
% 
% 🎨 Authors: Chong Yuan 📧 yc18338414794@163.com, Dong Zhao,
%            Ali Asghar Heidari 📧 as_heidari@ut.ac.ir, aliasghar68@gmail.com,
%            Lei Liu, Yi Chen, Zongda Wu, Huiling Chen 📧 chenhuiling.jlu@gmail.com
%
% 📅 Last update: May 1, 2024
%
% 📞 Contact: yc18338414794@163.com, as_heidari@ut.ac.ir, aliasghar68@gmail.com, chenhuiling.jlu@gmail.com
%
% 📚 Reference:
% Chong Yuan, Dong Zhao, Ali Asghar Heidari, Lei Liu, Yi Chen, Zongda Wu, Huiling Chen,
% "Artemisinin Optimization based on Malaria Therapy: Algorithm and Applications to Medical Image Segmentation",
% Displays, Elsevier, 2024.
%
% 🔗 Website and codes of Artemisinin Optimization (AO): http://www.aliasgharheidari.com/AO.html
%
% 📝 Please cite the main paper on Artemisinin Optimization (AO) if you use this code.
%
% 🌐 You can also follow updates related to this research on ResearchGate: 
% https://www.researchgate.net/profile/Ali_Asghar_Heidari.
%
% 🚀 You can use and compare with other optimization methods developed by the same authors:
% (PO)-2024:   http://www.aliasgharheidari.com/PO.html
% (RIME)-2023: http://www.aliasgharheidari.com/RIME.html
% (INFO)-2022: http://www.aliasgharheidari.com/INFO.html
% (RUN)-2021: http://www.aliasgharheidari.com/RUN.html
% (HGS)-2021: http://www.aliasgharheidari.com/HGS.html
% (SMA)-2020: http://www.aliasgharheidari.com/SMA.html
% (HHO)-2019: http://www.aliasgharheidari.com/HHO.html
%--------------------------------------------------------------------------
%
% 🌟 Artemisinin Optimization (AO) source codes (version 1.0) 🌟
%
% Developed in MATLAB R2023a
%
% 📖 Reference: "Artemisinin Optimization based on Malaria Therapy: Algorithm and Applications to Medical Image Segmentation", Displays, Elsevier, 2024
%--------------------------------------------------------------------------





function [Leader_pos,bestfitness,Convergence_curve]=AO(fobj,lb,ub,dim,N,MaxFEs)
% Initialization parameters
FEs=0;
it=1;

%% Initialization of the solution set
pop=initialization(N,dim,ub,lb);
%Calculate the fitness value of the initial solution set
for i=1:N
    Fitness(i)=fobj(pop(i,:));
    FEs=FEs+1;
end
[fmin,x]=min(Fitness);

%Container
New_pop=zeros(N,dim);
Fitnorm=zeros(1,N);
Convergence_curve=[];
%Record the current optimal solution
best=pop(x,:);
bestfitness=fmin;
%% Main loop
while FEs<=MaxFEs
    
    K= 1-((FEs)^(1/6)/(MaxFEs)^(1/6));
    E =1*exp(-4*(FEs/MaxFEs));
    %
    for i=1: N
        Fitnorm(i)= (Fitness(i)-min(Fitness))/(max(Fitness)-min(Fitness));
        for j=1:dim
            if rand<K
                if rand<0.5
                    New_pop(i,j) = pop(i,j)+E.*pop(i,j)*(-1)^FEs;
                else
                    New_pop(i,j) = pop(i,j)+E.*best(j)*(-1)^FEs;
                end
            else
                New_pop(i,j)=pop(i,j);
            end
            if rand<Fitnorm(i)
                A=randperm(N);
                beta=(rand/2)+0.1;
                New_pop(i,j)=pop(A(3),j)+beta.*(pop(A(1),j)-pop(A(2),j)); 
            end
        end
        
        New_pop(i,:)=Mutation(New_pop(i,:),pop(i,:),best,dim);
        New_pop(i,:)=Transborder_reset(New_pop(i,:),ub,lb,dim,best);
        
        tFitness=fobj(New_pop(i,:));
        FEs=FEs+1;
        if tFitness<Fitness(i)
            pop(i,:)= New_pop(i,:);
            Fitness(i)=tFitness;
        end
    end
    
    [fmin,x]=min(Fitness);
    if fmin<bestfitness
        best=pop(x,:);
        bestfitness=fmin;
    end
    
    Convergence_curve(it)=bestfitness;
    Leader_pos=best;
    it=it+1;
end
end

function z=Mutation(z,x,b,dim)
for j=1:dim
    if rand<0.05
        z(j)=x(j);
    end
    if rand<0.2
        z(j)=b(j);
    end
end
end

function z=Transborder_reset(z,ub,lb,dim,best)
for j=1:dim
    if z(j)>ub || z(j)<lb
        
        z(j)=best(j);
        
    end
end
end