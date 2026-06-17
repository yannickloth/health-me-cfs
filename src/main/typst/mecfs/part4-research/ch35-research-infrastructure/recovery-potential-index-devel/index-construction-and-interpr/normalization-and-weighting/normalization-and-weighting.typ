#import "../../../../../shared/environments.typ": *

==== Normalization and Weighting

Each component biomarker would be normalized to age- and sex-matched reference ranges, yielding z-scores or percentile ranks. This normalization is essential because most biomarkers change with age; what matters is not the absolute value but the value relative to healthy peers.
The composite RPI would be calculated as a weighted sum:
$
"RPI" = sum_{i=1}^(6) w_i dot z_i
$
where $z_i$ is the normalized score for component $i$ and $w_i$ is its weight.
*Initial Weighting Approach*
In the absence of empirical validation data, we propose equal weighting ($w_i = 1/6$ for all components) as the initial default. This agnostic approach acknowledges uncertainty about the relative importance of each component.
Alternative weighting schemes could be derived empirically once longitudinal outcome data are available, using regression coefficients from models predicting recovery. Principal component analysis could also identify natural weightings based on shared variance across components.

