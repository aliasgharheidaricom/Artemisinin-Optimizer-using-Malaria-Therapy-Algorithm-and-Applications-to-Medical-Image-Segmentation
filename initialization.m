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




% This function initialize the first population of search agents
function Positions=initialization(SearchAgents_no,dim,ub,lb)

Boundary_no= size(ub,2); % numnber of boundaries

% If the boundaries of all variables are equal and user enter a signle
% number for both ub and lb
if Boundary_no==1
    Positions=rand(SearchAgents_no,dim).*(ub-lb)+lb;
end

% If each variable has a different lb and ub
if Boundary_no>1
    for i=1:dim
        ub_i=ub(i);
        lb_i=lb(i);
        Positions(:,i)=rand(SearchAgents_no,1).*(ub_i-lb_i)+lb_i;
    end
end