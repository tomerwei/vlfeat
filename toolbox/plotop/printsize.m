function printsize(r,a)
% PRINTSIZE  Set the print size of a figure
%   PRINTSIZE(R) set the print size of a figure so that the width is
%   the R fraction of the current paper size width.
%
%   PRINTSIZE(R,A) sets also the aspect ratio to A (the aspect ratio
%   is the width divided by the height)
%
%   This command is useful to resize figures before printing them so
%   that elements are scaled to match the final figure size in print.
%
%   See also:: HELP_VLFEAT().

% AUTORIGHTS

if nargin < 2
  a = NaN ;
end

set(gcf,'paperunits','normalized') ;
pos = get(gcf,'paperposition') ;
s = r/pos(3) ;
pos(3:4) = pos(3:4) * s ;
if ~isnan(a)
  pos(4) = pos(3) / a ;
end
set(gcf,'paperposition',pos) ;