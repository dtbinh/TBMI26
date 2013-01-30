function h = xtick(xt,xtl);

% XTICK Set xticks of current plot.
%
% XTICK(X) sets the XTick property of current axis to the values in the
% vector X.
%
% XTICK(T) sets the XTickLabel property of current axis to the strings in
% the cell array T. The FontName and FontSize properties are the same as in
% the current axis.
%
% XTICK(X,T) sets the XTick property of current axis to the values in the
% vector X and the XTickLabel property of current axis to the strings in
% the cell array T.
%
% H = XTICK(X,T) gives the handle vector to the tick marks.
%
% Example:
%
% >> X = [-pi 0 pi];
% >> T = {'-\pi';'0';'\pi'};
% >> xtick(X,T)
%
% See also YTICK, SET, GET, and TEXT
%
% Magnus Borga
% CVL, Linköpings universitet
% 980126

if nargin == 1
  if iscell(xt)
    xtl = xt;
    clear xt
    xt = get(gca,'XTick');
  else
    set(gca,'XTick',xt)
    return
  end
else
  set(gca,'XTick',xt)
end
set(gca,'xticklabel',[' '])
fn = get(gca,'FontName');
fs = get(gca,'FontSize');
ylim = get(gca,'YLim');
pos = ylim(1)-(ylim(2)-ylim(1))/40;
for p = 1:length(xt)
  h = text(xt(p),pos,xtl{p},'FontSize',fs,'FontName',fn,'HorizontalAlignment','center','VerticalAlignment','top');
end
  
  